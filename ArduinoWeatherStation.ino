/*
 Weather Shield Example
 By: Nathan Seidle
 SparkFun Electronics
 Date: November 16th, 2013
 License: This code is public domain but you buy me a beer if you use this and we meet someday (Beerware license).

 Much of this is based on Mike Grusin's USB Weather Board code: https://www.sparkfun.com/products/10586

 */
const String wxVersion = "L12jB3"; // jjj
const String wxOwner = "-M-";
const byte ina219a_HWaddr = 0x40;  //0x40 for everyone but Lance. 0x44 for Lance.
const byte ina219b_HWaddr = 0x41;  //
const byte bme280a_HWaddr = 0x76;  //Default may be 0x77 depending on mfgr
const bool disableNTP = true;      //Set to false to allow NTP, but it can cause crashes if it doesn't get a response.
const String startupMessage = "UM Weather Station (ver L12jB3 2017/09/07) starting at ms "; // jjj


#include <avr/wdt.h>   // WatchDog Timer. If I hit an endless loop, reset. Kindof. May not reset Ethernet properly.
#include <EEPROM.h>    // will need this if I start writing to eeprom
#include <Wire.h>      // I2C needed for weather station sensors
#include <Math.h>      // Need cos() for calculating sunrise & sunset
#include <Time.h>      // https://github.com/PaulStoffregen/Time  but this header doesn't seem to be needed?
#include <TimeLib.h>   // https://github.com/PaulStoffregen/Time
#include <Timezone.h>  // https://github.com/JChristensen/Timezone, might conflict with timelib above?
#include <DS3232RTC.h> // https://github.com/JChristensen/DS3232RTC, using a DS3231, but it's still supported.
//#include "TinyGPS.h" // https://github.com/mikalhart/TinyGPS, GPS module for time with no Internet
#include "SparkFunMPL3115A2.h" // Pressure sensor - Search "SparkFun MPL3115" and install from Library Manager
#include "SparkFunHTU21D.h"    // Humidity sensor - Search "SparkFun HTU21D" and install from Library Manager
#include "Adafruit_INA219.h"   // Voltage/Current sensor. https://github.com/adafruit/Adafruit_INA219
#include "SparkFunBME280.h"    // High precision Temp & Humidity sensor. https://github.com/sparkfun/SparkFun_BME280_Arduino_Library

#include "Marshall.h" // Site-specific parameters that cannot currently be published

//#define logOneLine( line) logFile.println(line); Serial.println(line);
//#define logOneLine2( line, base) logFile.println(line, base); Serial.println(line,base);
//#define logSome( line) logFile.print(line); Serial.print(line);
#define logOneLine( line) Serial.println(line);
#define logOneLine2( line, base) Serial.println(line,base);
#define logSome( line) Serial.print(line);


Adafruit_INA219 ina219a(ina219a_HWaddr);     // First  ina219 sensor: A
Adafruit_INA219 ina219b(ina219b_HWaddr);     // Second ina219 sensor: B
BME280 bme280a;                              // First  bme280 sensor: A
MPL3115A2 myPressure; //Create an instance of the pressure sensor
HTU21D myHumidity; //Create an instance of the humidity sensor

//Hardware pin definitions, weather station
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
// digital I/O pins
const byte WSPEED = 3;
const byte RAIN = 2;
const byte STAT1 = 7;
const byte STAT2 = 8; //TODO: This pin (second status LED) seems wrong

const byte PIN_ETH_DISABLE = 8; // Ethernet power control; on=LOW, off=HIGH
const byte ETH_DISABLED = HIGH;
const byte ETH_ENABLED = LOW;

const byte PIN_UBIQUITI_DISABLE = 28; // Ubiquiti power control; off=LOW, on=HIGH
const byte UBIQUITI_DISABLED = LOW;
const byte UBIQUITI_ENABLED = HIGH;

// analog I/O pins
const byte WDIR = A0;
const byte LIGHT = A1;
const byte BATT = A2;
const byte REFERENCE_3V3 = A3;
const byte SLA_BATT = A12;

// I2C devices
// 0x40  64 Humidity/temp sensor?
// 0x44  68 INA219 on 3rd address (1st address is 0x40, conflicts with humidty sensor)
// 0x41  65 INA219 on 2nd address
// 0x60  96 Humidity/temp sensor?
// 0x76 118 BME280 environmental sensor

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// EEPROM MAP of used addresses
// 00-08 RESERVED
//    09 PowerSave flag
//    10 Watchdog flag
// 11-14 Watchdog time_t
//
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

const int eePowerSave = 9;
const int eeWatchdog = 10;
const int eeWatchdogTime = 11;

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

//Global Variables
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
unsigned long lastSecond;   //The millis counter to see when a second rolls by
unsigned long loopCounter;  //see how often we loop
unsigned long loopDelta;    //see how many loops since the last printu
unsigned long msTemp;       //store millis() now and then to see how long something took, for Serial.print()s all over
unsigned long usTemp;       //store micros() now and then to see how long something took. Much smaller than millis!
byte seconds;               //When it hits 60, increase the current minute
byte minutes;               //Keeps track of where we are in various arrays of data
byte minutes_10m;           //Keeps track of where we are in wind gust/dir over last 10 minutes array of data
byte minutes_5m;            //Keep track of wind gust over previous 5 minutes.
byte hours;
int days;                   //Yes I'm optimistic
int sunrise;                //Minutes after midnight for sunrise
int sunset;                 //Minutes after midnight for sunset
byte sunriseDay = 0;        //Day we last calculated sunrise/sunset for. If it's not today, calc again.
bool justBooted = true;     //Some stuff settles after the first minute, so let's keep track of that.
bool justRestarted = true;  //Print an R at the end of the first upload attempt to make it easy to see a reboot.
bool powerSave = false;     //Set a flag when we're in power save mode. Do some stuff different.
time_t reportWatchdog = 0;  //Do we need to report a watchdog reset?
time_t recentTime = 0;      //Set the current time periodically so we can use it in the Watchdog Interrupt
time_t lastCrashTime = 0;
const char charComma = ',';       //Save 16 bytes with Serial.print(charComma) instead of Serial.print(",") all over.
//const char compile_date[] = __DATE__ " " __TIME__;

long lastWindCheck = 0;
volatile long lastWindIRQ = 0;
volatile byte windClicks = 0;

// For Marshall weather, keep track of and report the following:
/*
 * 1: time
 * 2: date
 * 3: Wind speed mph, 1 min avg
 * 4: Wind speed mph, 10 min Peak (needs to change to 5 min peak)
 * 5: Wind direction, 1 min avg
 * 6: Temerature in F, outside, current
 * 7: Humidity, outside, current
 * 8: Barometric pressure in kPa (divide by 100), sampled once a minute
 * 9: Barometric pressure delta since last sample (1 minute ago)
 * 10: rain for the day (not used, set to -LR- for identification)
 * 11: rain long term?  (not used, set to -LR- for identification)
 * 12: Temperature in C from RTC
 * 13: Humidity, inside enclosure, currently same as #7
 * 13: voltage 1: battery
 * 14: current 1: battery
 * 15: voltage 2: 5v
 * 16: current 2: 5v
 * 17: light level (accurate, but probably zero inside enclosure)
 * 18: uptime in HH:MM:SS
 * 19: raw wind direction reading for calculating best binning values
 * 20: Status stuff: reboots, socket status, failures, etc...
 */

float windSpeedAvg = 0; //Lets try keeping avg using MATH!

#define WIND_DIR_AVG_SIZE 60
#define WIND_SPEED_AVG_SIZE 60
#define VOLTAGE_AVG_SIZE 10
int winddiravg[WIND_DIR_AVG_SIZE];  //120 (now 60) ints to keep track of 2 (now 1) minute average.
float windgust_10m[10];             //10 floats to keep track of 10 minute max
float windgust_5m[5];               //5 floats to keep track of highest gust each of the last 5 minutes.
int windgustdirection_10m[10];      //10 ints to keep track of 10 minute max
int windgustdirection_5m[5];        //5 ints to keep track of 5 minute max
volatile float rainHour[60];        //60 floating numbers to keep track of 60 minutes of rain

//These are all the weather values that wunderground expects:
int winddir = 0;              // [0-360 instantaneous wind direction]
unsigned int winddirRaw = 0;   // Keep the raw ADC reading for troubleshooting
float windspeedmph = 0;       // [mph instantaneous wind speed]
float windgustmph = 0;        // [mph current wind gust, using software specific time period]
int windgustdir = 0;          // [0-360 using software specific time period]
int winddir_avg2m = 0;        // [0-360 2 minute average wind direction]
float windgustmph_10m = 0;    // [mph past 10 minutes wind gust mph ]
float windgustmph_5m = 0;     // [mph past 5 minutes wind gust]
float windmax_1m = 0;
float windmin_1m = 0;
int windgustdir_10m = 0;      // [0-360 past 10 minutes wind gust direction]
int windgustdir_5m = 0;       // 0-360 past 5 minutes wind gust direction
String strWindDir = "ERR";    // N, NNE, NE, ENE, E, ESE, SE, SSE, S, SSW, SW, WSW, W, WNW, NW, NNW

float humidity = 0; // [%]
float tempf = 0; // [temperature F]
float rainin = 0; // [rain inches over the past hour)] -- the accumulated rainfall in the past 60 min
volatile float dailyrainin = 0; // [rain inches so far today in local time]
float pressure = 0;
float oldPressure = 0;
float pres5min[5];
//float dewptf; // [dewpoint F] - It's hard to calculate dewpoint locally, do this in the agent

float batt_lvl = 11.8;     // [analog value from 0 to 1023]
float sla_lvl = 11.8;      // [analog value from 0 to 1023; measures Sealed Lead Acid battery voltage via external voltage divider]
int   sla_raw = 0;         // integer, raw 0-1023 reading from Analog Port
float sla_30sec = 11.8;    // 10 second rolling average of SLA battery voltage (~12v)
int   sla_10secRaw = 1180; // 10 second average of AnalogPort reading (0-1023).
float light_lvl = 455;     // [analog value from 0 to 1023]
float ina219a_volts;
float ina219a_current;
float ina219b_volts;
float ina219b_current;

// volatiles are subject to modification by IRQs
volatile unsigned long raintime, rainlast, raininterval, rain;


//****************************
//***  Data Storage in RAM ***
//****************************

// 10 bytes so far, that's 2,400 bytes to store 4 hours. Not bad?
struct wxCache_struct {
  byte wd : 6;      //Wind direction / 6 (remember to multiply)
  byte ws : 6;      //Wind speed
  byte gust : 4;    //Wind gust = gust * 2 + wind speed!!
  byte temp1;   // in F
  byte hum1;    
  byte pres1;   //Pressure in hPa minus 900
  byte temp2;
  byte volt1;   //Voltage * 10 (remember to divide by 10)
  byte amp1;    //Milliamps / 10 (remember to multiply by 10)
  byte volt2;
  byte amp2;
};

time_t wxCache_time;
byte wxCache_count;
#define WX_CACHE_MAX 240

wxCache_struct wxCache[WX_CACHE_MAX];
//2,028 used or 6,164 free without storage
//4,428 used or 3,764 free with 4 hours storage



//**************************
//***  Ethernet & NTP  *****
//**************************
#include <SPI.h>
#include <Ethernet.h>
#include <EthernetUdp.h>
#include <utility/W5100.h>

// Enter a MAC address for your controller below.
// Newer Ethernet shields have a MAC address printed on a sticker on the shield
// [MarshallProprietary] byte mac[] = { ??? };
// Set the local static IP address to use if the DHCP fails to assign
IPAddress ip(192, 168, IPq3, 222);
IPAddress dnsServer(8, 8, 8, 8);
IPAddress gateway(192, 168, IPq3, IPgw);  // Must be 254 for Marshall, set at TOP of sketch since we need to check/change often.
IPAddress subnet(255, 255, 255, 0);

// if you don't want to use DNS (and reduce your sketch size)
// use the numeric IP instead of the name for the server:
//IPAddress server(74,125,232,128);    // numeric IP for Google (no DNS)
//char server[] = "www.google.com";    // name address for Google (using DNS)
char server[] = "www.crestlinesoaring.org"; // Web server to connect to.
// [MarshallProprietary]

// Some debugging and record keeping variables
bool ethStopped = true;
unsigned long ethLastMillis = 0;
const int ETH_TIMEOUT = 6000;
byte ethTimeouts = 0;
byte ethConnFails = 0;
int ethLastFailureCode = 0;
uint8_t ethSockStatus[MAX_SOCK_NUM];

// NTP (date & time) stuff
unsigned int NTPlocalPort = 8888;    // Local port to send from & listen for UDP NTP packets
int timeZone = -7;                   // Pacific (Daylight = -7 / Standard = -8) Time (FIXME: add DST handling someday)
time_t pacific, utc;
TimeChangeRule *tcr;
TimeChangeRule usPDT = {"PDT", Second, Sun, Mar, 2, -420};  //UTC - 7 hours
TimeChangeRule usPST = {"PST", First, Sun, Nov, 2, -480};   //UTC - 8 hours
Timezone usPacific(usPDT, usPST);
//utc = now();  //current time from the Time Library
//pacific = usPacific.toLocal(utc, &tcr);


const int NTP_PACKET_SIZE = 48;
byte packetBuffer[ NTP_PACKET_SIZE ];
char timeServer[] = "us.pool.ntp.org";
// [MarshallProprietary]
//IPAddress timeServerIP(128, 138, 141, 172);   //time.nist.gov IP at one point
unsigned long msNTPrequest;          // miliseconds at which NTP request was made (so we can see how long it took)


// Initialize the Ethernet client library
// with the IP address and port of the server
// that you want to connect to (port 80 is default for HTTP):
EthernetClient client;
EthernetUDP Udp;

// Turns on power for components needed for network connectivity
void enableEthernet() {
  pinMode(PIN_UBIQUITI_DISABLE, OUTPUT);                 // prepares Ubiquiti power control pin
  digitalWrite(PIN_UBIQUITI_DISABLE, UBIQUITI_ENABLED);  // turns Ubiquiti on

  pinMode(PIN_ETH_DISABLE, OUTPUT);                     // prepares ETH power control pin
  digitalWrite(PIN_ETH_DISABLE, ETH_ENABLED);           // turns ETH shield on
}

// Turns off power for network components to save power
void disableEthernet() {
  pinMode(PIN_UBIQUITI_DISABLE, OUTPUT);                  // prepares Ubiquiti power control pin
  digitalWrite(PIN_UBIQUITI_DISABLE, UBIQUITI_DISABLED);  // turns Ubiquiti off

  pinMode(PIN_ETH_DISABLE, OUTPUT);                      // prepares ETH power control pin
  digitalWrite(PIN_ETH_DISABLE, ETH_DISABLED);           // turns ETH shield off
}

//**************************************
//****** SD Card Reading ***************
//**************************************

//#include <SD.h>

/*Sd2Card card;
SdVolume volume;
SdFile root; 
File logFile;
String filename = "log-nodate";

const int SdChipSelect = 4;
*/



//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//
//Interrupt routines (these are called by the hardware interrupts, not by the main code)
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void rainIRQ()
// Count rain gauge bucket tips as they occur
// Activated by the magnet and reed switch in the rain gauge, attached to input D2
{
    raintime = millis(); // grab current time
    raininterval = raintime - rainlast; // calculate interval between this and last event

    if (raininterval > 20) // ignore switch-bounce glitches less than 10mS after initial edge
    {
        dailyrainin += 0.011; //Each dump is 0.011" of water
        rainHour[minutes] += 0.011; //Increase this minute's amount of rain

        rainlast = raintime; // set up for next event
    }
}

void wspeedIRQ()
// Activated by the magnet in the anemometer (2 ticks per rotation), attached to input D3
{
    if (millis() - lastWindIRQ > 20) // Ignore switch-bounce glitches less than 10ms (142MPH max reading) after the reed switch closes. Now 20ms, 70mph max.
    {
        lastWindIRQ = millis(); //Grab the current time
        windClicks++; //There is 1.492MPH for each click per second.
    }
}

// Watchdog timer fired, let's record a little and report it next bootup.
ISR(WDT_vect)
{
    //Serial.println("--==000 Entered Watchdog Interrupt Service Request Handler 000==--");

    //time_t lastCrashTime;  //Made this a volatile global variable

    // Get the last crash time. If it's too recent, we won't write a new time to avoid thrashing EEPROM too frequently.
    EEPROM.put(10, 1);
//    EEPROM.get(11, lastCrashTime);
//    if (recentTime > lastCrashTime + 600) {
//      EEPROM.put(10, 1);                // write a "1" to the first byte to indicate the data in second byte is valid and the ISR triggered properly
//      EEPROM.put(11, recentTime);
//    }

    //Serial.println("---===00 Done with Watchdog ISR 00===---");

    while(true);                  // triggers the second watchdog timeout for a reset (does this actually work?)
}


/**********************************************************
 *    _____   ______   _______   _    _   _____  
 *   / ____| |  ____| |__   __| | |  | | |  __ \ 
 *  | (___   | |__       | |    | |  | | | |__) |
 *   \___ \  |  __|      | |    | |  | | |  ___/ 
 *   ____) | | |____     | |    | |__| | | |     
 *  |_____/  |______|    |_|     \____/  |_|     
 *                                            
 ***********************************************************/
void setup()
{
    //Serial.begin(9600);
    //Serial.begin(38400);
    Serial.begin(115200);
    Serial.println();
    Serial.print(startupMessage);
    Serial.println(millis());

    //Enable the WatchDog, 8 second timeout.
    wdt_enable(WDTO_8S);

    //delay(300);


    if (EEPROM.read(eePowerSave) == 255) {
      Serial.println("EEPROM eePowerSave was 255, is this a new Arduino? Setting to false (0).");
      EEPROM.update(eePowerSave, false);
    }
    
    // Check EEPROM to see if we should be in power save mode. If so, shut some stuff off immediately.
    Serial.print("Reading EEPROM to see power save state: ");
   
    pinMode(30, OUTPUT);     //             common GND source for "YYD-3" FET switches. 
    digitalWrite(30, LOW);   //             must always be low
     
    if (EEPROM.read(eePowerSave)) {
      Serial.print("Shutting off Eth and Ubiquity... ");
      powerSave = true;
      disableEthernet();

    } else {
      Serial.print("Turning on Eth and Ubiquity... ");
      powerSave = false;
      enableEthernet();

    }
    Serial.println("Done.");



    //Weather Station stuff
    pinMode(STAT1, OUTPUT); //Status LED Blue
    pinMode(STAT2, OUTPUT); //Status LED Green

    pinMode(WSPEED, INPUT_PULLUP); // input from wind meters windspeed sensor
    pinMode(RAIN, INPUT_PULLUP); // input from wind meters rain gauge sensor

    pinMode(REFERENCE_3V3, INPUT);
    pinMode(LIGHT, INPUT);

    //Configure the humidity sensor
    Serial.print(F("Starting Sparkfun W-Shield Humidity sensor, took ")); usTemp = micros();
    myHumidity.begin();
    Serial.print(micros() - usTemp); Serial.println("us");

    //Setup INA219 voltage and current sensor(s)
    Serial.print(F("Starting INA219a Volt & current sensor A: ")); usTemp = micros();
    ina219a.begin();
    Serial.print(micros() - usTemp); Serial.println("us.");

    Serial.print(F("Starting INA219b Volt & current sensor B: ")); usTemp = micros();
    ina219b.begin();
    Serial.print(micros() - usTemp); Serial.println("us.");

    //Setup BME280 temperatue and humidity sensor(s)
    Serial.print(F("Starting BME280a Temperature & Humidity sensor A, status: 0x")); usTemp = micros();
    bme280a.settings.commInterface = I2C_MODE;
    bme280a.settings.I2CAddress = bme280a_HWaddr;
    bme280a.settings.runMode = 3;
    bme280a.settings.tempOverSample = 1;  //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
    bme280a.settings.pressOverSample = 1; //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
    bme280a.settings.humidOverSample = 1; //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
    Serial.print(bme280a.begin(), HEX);
    Serial.print(", took "); Serial.print(micros() - usTemp); Serial.println("us.");

    //Configure the Sparkfun pressure sensor
    Serial.print(F("Starting Sparkfun pressure, took ")); msTemp = millis();
    delay(250);                            // Little delay in case it helps
    myPressure.begin();                    // Get sensor online
    myPressure.setModeBarometer();         // Measure pressure in Pascals from 20 to 110 kPa
    myPressure.setOversampleRate(7);       // Set Oversample to the recommended 128
    myPressure.enableEventFlags();         // Enable all three pressure and temp event flags
    pressure = myPressure.readPressure();  // Get an initial reading so we can report in the first minute
    oldPressure = pressure;                // Make sure the "pressure delta" is zero at startup
    Serial.print(millis() - msTemp); Serial.println("ms.");

    seconds = 0;
    lastSecond = millis();

    // attach external interrupt pins to IRQ functions
    attachInterrupt(0, rainIRQ, FALLING);
    attachInterrupt(1, wspeedIRQ, FALLING);

    // turn on interrupts
    interrupts();

    Serial.println();
    Serial.print(F("Startup done at "));
    Serial.print(millis());
    Serial.println("ms!");

    loopCounter = 0;
    loopDelta = 0;

    // DEBUG: populates the array so it takes up RAM. Enough for 4 hours of data if WX_CACHE_MAX is 240.
    for (byte i = 0; i < WX_CACHE_MAX; i++) {
      wxCache[i].ws = i;
      //now 4428 used 3764 free
    }

    //**********************************
    //***** SD Card Stuff  *************
    //**********************************

    /*
    Serial.print("\nInitializing SD card in 250ms... ");
    delay(250);
    wdt_reset();

    pinMode(SS, OUTPUT);
    if (!SD.begin(SdChipSelect)) {
      Serial.println("SD Failed to start!!");
    }
    //File startLog = SD.open("start.log");
    File root = SD.open("/");
    printDirectory(root, 0);
    root.close();
    */

    // we'll use the initialization code from the utility libraries
    // since we're just testing if the card is working!
    /*
    if (!card.init(SPI_HALF_SPEED, SdChipSelect)) {
      Serial.println("initialization failed. Things to check:");
      Serial.println("* is a card inserted?");
      Serial.println("* is your wiring correct?");
      Serial.println("* did you change the chipSelect pin to match your shield or module?");
    } else {
      Serial.println("Wiring is correct and a card is present.");
  
      // print the type of card
      Serial.print("\nCard type: ");
      switch (card.type()) {
        case SD_CARD_TYPE_SD1:
          Serial.println("SD1");
          break;
        case SD_CARD_TYPE_SD2:
          Serial.println("SD2");
          break;
        case SD_CARD_TYPE_SDHC:
          Serial.println("SDHC");
          break;
        default:
          Serial.println("Unknown");
      }
    
      // Now we will try to open the 'volume'/'partition' - it should be FAT16 or FAT32
      if (!volume.init(card)) {
        Serial.println("Could not find FAT16/FAT32 partition.\nMake sure you've formatted the card");
        return;
      }
    
    
      // print the type and size of the first FAT-type volume
      uint32_t volumesize;
      Serial.print("\nVolume type is FAT");
      Serial.println(volume.fatType(), DEC);
      Serial.println();
    
      volumesize = volume.blocksPerCluster();    // clusters are collections of blocks
      volumesize *= volume.clusterCount();       // we'll have a lot of clusters
      volumesize *= 512;                         // SD card blocks are always 512 bytes
      Serial.print("Volume size (bytes): ");
      Serial.println(volumesize);
      Serial.print("Volume size (Kbytes): ");
      volumesize /= 1024;
      Serial.println(volumesize);
      Serial.print("Volume size (Mbytes): ");
      volumesize /= 1024;
      Serial.println(volumesize);
    
    
      Serial.println("\nFiles found on the card (name, date and size in bytes): ");
      root.openRoot(volume);
    
      // list all files in the card with date and size
      root.ls(LS_R | LS_DATE | LS_SIZE);
    } */

    /**********************************************
     * EEPROM READ, see if we did a Watchdog crash!
     **********************************************/

    if (EEPROM.read(10)) {
      //We had a watchdog event. It contains a time_t with the time. Save it.
      //example: return ((four << 0) & 0xFF) + ((three << 8) & 0xFFFF) + ((two << 16) & 0xFFFFFF) + ((one << 24) & 0xFFFFFFFF);

      // Copy the saved date & time into reportWatchdog so we can repeatedly use it until we have a successful upload
      EEPROM.get(11, reportWatchdog);

      //Print the date & time the watchdog was tripped.
      Serial.println();
      Serial.print(F("Watchdog caused the last reboot, at: "));
      Serial.print(year(reportWatchdog));
      Serial.print("/");
      Serial.print(month(reportWatchdog));
      Serial.print("/");
      Serial.print(day(reportWatchdog));
      Serial.print(charComma);
      Serial.print(hour(reportWatchdog));
      Serial.print(":");
      Serial.print(minute(reportWatchdog));
      Serial.print(":");
      Serial.print(second(reportWatchdog));
      Serial.println();
    }

    Serial.println();
    Serial.println(F("Beginning Ethernet."));
    Serial.println();

    //**********************************
    //***** Ethernet Stuff *************
    //**********************************

    pinMode(SS, OUTPUT);
    // Ethernet is slow, let's delay a bit, then reset the watchdog often
    delay(250);
    wdt_reset();
    wdt_disable();
    Serial.print("Watchdog was reset and disabled at ");
    Serial.print(millis());
    Serial.println("ms for Ethernet");

    // Ethernet static for testing, maybe permanent. DHCP method is commented out a few lines down.
    Ethernet.begin(mac, ip, dnsServer, gateway, subnet);

    // start the Ethernet connection:
    /* if (Ethernet.begin(mac) == 0) {
      Serial.println(F("Failed to configure Ethernet using DHCP"));
      // try to congifure using IP address instead of DHCP:
      Ethernet.begin(mac, ip, dnsServer, gateway, subnet);
    } */
    wdt_enable(WDTO_8S);

    // give the Ethernet shield a second to initialize:
    delay(1000);
    Serial.print(millis());
    Serial.print(F("ms: Started Ethernet (watchdog enabled). Local IP is "));
    Serial.println(Ethernet.localIP());

    // Request the date & time from RTC or NTP
    wdt_reset();
    if (RTC.get()) {
      // If we have a working RTC, let's just use it. Every few minutes we'll check for NTP too.
      Serial.println(F("RTC selected as time source."));
      setSyncProvider(RTC.get);
      setSyncInterval(300);           // Update system time with the RTC because it actually slews pretty fast; 4 second an hour is typical.
    } else {
      // 0 Means the RTC didn't work, set NTP as the sync provider, with an agressive Sync Interval because we depend on it.
      Serial.print(F("No RTC? Sending NTP packet at "));
      Serial.println(millis());
      setSyncProvider(getNtpTime);    // Use the time library's setSyncProvider to check periodically for time
      setSyncInterval(60);            // Check for time updates every minute. This gets set to "less often" once we have a time fix.

    }

    if (timeStatus() == timeSet) {
      if (CheckDST()) {
        timeZone = -7;
      } else {
        timeZone = -8;
      }
    }

    /*  NOSD
    if (timeStatus() == timeSet) {
      filename = "log" + year() + month() + day();
    } else {
      filename = "log-nodate";
    }
    logFile = SD.open(filename, FILE_WRITE);
    NOSD */

    //Print a header row.
    Serial.println(F("time , date     ,w1avg,wmax,dir, tmp, hum, baro , dv ,rain,wnow, tmp, hum, 5v , 5v ,lght, uptime   , FreeMem  ,Raw Wdir, RTC time, Misc error messages"));
//                    18:22,12/22/2016,02.16,13.1, -1,76.9,41.8,1009.6, 0.0,0.00,00.7,76.9,41.8,4.33,4.33,0.03,0.00:01:20,14532426,1928538
//                    20:14,8/1/2017,00.00,00.0,-10,89.4,32.1,976.5,-0.01,-LR-,-LR-,89.4,32.1,3.95,38.14,0.07,0.07:57:55,5264,1023

}

/*
 ***************************************
  _         ____     ____    _____  
 | |       / __ \   / __ \  |  __ \ 
 | |      | |  | | | |  | | | |__) |
 | |      | |  | | | |  | | |  ___/ 
 | |____  | |__| | | |__| | | |     
 |______|  \____/   \____/  |_|     
                                    
 ***************************************
 */


void loop()
{  
  //Do "once a second stuff", mostly weather. Also keep track of which minute it is.
  if(millis() - lastSecond >= 1000)
  {
    digitalWrite(STAT1, HIGH); //Blink stat LED to show how long we're doing the "once a second" work

    lastSecond += 1000;
    wdt_reset(); //I think once a second is enough for our 8 second watchdog.

    //Calc the wind speed and direction every second for 120 second to get 2 minute average
    float currentSpeed;
    currentSpeed = get_wind_speed();

    //vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    //FIXME: Generate a random wind speed for TESTING
    //float fRand = (float)random(-30.0, 32.0);
    //fRand = fRand / 10.0;
    //currentSpeed = windspeedmph + fRand; //For testing, wind from 0-15 randomly rising/falling up to 3mph per sec
    //currentSpeed = constrain(currentSpeed, 0, 15);
    //FIXME: done with the random wind speed
    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

    windspeedmph = currentSpeed; //update global variable for windspeed when using the printWeather() function
    int currentDirection = get_wind_direction();

    //Calculate 1 min moving average wind speed instead of using an array
    float windInc = currentSpeed / WIND_SPEED_AVG_SIZE;
    float windDec = windSpeedAvg / WIND_SPEED_AVG_SIZE;
    windSpeedAvg = windSpeedAvg - windDec + windInc;

    //Check to see if this is a gust for the minute
    if(currentSpeed > windgust_10m[minutes_10m])
    {
        windgust_10m[minutes_10m] = currentSpeed;
        windgustdirection_10m[minutes_10m] = currentDirection;
    }
    if(currentSpeed > windgust_5m[minutes_5m])
    {
        windgust_5m[minutes_5m] = currentSpeed;
        windgustdirection_5m[minutes_5m] = currentDirection;
    }


    //Check to see if this is a gust for the day (assuming daily reboots; this never resets on its own).
    if(currentSpeed > windgustmph)
    {
        windgustmph = currentSpeed;
        windgustdir = currentDirection;
    }

    // Once-a-minute tasks
    if(++seconds > 59)
    {
      seconds = 0;
      if(++minutes > 59) 
      {
        minutes = 0;
        if(++hours > 23)
        {
          hours = 0;
          ++days;
        }
      }
      if(++minutes_10m > 9) minutes_10m = 0;
      if(++minutes_5m > 4) minutes_5m = 0;

      // Zero out this minute's rainfall and gust amounts
      rainHour[minutes] = 0;
      windgust_10m[minutes_10m] = 0;
      windgust_5m[minutes_5m] = 0;

      // Set the RTC if it needs it and we have good time from NTP
      // FIXME: We should use RTC first and only occasionally check it against NTP.
      if (timeStatus() == timeSet) {
        // Long as we've got a good time source, only need to update every 10 minutes.
        setSyncInterval(600);
        recentTime = now();             //Update this once a minute. It will be used in the Watchdog ISR to give a rough date/time estimate.
        if (minute() % 10 == 0) {
          unsigned int diffNTPRTC = 0;
          time_t timeRTC = RTC.get();
          time_t timeNTP = getNtpTime();
          if ((timeRTC == 0) or (timeNTP == 0)) {
            // RTC and NTP will both return zero on error. Don't bother if either one is invalid / unreadable.
            diffNTPRTC = 0;
          } else if (timeNTP > timeRTC) {
            diffNTPRTC = timeNTP - timeRTC;
          } else {
            diffNTPRTC = timeRTC - timeNTP;
          }
          if (diffNTPRTC > 0) {
            Serial.print(F("NTP and RTC differ by "));
            Serial.print(diffNTPRTC);
            if (diffNTPRTC == 1) Serial.print(" second.");
            if (diffNTPRTC >  1) Serial.print(" seconds.");
            if (diffNTPRTC >  5) {
              Serial.print("RTC time is ");
              Serial.print(timeRTC);
              Serial.print(", setting RTC to ");
              Serial.print(timeNTP);
              byte rtcSetStatus;
              rtcSetStatus = RTC.set(timeNTP);
              if (rtcSetStatus) {
                Serial.print(" FAILED. Error code: ");
                Serial.print(rtcSetStatus);
              } else {
                Serial.print(" done.");
                setTime(timeNTP);
              }
            }
            Serial.println();
          }
          if (CheckDST()) {
            timeZone = -7;
          } else {
            timeZone = -8;
          }
        } // END of Every 10 Minutes, while the correct date & time are known
        // If the log filename does not have a date & time,
        // open a new log filename with the date & time since we know that now.
        /*
        if (filename == "log-nodate") {
          logSome("Date found at: " + year() + month() + day());
          logOneLine(" @ " + hour() + minute() + second());
          logFile.close();
          filename = "log" + year() + month() + day();
          logFile = SD.open(filename, FILE_WRITE);
        } */
      } else if (timeStatus() == timeNeedsSync) {
        //If we don't have valid time, check for time every 2 minutes. Otherwise it's normally once an hour.
        setSyncInterval(120);
        logSome(" time sync lost, interval set to 120s. ");
        
      } // END of timeStatus() == timeSet

      // Test with a random wait to timeout the watchdog and see how it handles it.
//      long randomWatchdogTripper;
//      randomWatchdogTripper = random(12000);
//      Serial.print("----**** Randomly waiting to try to trip the watchdog ****----, this many ms: ");
//      Serial.println(randomWatchdogTripper);
//      delay(randomWatchdogTripper);
//      Serial.println("----**** I guess we didn't die this time. ****----");
      // Test with a random wait to timeout the watchdog and see how it handles it.

      // Check every minute that we know sunrise/sunset for today. If not, calc it.
      if (day() > sunriseDay) getRiseSet();

    
      /* * * * * * * * * * * * * * * * * *
     *  P O W E R   S A V E
     *  P O W E R   S A V E
     * * * * * * * * * * * * * * * * * */
      // Turn off / on some peripherals at night & morning
      int minutesToday = hour() * 60 + minute();
      Serial.print("Minute of day is: ");
      Serial.print(minutesToday);
      if ( (minutesToday < sunrise) or (minutesToday > sunset - 60) ) {     // jjj removed 60 to save even more   if ( (minutesToday < sunrise - 60) or (minutesToday > sunset - 60) ) {

        Serial.print(", which is Night time. We will switch to day at minute #");
        Serial.println(sunrise);     // jjj removed 60 to save even more     Serial.println(sunrise - 60); 
        // We're not between "half an hour before sunrise" and sunset, so turn stuff off.
        // First set variables and record in eeprom that we're in power save mode.
        if (!powerSave) {
          powerSave = true;
          if (!EEPROM.read(eePowerSave)) EEPROM.update(eePowerSave, true);
        }
    
        disableEthernet();

      } else {
        Serial.print(", which is Day time. We will switch to night at minute #");
        Serial.println(sunset - 60);
        // Otherwise, make sure things are TURNED ON
        if (powerSave) {
          powerSave = false;
          if (EEPROM.read(eePowerSave)) EEPROM.update(eePowerSave, false);
        
          //if powerSave was set, that means we're transitioning to daytime now.
          // Until I figure out how to restart the Ethernet, just force a watchdog timeout with delays.
          enableEthernet();
  
          Serial.println(F("   ! ! !   We just switched to DAY. Since we can't reset ETHERNET very well, we are rebooting soon!!! ! ! "));
          delay(10000);
          delay(20000);
          delay(30000);
        }
       
        //This below kind of doesn't count, because of the reboot above. We really should never get here.
        enableEthernet();

      } // End of night/day figuring out (for power save)

 
    } // END of ONCE A MINUTE tasks


    //Calculate the weather every second, for building averages and stuff. Only print/report it every minute, typically.
    calcWeather();  // Should be called once a second to build averages and stuff.
    if (justBooted) {
      //Once the time is reporting that it's synced and it's been at least 15 secs since boot, start reporting weather.
      if ((seconds > 15) and (timeStatus() == timeSet)) justBooted = false;
    } else {
      if (second() == 0) {
    //if (true) {  // for STRESS TEST we go once a second.
        // Once a minute, on zero seconds (by NTP/RTC time, not since boot time), upload the weather.
        ShowSockStatus();   //DEBUG: print IP Socket status on serial.
        //printWeather();     //DEBUG: print a slightly different weather string on serial.
        Serial.println(getWeatherString());
        uploadWeather();
      }
      if ((second() == 25) and (minutes == 55)) {
        //refresh DHCP once an hour if we're using it. NTP/RTC second() so we don't do it same time as an upload. Runtime minutes so it's after an hour of running.
        Ethernet.maintain();
      }
    }

   /** 
    ** Diagnostic, print the weather string to serial output periodically
    ** use getWeatherString to save memory and show exactly what gets uploaded,
    ** or printWeather() to get more diagnostics but not necessarily what's uploaded.
    **/
    //if (justBooted) Serial.println(getWeatherString());               // print every second for the first 15 secs after booting.
    //else if (seconds % 10 == 0) Serial.println(getWeatherString());   // then every 10 seconds
    if (justBooted and seconds % 3 == 0) printWeather();                // print every second for the first 15 secs after booting.
    else if (0) { // print the seconds on serial
      Serial.write(8);
      if (second() > 9) {
        Serial.write(8);
      }
      Serial.print(second());
    }


    digitalWrite(STAT1, LOW); //Turn off WeatherShield's blue stat LED
    
  } // END of ONCE A SECOND loop (every 1000ms)



  // This runs every loop, which is usually 10,000's of times a second.
  if (!ethStopped) {
    // if there are incoming bytes available from the server,
    // read them and dump them to serial up to 250 bytes at a time before main loop()ing:
    for (byte b=0; b < 250; b++) {
      if (client.available()) {
        ethLastMillis = millis();
        char c = client.read();
        Serial.print(c);
      } else {
        break;
      }
    }

    // if the server's disconnected, stop the client:
    if (!client.connected()) {
      Serial.println();
      Serial.println(F("    Arduino Ethernet disconnected."));
      if (reportWatchdog) {
        Serial.println(F("  Clearing watchdog EEPROM flag"));
        reportWatchdog = 0;
        EEPROM.update(10,0);   //Clear the watchdog-happened bit once we have reason to believe it's been reported.
      }
      client.stop();
      ethStopped = true;
      ethLastFailureCode = 0;
      justRestarted = false;     //reset this HERE so it stays "true" until a successful ethernet connection has happened.

    // If it's been TIMEOUT (usually 6) seconds since we last heard something, just close the connection.
    } else if ((millis() - ethLastMillis) > ETH_TIMEOUT) {
      Serial.println();
      logOneLine(F("    Arduino Ethernet TIMEOUT! Closing."));
      client.stop();
      ethStopped = true;
      ethTimeouts++;
    }
  } //END if(!ethStopped)

  loopCounter++;
} // END OF LOOP()


void getRiseSet()
{
  // Calculate sunrise and sunset, based on Los Angeles. Close enough.
  // From http://forum.arduino.cc/index.php/topic,66426.msg487457.html#msg487457
  usTemp = micros();
  float common = cos( ((month()-1)*30.5+day() + 8 ) / 58.091554);
  sunrise = 349.5 + 66.5 * common;
  sunset =  1078.5 - 69.5 * common;
  if (CheckDST()) {
    sunrise = sunrise + 60;
    sunset = sunset + 60;
  }
  sunriseDay = day();
  Serial.println();
  Serial.print("Sunrise today is  "); Serial.print(sunrise); Serial.println(" minutes after midnight.");
  Serial.print("Sunset  today is " ); Serial.print(sunset);  Serial.println(" minutes after midnight.");
  Serial.print("  Took "); Serial.print(micros() - usTemp);  Serial.println("us to calculate.");
  Serial.println();
}

boolean CheckDST(){
/*
Starts: Second Sunday in March
Ends: First Sunday in November
From: http://forum.arduino.cc/index.php?topic=66426.15
*/     
    //January, february, and december are out.
    if (month() < 3 || month() > 11) { return false; }
    //April to October are in
    if (month() > 3 && month() < 11) { return true; }
    int previousSunday = day() - weekday();
    //In march, we are DST if our previous sunday was on or after the 8th.
    if (month() == 3) { return previousSunday >= 8; }
    //In november we must be before the first sunday to be dst.
    //That means the previous sunday must be before the 1st.
    return previousSunday <= 0;
}

//Calculates each of the variables that wunderground is expecting
//Expects to be called once a second, bases some calculations on that.
void calcWeather()
{
    //Calc winddir
    winddir = get_wind_direction();

    //Calc windspeed
    //windspeedmph = get_wind_speed(); //This is calculated in the main loop on line 179

    //Calc windgustmph
    //Calc windgustdir
    //These are calculated in the main loop

    //Calc windspdmph_avg2m
/*    float temp = 0;
    for(int i = 0 ; i < 120 ; i++)
        temp += windspdavg[i];
    temp /= 120.0;
    windspdmph_avg2m = temp;
*/

    //Calc winddir_avg2m, Wind Direction
    //You can't just take the average. Google "mean of circular quantities" for more info
    //We will use the Mitsuta method because it doesn't require trig functions
    //And because it sounds cool.
    //Based on: http://abelian.org/vlf/bearings.html
    //Based on: http://stackoverflow.com/questions/1813483/averaging-angles-again
    long sum = winddiravg[0];
    int D = winddiravg[0];
    for(int i = 1 ; i < WIND_DIR_AVG_SIZE ; i++)
    {
        int delta = winddiravg[i] - D;

        if(delta < -180)
            D += delta + 360;
        else if(delta > 180)
            D += delta - 360;
        else
            D += delta;

        sum += D;
    }
    winddir_avg2m = sum / WIND_DIR_AVG_SIZE;
    if(winddir_avg2m >= 360) winddir_avg2m -= 360;
    if(winddir_avg2m < 0) winddir_avg2m += 360;

    //Calc windgustmph_10m
    //Calc windgustdir_10m
    //Find the largest windgust in the last 10 minutes
    windgustmph_10m = 0;
    windgustdir_10m = 0;
    //Step through the 10 minutes
    for(int i = 0; i < 10 ; i++)
    {
        if(windgust_10m[i] > windgustmph_10m)
        {
            windgustmph_10m = windgust_10m[i];
            windgustdir_10m = windgustdirection_10m[i];
        }
    }

    //Calc windgustmph_5m
    //Calc windgustdir_5m
    //Find the largest windgust in the last 10 minutes
    windgustmph_5m = 0;
    windgustdir_5m = 0;
    //Step through the 5 minutes
    for(int i = 0; i < 5 ; i++)
    {
        if(windgust_5m[i] > windgustmph_5m)
        {
            windgustmph_5m = windgust_5m[i];
            windgustdir_5m = windgustdirection_5m[i];
        }
    }

    //Calc humidity
    humidity = myHumidity.readHumidity();

    //Calc tempf from pressure sensor
    tempf = myPressure.readTempF();

    //Total rainfall for the day is calculated within the interrupt
    //Calculate amount of rainfall for the last 60 minutes
    rainin = 0;
    for(int i = 0 ; i < 60 ; i++)
        rainin += rainHour[i];

    //Calc pressure but ONLY ONCE A MINUTE, so deltas are meaningful.
    if (seconds == 59) {
      oldPressure = pressure;
      pressure = myPressure.readPressure();
      if (oldPressure == 0) oldPressure = pressure; //First time, let's not have a "delta" of the current pressure.
    }

    //Get voltage and current from INA219 sensors
    float shuntvoltage = 0;
    float busvoltage = 0;
    float current_mA = 0;
    float loadvoltage = 0;
    float avg_plus = 0;
    float avg_minus = 0;

    // INA219 AAAAAA
    shuntvoltage = ina219a.getShuntVoltage_mV();
    busvoltage = ina219a.getBusVoltage_V();
    current_mA = ina219a.getCurrent_mA();
    loadvoltage = busvoltage + (shuntvoltage / 1000);

    avg_plus  = loadvoltage / VOLTAGE_AVG_SIZE;
    avg_minus = ina219a_volts / VOLTAGE_AVG_SIZE;
    ina219a_volts = ina219a_volts - avg_minus + avg_plus;

    avg_plus = current_mA / VOLTAGE_AVG_SIZE;
    avg_minus = ina219a_current / VOLTAGE_AVG_SIZE;
    ina219a_current = ina219a_current -avg_minus + avg_plus;

    // INA219 BBBBBB
    shuntvoltage = ina219b.getShuntVoltage_mV();
    busvoltage = ina219b.getBusVoltage_V();
    current_mA = ina219b.getCurrent_mA();
    loadvoltage = busvoltage + (shuntvoltage / 1000);

    avg_plus  = loadvoltage / VOLTAGE_AVG_SIZE;
    avg_minus = ina219b_volts / VOLTAGE_AVG_SIZE;
    ina219b_volts = ina219b_volts - avg_minus + avg_plus;

    avg_plus = current_mA / VOLTAGE_AVG_SIZE;
    avg_minus = ina219b_current / VOLTAGE_AVG_SIZE;
    ina219b_current = ina219b_current -avg_minus + avg_plus;


    /* //Diagnostic printout for INA219 sensor
    Serial.print("Bus: "); Serial.print(busvoltage); Serial.print(" V, ");
    Serial.print("Shunt: "); Serial.print(shuntvoltage); Serial.print(" mV, ");
    Serial.print("Load: "); Serial.print(loadvoltage); Serial.print(" V, ");
    Serial.print("Current: "); Serial.print(current_mA); Serial.print(" mA, ");
    Serial.print("Power: "); Serial.print(current_mA / 1000 * loadvoltage); Serial.println(" W"); */


    //Calc dewptf

    //Calc light level
    light_lvl = get_light_level();

    //Calc battery level
    batt_lvl = get_battery_level();
    sla_lvl = get_sla_level();
    
}

//Returns the voltage of the light sensor based on the 3.3V rail
//This allows us to ignore what VCC might be (an Arduino plugged into USB has VCC of 4.5 to 5.2V)
float get_light_level()
{
    float operatingVoltage = analogRead(REFERENCE_3V3);
    float lightSensor = analogRead(LIGHT);

    operatingVoltage = 3.3 / operatingVoltage; //The reference voltage is 3.3V
    lightSensor = operatingVoltage * lightSensor;

    return(lightSensor);
}

//Returns the voltage of the raw pin based on the 3.3V rail
//This allows us to ignore what VCC might be (an Arduino plugged into USB has VCC of 4.5 to 5.2V)
//Battery level is connected to the RAW pin on Arduino and is fed through two 5% resistors:
//3.9K on the high side (R1), and 1K on the low side (R2)
float get_battery_level()
{
    float operatingVoltage = analogRead(REFERENCE_3V3);
    float rawVoltage = analogRead(BATT);

    operatingVoltage = 3.30 / operatingVoltage; //The reference voltage is 3.3V
    rawVoltage = operatingVoltage * rawVoltage; //Convert the 0 to 1023 int to actual voltage on BATT pin
    rawVoltage *= 4.90; //(3.9k+1k)/1k - multiple BATT voltage by the voltage divider to get actual system voltage

    return(rawVoltage);
}

float get_sla_level()
{
    float operatingVoltage = analogRead(REFERENCE_3V3);
    float rawVoltage = analogRead(SLA_BATT);
    sla_raw = rawVoltage;

    //Calculate a rolling average over 10 seconds. Each second we subtract 1/10th of the average, and add the current value.
    sla_10secRaw -= sla_10secRaw / 10;
    sla_10secRaw += sla_raw;

    operatingVoltage = 3.30 / operatingVoltage; //The reference voltage is 3.3V
    rawVoltage = operatingVoltage * rawVoltage; //Convert the 0 to 1023 int to actual voltage on BATT pin
    //rawVoltage *= 4.90; //(3.9k+1k)/1k - multiple BATT voltage by the voltage divider to get actual system voltage
    //rawVoltage *= 15.705; //(1m+68k)/68k - multiply SLA_BATT voltage by the voltage divider to get actual battery voltage
    rawVoltage *= 16.705; //add 1 for "fudge factor".
    sla_30sec -= sla_30sec / 30.0;
    sla_30sec += rawVoltage / 30.0;

    return(rawVoltage);

}

//Returns the instataneous wind speed
float get_wind_speed()
{
    float deltaTime = millis() - lastWindCheck; // (ex: 750ms)
    deltaTime /= 1000.0; //Covert to seconds
    float windSpeed = (float)windClicks / deltaTime; // (ex, 3 clicks / 0.750s = 4 clicks per second)

    windClicks = 0; //Reset and start watching for new wind
    lastWindCheck = millis();
    windSpeed *= 1.492; //4 * 1.492 = 5.968MPH

    return(windSpeed);
}

//Read the wind direction sensor, return heading in degrees
int get_wind_direction()
{
    unsigned int adc;

    adc = analogRead(WDIR); // get the current reading from the sensor
    winddirRaw = adc;       // Save the ADC value for troubleshooting.

    // The following table is ADC readings for the wind direction sensor output, sorted from low to high.
    // Each threshold is the midpoint between adjacent headings. The output is degrees for that ADC reading.
    // Note that these are not in compass degree order! See Weather Meters datasheet for more information.

    if (adc < 380) { strWindDir = "ESE"; return (113); }    // ESE
    if (adc < 393) { strWindDir = "ENE"; return  (68); }    // ENE
    if (adc < 414) { strWindDir = "E";   return  (90); }    // E
    if (adc < 456) { strWindDir = "SSE"; return (158); }    // SSE
    if (adc < 508) { strWindDir = "SE";  return (135); }    //  SE
    if (adc < 551) { strWindDir = "SSW"; return (203); }    // SSW
    if (adc < 615) { strWindDir = "S";   return (180); }    // S
    if (adc < 680) { strWindDir = "NNE"; return  (23); }    // NNE
    if (adc < 746) { strWindDir = "NE";  return  (45); }    //  NE
    if (adc < 801) { strWindDir = "WSW"; return (248); }    // WSW
    if (adc < 833) { strWindDir = "SW";  return (225); }    //  SW
    if (adc < 878) { strWindDir = "NNW"; return (338); }    // NNW
    if (adc < 913) { strWindDir = "N";   return   (0); }    // N
    if (adc < 940) { strWindDir = "WNW"; return (293); }    // WNW
    if (adc < 967) { strWindDir = "NW";  return (315); }    //  NW
    if (adc < 990) { strWindDir = "W";   return (270); }    // W
    if (adc < 1010) {strWindDir = "W";   return (270); }    // W - Sometimes 270 returns higher than 990.
    strWindDir = "ERR";
    return (-10); // error, disconnected?
}


/*-------- NTP code ----------*/
/*****************************************************************************
  _______   _____   __  __   ______         __    _   _   _______   _____  
 |__   __| |_   _| |  \/  | |  ____|       / /   | \ | | |__   __| |  __ \ 
    | |      | |   | \  / | | |__         / /    |  \| |    | |    | |__) |
    | |      | |   | |\/| | |  __|       / /     | . ` |    | |    |  ___/ 
    | |     _| |_  | |  | | | |____     / /      | |\  |    | |    | |     
    |_|    |_____| |_|  |_| |______|   /_/       |_| \_|    |_|    |_|     

 *****************************************************************************
 */

time_t getNtpTime()
{
  // We don't want to send anything during power save times, for now.
  if (powerSave) {
    Serial.println("   NTP requested, but NO PACKET SENT due to Power Save mode.");
    return 0;
  }
  if (disableNTP) {
    Serial.println("   NTP requested, but disabled via \"const bool disableNTP = true;\"");
    return 0;
  }
  Udp.begin(NTPlocalPort); // Moved from setup(), to try stop()ing udp every time.
  while (Udp.parsePacket() > 0) ; // discard any previously received packets
  Serial.println(F("Transmit NTP Request"));
  msNTPrequest = millis();
  sendNTPpacket(timeServer);
  //sendNTPpacket(timeServerIP);
  uint32_t beginWait = millis();
  // Normal timeout is 1500, but I can't pause that long or weather gets messed up.
  // FIXME: see about making this check every loop(), for 1500ms before failing, instead of looping here.
  while (millis() - beginWait < 800) {
    int size = Udp.parsePacket();
    if (size >= NTP_PACKET_SIZE) {
      Serial.print(F("   UDP response received "));
      Serial.print(millis() - msNTPrequest);
      Serial.println(F("ms later. Parsing for NTP"));
      Udp.read(packetBuffer, NTP_PACKET_SIZE);  // read packet into the buffer
      unsigned long secsSince1900;
      // convert four bytes starting at location 40 to a long integer
      secsSince1900 =  (unsigned long)packetBuffer[40] << 24;
      secsSince1900 |= (unsigned long)packetBuffer[41] << 16;
      secsSince1900 |= (unsigned long)packetBuffer[42] << 8;
      secsSince1900 |= (unsigned long)packetBuffer[43];
      Udp.stop();
      return secsSince1900 - 2208988800UL + timeZone * SECS_PER_HOUR;
    }
  }
  Serial.print(F("After waiting "));
  Serial.print(millis() - msNTPrequest);
  Serial.println(F("ms, No NTP Response :-("));
  Udp.stop();
  return 0; // return 0 if unable to get the time
}

// send an NTP request to the time server at the given address (DNS lookup version, see IPAddress() version below)
unsigned long sendNTPpacket(char* address)
{
  // set all bytes in the buffer to 0
  memset(packetBuffer, 0, NTP_PACKET_SIZE);
  // Initialize values needed to form NTP request
  // (see URL above for details on the packets)
  packetBuffer[0] = 0b11100011;   // LI, Version, Mode
  packetBuffer[1] = 0;     // Stratum, or type of clock
  packetBuffer[2] = 6;     // Polling Interval
  packetBuffer[3] = 0xEC;  // Peer Clock Precision
  // 8 bytes of zero for Root Delay & Root Dispersion
  packetBuffer[12]  = 49;
  packetBuffer[13]  = 0x4E;
  packetBuffer[14]  = 49;
  packetBuffer[15]  = 52;

  // all NTP fields have been given values, now
  // you can send a packet requesting a timestamp:
  Serial.print(F("   About to send UDP NTP packet from char* ... "));
  //wdt_disable();
  Udp.beginPacket(address, 123); //NTP requests are to port 123
  Udp.write(packetBuffer, NTP_PACKET_SIZE);
  Udp.endPacket();
  //wdt_enable(WDTO_8S);
  Serial.println(F("sent (probably)."));
}

// send an NTP request to the time server at the given address (IP, no-dns version)
unsigned long sendNTPpacket(IPAddress address)
{
  // set all bytes in the buffer to 0
  memset(packetBuffer, 0, NTP_PACKET_SIZE);
  // Initialize values needed to form NTP request
  // (see URL above for details on the packets)
  packetBuffer[0] = 0b11100011;   // LI, Version, Mode
  packetBuffer[1] = 0;     // Stratum, or type of clock
  packetBuffer[2] = 6;     // Polling Interval
  packetBuffer[3] = 0xEC;  // Peer Clock Precision
  // 8 bytes of zero for Root Delay & Root Dispersion
  packetBuffer[12]  = 49;
  packetBuffer[13]  = 0x4E;
  packetBuffer[14]  = 49;
  packetBuffer[15]  = 52;

  // all NTP fields have been given values, now
  // you can send a packet requesting a timestamp:
  Udp.beginPacket(address, 123); //NTP requests are to port 123
  Udp.write(packetBuffer, NTP_PACKET_SIZE);
  Udp.endPacket();
  Serial.println(F("  UDP NTP packet sent from IPAddress (probably)."));
}


void ShowSockStatus()
{
  // CLOSED 0x00 // LISTEN 0x14 // ESTABLISHED 0x17 // FIN_WAIT 0x18 // CLOSE_WAIT 0x1C // UDP 0x22
  for (int i = 0; i < MAX_SOCK_NUM; i++) {
    Serial.print("Socket#");
    Serial.print(i);
    uint8_t s = W5100.readSnSR(i);
    ethSockStatus[i] = s;
    Serial.print(":0x");
    Serial.print(s,16);
    Serial.print(" ");
    Serial.print(W5100.readSnPORT(i));
    Serial.print(" D:");
    uint8_t dip[4];
    W5100.readSnDIPR(i, dip);
    for (int j=0; j<4; j++) {
      Serial.print(dip[j],10);
      if (j<3) Serial.print(".");
    }
    Serial.print("(");
    Serial.print(W5100.readSnDPORT(i));
    Serial.println(")");
  }
}


int freeRam () {
  extern int __heap_start, *__brkval; 
  int v; 
  return (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval); 
}

void printDigits(int digits){
  // utility function adds leading 0
  if(digits < 10)
    Serial.print('0');
  Serial.print(digits);
}

//Utility function for SD cards
/*
 * void printDirectory(File dir, int numTabs) {
  // Begin at the start of the directory
  dir.rewindDirectory();
  
  while(true) {
     File entry =  dir.openNextFile();
     if (! entry) {
       // no more files
       //Serial.println("**nomorefiles**");
       break;
     }
     for (uint8_t i=0; i<numTabs; i++) {
       Serial.print('\t');   // we'll have a nice indentation
     }
     // Print the 8.3 name
     Serial.print(entry.name());
     // Recurse for directories, otherwise print the file size
     if (entry.isDirectory()) {
       Serial.println("/");
       printDirectory(entry, numTabs+1);
     } else {
       // files have sizes, directories do not
       Serial.print("\t\t");
       Serial.println(entry.size(), DEC);
     }
     entry.close();
   }
}
*/

byte uploadWeather()
{
  if (powerSave) {
    Serial.println("UploadWeather() called, but NO DATA SENT because of Power Save mode.");
    return 50;
  }
  
  // Connect to CSS website, do a PUT with weather values. Should be called once for every minute of weather data.
  logSome(F("  uploadWeather called, building string. Bytes free: "));
  logOneLine(freeRam());
  byte uploadStatus = 90; //90 = haven't tried stopping the client yet.

  // Preemptively close any open connections, to keep sockets available.
  client.stop();
  while (client.available()) { //read return from socket
    Serial.write(client.read());
  }

  uploadStatus = 100; //100 = stopped client, but haven't tried connecting.
  
  String strPut = makeUploadWeatherPut(getWeatherString());

  //Serial.print(F(" before strPut, after strPut: "));
  //Serial.println(freeRam());

  char charPut[300];
  for (int i = 0; i < 300; i++) {
    charPut[i] = 'x';
  }
  charPut[299] = '\0';
  int strPutLength = strPut.length() + 1;
  Serial.print("strPut len: ");
  Serial.println(strPutLength);
  if (strPutLength > 298) strPutLength = 298;
  strPut.toCharArray(charPut, strPutLength);

  client.setTimeout(600);
  int clientConnectStatus;
  clientConnectStatus = client.connect(server, 80);
  if (clientConnectStatus) {
    logSome(F("Ether client connected for uploadWeather. Mem: "));
    logSome(freeRam());
    logSome(", connect status: ");
    logOneLine(clientConnectStatus);
    ethStopped = false;
    
    // Make an HTTP request:
    //logSome(strPut);
    //client.print(strPut);  //Single print so hopefully it goes out in one packet.
    Serial.write(charPut, strPutLength); //for debugging
    client.write(charPut, strPutLength); //Better chance of a single packet by using a char[].
    ethLastMillis = millis();
    uploadStatus = 0;
    ethConnFails = 0;
    ethTimeouts = 0;
    
  } else {
    // if you didn't get a connection to the server:
    logSome(F("connection failed, status: "));
    logOneLine(clientConnectStatus);
    ethLastFailureCode = clientConnectStatus;
    client.stop();
    ethStopped = true;
    ethConnFails++;
    uploadStatus = 200; // connection failed
  }

  logSome(F("  uploadWeather() finished, free mem: "));
  logOneLine(freeRam());
  return uploadStatus;
}

// Test with building strings, to use for the website request.
String getWeatherString() {
  String weatherString = "";
  int tempc = RTC.temperature();

  // 1: time
  if (hour() < 10) weatherString += String('0');
  weatherString += String(hour());
  weatherString += ":";
  if (minute() < 10) weatherString += String('0');
  weatherString += String(minute());

  // 2: date
  weatherString += String(charComma);
  weatherString += String(month());
  weatherString += String(("/"));
  weatherString += String(day());
  weatherString += String(("/"));
  weatherString += String(year());

  // 3: Wind speed, mph, 1 minute average
  weatherString += String(charComma);
  if (windSpeedAvg < 9.5) weatherString += String('0');
  weatherString += String(windSpeedAvg, 2);

  // 4: wind speed, mph, 5 minute max (gust)
  weatherString += String(charComma);
  if (windgustmph_5m < 9.5) weatherString += String('0');
  weatherString += String(windgustmph_5m, 1);

  // 5: wind direction, 1 minute average
  weatherString += String(charComma);
  if ((winddir < 10 ) and (winddir >= 0)) weatherString += String("0"); //pad with zeros to keep formatting nicer
  if ((winddir < 100) and (winddir >= 0)) weatherString += String("0"); //pad with zeros to keep formatting nicer
  weatherString += String(winddir);
  //weatherString += String(",windgustdir=");
  //weatherString += String(windgustdir);

  // 6: temperature, F, outside, instant
  weatherString += String(charComma);
  weatherString += String(bme280a.readTempF(), 2);
// All this was before the BME280
//    if (tempf < -1000) {
//      weatherString += String((tempc * 0.45) + 32, 1);
//    } else {
//      weatherString += String(tempf, 0);
//    }

  // 7: humidity, %, outside, instant from bme280a
  weatherString += String(charComma);
  weatherString += String(bme280a.readFloatHumidity(), 0);
// All this was before the BME280
//    if (humidity < 200) {
//      //weatherString += String(humidity, 1);
//    } else {
//      weatherString += "0";
//    }

  // 8: Barometric pressure, hPa, outside, instant from bme280a
  weatherString += String(charComma);
  weatherString += String(bme280a.readFloatPressure() / 100.0, 2);
// All this wasbefore the BME280
//    if (pressure > 0) {
//      weatherString += String(pressure / 100.0, 1);
//    } else {
//      weatherString += "0";
//    }

  // 9: Barometric pressure delta from previous reading
  weatherString += String(charComma);
  //if (pressure >= oldPressure) weatherString += String("+"); //can't have spaces in the URL, but using the + makes columns line up nicer.
  //weatherString += String((pressure - oldPressure) / 100.0, 2);
  weatherString += "0";

  // 10: rain so far today
  //weatherString += String(",rainin=");
  //weatherString += String(rainin, 2);
  weatherString += String(charComma);
//    weatherString += String(0.0, 2);
  weatherString += String(wxOwner);

  // 11: rain long term? Maybe it's supposed to be last 24h, but it's always zero.
  //weatherString += String(",dailyrainin=");
  //weatherString += String(dailyrainin, 2);
  weatherString += String(charComma);
//    weatherString += String(0.0, 2);
  weatherString += String(wxVersion);

  // 11: wind speed, mph, instant (instead of 24h rain)
  //weatherString += String(charComma);
  //if (windspeedmph < 10) weatherString += String('0');
  //weatherString += String(windspeedmph, 1);

  // 12: temperature in the enclosure or 2nd sensor if we get one. In Celcius for Jimmy.
  weatherString += String(charComma);
  if (tempc) {
    weatherString += String(tempc / 4.0, 2); //Dja
  } else {
    weatherString += "0";
  }

  // 13: Current on ina219 sensor A (raw battery @ 12v maybe?)
  weatherString += String(charComma);
  weatherString += String(ina219a_current, 2);
  weatherString += String("mA");

  // 14: Voltage on ina219 sensor A (raw battery @ 12v maybe?)
  weatherString += String(charComma);
  weatherString += String(ina219a_volts, 2);
  weatherString += String("v");
  //weatherString += String(batt_lvl, 2);

  // 15: Power on ina219 sensor A (watts battery)
  weatherString += String(charComma);
  weatherString += String(ina219a_volts * ina219a_current / 1000, 2);
  weatherString += String("w");


  // 16: Current on ina219 sensor B (after buck to 5v maybe?)
  weatherString += String(charComma);
  weatherString += String(ina219b_current, 2);
  weatherString += String("mA");

  // 17: Voltage on ina219 sensor A (after buck to 5v maybe?)
  weatherString += String(charComma);
  weatherString += String(ina219b_volts, 2);
  weatherString += String("v");
  //weatherString += String(batt_lvl, 2);

  // 18: Power on ina219 sensor A (watts battery)
  weatherString += String(charComma);
  weatherString += String(ina219b_volts * ina219b_current / 1000, 2);
  weatherString += String("w");



  // 19: light level, referenced to voltage I think
  weatherString += String(charComma);
//    weatherString += String(light_lvl, 2);
  weatherString += "0";

  // 20: run time in days.HH:MM:SS
  weatherString += String(charComma);
  weatherString += String(days);
  weatherString += String(".");
  if (hours < 10) weatherString += String('0');
  weatherString += String(hours);
  weatherString += String(":");
  if (minutes < 10) weatherString += String('0');
  weatherString += String(minutes);
  weatherString += String(":");
  if (seconds < 10) weatherString += String('0');
  weatherString += String(seconds);

  /* 18: loop counter. For diagnostics, mostly useless.
  weatherString += String(charComma);
  weatherString += String(loopCounter);
  weatherString += String(charComma);
  weatherString += String(loopCounter - loopDelta);
  loopDelta = loopCounter; */

  // 18: print free memory? Interesting...
//    weatherString += String(charComma);
//    weatherString += String(freeRam());

  // 21: print raw wind direction ADC reading, to see why 270 degree sometimes comes back as "invalid"
  if (true) {
    weatherString += String(charComma);
    weatherString += String("wd=");
    weatherString += String(winddirRaw);
  }
  if (true) {
    weatherString += String(charComma);
    if (strWindDir.length() < 3) weatherString += String("_");
    if (strWindDir.length() < 2) weatherString += String("_");
    weatherString += strWindDir;
  }

  // 22+: Assorted info and error values
  // Tack on a ,R if we've rebooted to make it easier to spot them
  if(justRestarted) {
    weatherString += ",R";
  }

  // add socket status as 8 hex chars
  bool reportSockets = false;
  for (int i = 0; i < MAX_SOCK_NUM; i++) {
    if (ethSockStatus[i] > 0) reportSockets = true;
  }
  if (reportSockets) {
    weatherString += String(charComma);
    for (int i = 0; i < MAX_SOCK_NUM; i++) {
      if (ethSockStatus[i] < 17) weatherString += String("0");
      weatherString += String(ethSockStatus[i], 16);
    }
  }

  // If there have been failures, tack them on:
  if (ethConnFails) {
    weatherString += String(F(",EthConnFails="));
    weatherString += String(ethConnFails);
  }
  if (ethTimeouts) {
    weatherString += String(F(",Timeouts="));
    weatherString += String(ethTimeouts);
  }
  if (ethLastFailureCode) {
    weatherString += String(F(",failCode="));
    weatherString += String(ethLastFailureCode);
  }
  if(reportWatchdog) {
    weatherString += ",W-";
    weatherString += String(year(reportWatchdog));
    weatherString += String(("/"));
    weatherString += String(month(reportWatchdog));
    weatherString += String(("/"));
    weatherString += String(day(reportWatchdog));
    weatherString += String("@");
    weatherString += String(hour(reportWatchdog));
    weatherString += String((":"));
    weatherString += String(minute(reportWatchdog));
  }

  //Serial.println(weatherString);
  weatherString.replace(" ", "");
  return weatherString;
}

//Prints the various variables directly to the port
//I don't like the way this function is written but Arduino doesn't support floats under sprintf
void printWeather()
{
  //calcWeather(); //Go calc all the various sensors; except now call it directly from loop()
  timeStatus();             //check the time status now to force a sync if needed.

  // 1: time
  printDigits(hour());
  Serial.print((":"));
  printDigits(minute());

  // 2: date
  Serial.print(charComma);
  Serial.print(month());
  Serial.print(("/"));
  Serial.print(day());
  Serial.print(("/"));
  Serial.print(year());

  // 3: Wind speed, mph, 1 minute average
  Serial.print(charComma);
  if (windSpeedAvg < 10) Serial.print('0');
  Serial.print(windSpeedAvg, 2);

  // 4: wind speed, mph, 5 minute max (gust)
  Serial.print(charComma);
  if (windgustmph_5m < 10) Serial.print('0');
  Serial.print(windgustmph_5m, 1);

  // 5: wind direction, 1 minute average
  Serial.print(charComma);
  if (winddir == 0 ) Serial.print(" ");
  if (winddir < 100) Serial.print(" ");
  Serial.print(winddir);
  //Serial.print(",windgustdir=");
  //Serial.print(windgustdir);
  //Serial.print(F(",wAvg="));
  //Serial.print(windspdmph_avg2m, 2);

  // 6: temperature, F, outside, instant
  Serial.print(charComma);
  Serial.print(tempf, 1);

  // 7: humidity, %, outside, instant
  Serial.print(charComma);
  Serial.print(humidity, 1);

  // 8: Barometric pressure, hPa, outside, instant
  Serial.print(charComma);
  Serial.print(pressure / 100.0, 1);

  // 9: Barometric pressure delta from previous reading
  Serial.print(charComma);
  if (pressure >= oldPressure) Serial.print(" ");
  Serial.print((pressure - oldPressure) / 100.0, 2);

  // 10: rain so far today
  //Serial.print(",rainin=");
  //Serial.print(rainin, 2);
  Serial.print(charComma);
  Serial.print(0.0, 2);

  // 11: rain long term? Maybe it's supposed to be last 24h, but it's always zero.
  //Serial.print(",dailyrainin=");
  //Serial.print(dailyrainin, 2);
  //Serial.print(",");
  //Serial.print(0.0, 2);

  // 11: wind speed, mph, instant (instead of 24h rain)
  Serial.print((","));
  if (windspeedmph < 10) Serial.print('0');
  Serial.print(windspeedmph, 1);

  // 12: temperature in the enclosure or 2nd sensor if we get one
  Serial.print(charComma);
  //Serial.print(tempf, 1); //(FIXME: same as ext sensor since we only have one)
  Serial.print(RTC.temperature() / 4);

  // 13: current in mA
  //(FIXME: same as ext sensor since we only have one)
  Serial.print(charComma);
  Serial.print(ina219a_current, 2);
  Serial.print("mA");

  // 14: voltage onboard, ~5v source
  Serial.print(charComma);
  Serial.print(batt_lvl, 2);

  // 15: voltage battery, possibly inferred but same as 14 for now.
  Serial.print(charComma);
  Serial.print(ina219a_volts,2);
  //Serial.print(sla_30sec, 2);

  // 16: light level, referenced to voltage I think
  Serial.print(charComma);
  Serial.print(light_lvl, 2);

  // 17: run time in days.HH:MM:SS
  Serial.print(charComma);
  Serial.print(days);
  Serial.print(".");
  printDigits(hours);
  Serial.print(":");
  printDigits(minutes);
  Serial.print(":");
  printDigits(seconds);

  // 18: Print the RTC date & time. For debugging.
  time_t rtcTime = RTC.get();
  Serial.print(charComma);
  Serial.print("rtc:");
  Serial.print(year(rtcTime));
  Serial.print("/");
  Serial.print(month(rtcTime));
  Serial.print("/");
  Serial.print(day(rtcTime));
  Serial.print(charComma);
  Serial.print(hour(rtcTime));
  Serial.print(":");
  Serial.print(minute(rtcTime));
  Serial.print(":");
  Serial.print(second(rtcTime));


/*
  // loop counter. For diagnostics, mostly useless.
  Serial.print(charComma);
  Serial.print(loopCounter);
  Serial.print(charComma);
  Serial.print(loopCounter - loopDelta);
  loopDelta = loopCounter;

  // Print the raw 12v input on A12/SLA_BATT_LVL
  Serial.print(charComma);
  Serial.print(sla_raw);
  Serial.print(charComma);
  Serial.print(sla_lvl, 2);
  Serial.print(charComma);
  Serial.print(sla_30sec, 2);

  //Serial.print(charComma);
  //Serial.print(F("__DATE__ "));    //C++ #DEFINE that expands to the current compile date
  //Serial.print(F("__TIME__"));     //C++ #DEFINE that expands to the current compile time
  //Serial.print(String(compile_date));
*/

  // 19: print free memory? Interesting...
  Serial.print(charComma);
  Serial.print(freeRam());

  // 20: print raw ADC reading from wind direction, to troubleshooting why 270 degrees sometimes reads invalid
  Serial.print(charComma);
  Serial.print(winddirRaw);

  // 21: print ina219a's voltage, current
  Serial.print(charComma);
  Serial.print(ina219a_volts);
  Serial.print(charComma);
  Serial.print(ina219a_current);

  // NEWLINE:
  Serial.println();

}

