/*
 Weather Shield Example
 By: Nathan Seidle
 SparkFun Electronics
 Date: November 16th, 2013
 License: This code is public domain but you buy me a beer if you use this and we meet someday (Beerware license).

 Much of this is based on Mike Grusin's USB Weather Board code: https://www.sparkfun.com/products/10586

 */
const String wxVersion = "19p";
const String wxOwner = "DJ";
const byte ina219a_HWaddr = 0x40;  //0x40 for everyone but Lance. 0x44 for Lance.
const byte ina219b_HWaddr = 0x41;  //
const byte bme280a_HWaddr = 0x76;  //Default may be 0x77 depending on mfgr
const byte bme280b_HWaddr = 0x77;
const bool disableNTP = false;      //Set to false to allow NTP, but it can cause crashes if it doesn't get a response.
const bool enableEthDump2Serial = false;  //Set to false to suppress spitting Ethernet output to serial. Sometimes unprintable characters mess up the terminal.
const String startupMessage = "UM Weather Station (ver 19p 2017/12/07) starting at ms ";
const byte wifiStartupDelay = 59;  // Seconds to wait for Ubiquity Wifi startup
//#define TENMINUTEDAY               // Switch from day to night every four minutes for DEBUG


#include <avr/wdt.h>   // WatchDog Timer. If I hit an endless loop, reset.
#include <EEPROM.h>    // will need this if I start writing to eeprom
#include <Wire.h>      // I2C needed for weather station sensors
#include <Math.h>      // Need cos() for calculating sunrise & sunset
#include <Time.h>      // https://github.com/PaulStoffregen/Time  but this header doesn't seem to be needed?
#include <TimeLib.h>   // https://github.com/PaulStoffregen/Time
#include <Timezone.h>  // https://github.com/JChristensen/Timezone, might conflict with timelib above?
#include <DS3232RTC.h> // https://github.com/JChristensen/DS3232RTC, using a DS3231, but it's still supported.
#include "SdFat.h"     // https://github.com/greiman/SdFat, Read & write SD card for data logging.
//#include "TinyGPS.h" // https://github.com/mikalhart/TinyGPS, GPS module for time with no Internet
//#include "SparkFunMPL3115A2.h" // Pressure sensor - Search "SparkFun MPL3115" and install from Library Manager
//#include "SparkFunHTU21D.h"    // Humidity sensor - Search "SparkFun HTU21D" and install from Library Manager
#include "Adafruit_INA219.h"   // Voltage/Current sensor. https://github.com/adafruit/Adafruit_INA219
#include "SparkFunBME280.h"    // High precision Temp & Humidity sensor. https://github.com/sparkfun/SparkFun_BME280_Arduino_Library

#include "Marshall.h"  // Site-specific parameters that cannot currently be published

//#define logOneLine( line) logFile.println(line); Serial.println(line);
//#define logOneLine2( line, base) logFile.println(line, base); Serial.println(line,base);
//#define logSome( line) logFile.print(line); Serial.print(line);
#define logOneLine( line) Serial.println(line);
#define logOneLine2( line, base) Serial.println(line,base);
#define logSome( line) Serial.print(line);


Adafruit_INA219 ina219a(ina219a_HWaddr);     // First  ina219 sensor: A
Adafruit_INA219 ina219b(ina219b_HWaddr);     // Second ina219 sensor: B
BME280 bme280a;                              // First  bme280 sensor: A
BME280 bme280b;                              // Second bme280 sensor: B
//MPL3115A2 myPressure;            //Sparkfun pressure sensor
//HTU21D myHumidity;               //Sparkfun humidity sensor


//Hardware pin definitions, weather station
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
// analog I/O pins
const byte WDIR = A0;
const byte LIGHT = A1;
const byte BATT = A2;
const byte REFERENCE_3V3 = A3;

// digital I/O pins
const byte RAIN = 2;
const byte WSPEED = 3;
const byte STAT1 = 7;


const byte PIN_ETH_CONTROL = 8;        // Ethernet power control; on=LOW, off=HIGH
const byte ETH_DISABLED = HIGH;
const byte ETH_ENABLED = LOW;

const byte PIN_CamPG_CONTROL = 9;      // FETQ3, 12V power to Camera4 (PG launch), Disabled(default)=LOW=Camera4 stays off; Enabled=HIGH=Camera4 turns on
const byte CamPG_ON = HIGH;            // turn Camera4 on
const byte CamPG_OFF = LOW;            // (default)=turn off Camera4

const byte PIN_CamHG_CONTROL = 11;      // FETQ2, 12V power to Camera3 (HG launch), Disabled(default)=LOW=Camera3 stays off; Enabled=HIGH=Camera3 turns on
const byte CamHG_ON = HIGH;             // turn Camera3 on
const byte CamHG_OFF = LOW;             // (default)=turn off Camera3

const byte PIN_Cam12_CONTROL = 12;      // FETQ1, 12V power to Camera1&2 (BB), Disabled(default)=LOW=Camera1&2 stay off; Enabled=HIGH=Camera1&2 turn on
const byte Cam12_ON = HIGH;             // turn Camera1&2 on
const byte Cam12_OFF = LOW;             // (default)=turn off Camera1&2

const byte PIN_UBIQUITI_CONTROL = 14;   // FETQ4, 12V power to Ubiquiti AP; Enabled(default)=LOW=Ubiquiti AP stays on, Disabled=HIGH=Ubiquiti AP is off 
const byte UBIQUITI_ON = LOW;           // (default)=turn on Ubiquiti AP
const byte UBIQUITI_OFF = HIGH;         // turn off Ubiquiti AP

const byte PIN_12V_CONTROL = 15;        // Rel4, 12V power to all peripherals; Enabled (default)=LOW=power stays connected, Disabled==HIGH=power is disconnected
const byte CONNECT_12V = LOW;           // (default)=power stays connected
const byte DISCONNECT_12V = HIGH;       // power is disconnected

const byte PIN_SOLAR_CONTROL = 16;      // Rel2, Solar panel connection; Enabled (default)=LOW=panel stays connected, Disabled=HIGH=panel is disconnected
const byte SOLAR_CONNECTED = LOW;       // (default)=panel is disconnected
const byte SOLAR_DISCONNECTED = HIGH;   // panel is disconnected





// I2C devices
// 0x40  64 Sparkfun Humidity/temp sensor?
// 0x44  68 INA219 on 3rd address (1st address is 0x40, conflicts with humidty sensor)
// 0x41  65 INA219 on 2nd address
// 0x60  96 Sparkfun Humidity/temp sensor?
// 0x76 118 BME280 environmental sensor

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// EEPROM MAP of used addresses
// 00-08 RESERVED
//    09 PowerSave flag
//    10 Watchdog flag
// 11-14 Watchdog time_t
//    15 Ubiquiti stay-on flag
//
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

const int eePowerSave = 9;
const int eeWatchdog = 10;
const int eeWatchdogTime = 11;
const int eeKeepUbiOn = 15;
struct eeFlags {
  bool powerSave : 1;
  bool keepUbiOn : 1;
  bool flag3     : 1;
  bool flag4     : 1;
  bool flag5     : 1;
  bool flag6     : 1;
  bool flag7     : 1;
  bool flag8     : 1;
};

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
byte lastRealMinute;        //Keep track of when it's a new minute() (Real time, not runtime). Used to check for second() == 0, but that's not reliable.
bool justBooted = true;     //Some stuff settles after the first minute, so let's keep track of that.
bool justRestarted = true;  //Print an R at the end of the first upload attempt to make it easy to see a reboot.
bool powerSave = false;     //Set a flag when we're in power save mode. Do some stuff different.
bool isDaytime = false;
bool ethEnabled = false;    //Set once Eth is enabled because enabling incurs a 30 second pause that we don't want to repeat.
bool wifiEnabled = false;   //Set once wifi is enabled so we don't transmit when it's not on.
bool keepUbiquitiOn = false;    // Used for testing, when we need the wifi to stay powererd on all day.
bool pauseSolar = false;    //We need to charge pausing when it gets hot or if charging too fast. It == battery, box, outside, etc...
byte pauseSolarMinutes = 2; //How long to leave solar off when we turn it off.
byte resumeSolarMinutes = 3;//How long to leave solar ON even if charge rate is high.
float pauseSolarChargeCurrent;  //Store the battery charging rate that resulted in a solar panel "pause" so we can report it.
time_t wifiStartTime = 0;   // Ubiquiti M5 takes ~64 seconds to start, need to keep track of when it started.
time_t pauseSolarStartTime; //Keep track of when we paused the solar panel so we can leave it off for a set time.
time_t resumeSolarStartTime;//Similarly, what time we resumed so we don't cut it off too fast.
time_t uploadPending = 0;   //Set it to the time when a pending upload starts. Don't shut off wifi if one is pending. At least not for 2 or 3 minutes or something.
time_t reportWatchdog = 0;  //Do we need to report a watchdog reset?
time_t recentTime = 0;      //Set the current time periodically so we can use it in the Watchdog Interrupt
time_t lastCrashTime = 0;
time_t lastUploadTime = 0;  // Keep track of the last (hopefully successful?) upload, so we know what still needs to be uploaded.
const char charComma = ',';       //Save memory with Serial.print(charComma) instead of Serial.print(",") all over.
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
 * 13: current 1: solar panel
 * 14: voltage 1: solar panel
 * 15: current 2: battery
 * 16: voltage 2: battery
 * 17: light level (accurate, but probably zero inside enclosure)
 * 18: uptime in HH:MM:SS
 * 19: Wind direction text (N, NNW, NW, WNW, W, etc)
 * 20: Status stuff: reboots, socket status, failures, etc...
 */

float windSpeedAvg = 0; //Lets try keeping avg using MATH!

#define WIND_DIR_AVG_SIZE 60
#define WIND_SPEED_AVG_SIZE 30
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
float light_lvl = 455;     // [analog value from 0 to 1023]

//INA 219 volt & current sensor. MMA means Modified Moving Average. PWM charging requires some smoothing.
float ina219a_volts;
float ina219a_ma;
float ina219a_MMAcurrentSum;
float ina219a_MMAcurrentAvg;
float ina219a_MMAvoltSum;
float ina219a_MMAvoltAvg;
const int ina219a_MMAcount = 1024;

float ina219b_volts;
float ina219b_ma;
float ina219b_MMAcurrentSum;
float ina219b_MMAcurrentAvg;
float ina219b_MMAvoltSum;
float ina219b_MMAvoltAvg;
const int ina219b_MMAcount = 1024;

float shuntvoltage = 0;
float busvoltage = 0;
float current_mA = 0;
float loadvoltage = 0;
float ina219_MMAtemp;
unsigned int ina219a_MMAmillis = 0;
unsigned int ina219a_MMAloops = 0;

// volatiles are subject to modification by IRQs
volatile unsigned long raintime, rainlast, raininterval, rain;


//****************************
//***  Data Storage in RAM ***
//****************************

// Structure to hold essential data for overnight storage or batched transmission during cloudy days.
// 6 bytes so far, with 3 bits to spare. (may be inaccurate)
//bit cheat-sheet: 4=16, 5=32, 6=64, 7=128, 10=1024
struct wxCache_struct {
  byte gust    : 4;    //Wind gust = gust * 2 + wind speed!!
  byte wd      : 4;    //Wind direction / 22.5 (remember to multiply)
  byte pres1   : 8;    //Pressure in hPa minus 900
  byte temp2   : 8;    //Temp in F for internal Brain Box
  byte vBatt   : 8;    //Voltage * 10 for battery
  unsigned int aBatt : 10;    //Milliamps for battery, / 4 (-500 to 3500ma)
  byte ws      : 6;    //Wind speed
  byte humid2  : 5;    //Humidity inside / 3.23
};

time_t wxCache_time;
byte wxCache_count;
byte wxCache_lastSaved;
byte wxCache_lastSent;
#define WX_CACHE_MAX 60

wxCache_struct wxCache[WX_CACHE_MAX];
//2,028 used or 6,164 free without storage
//4,428 used or 3,764 free with 4 hours storage

String wxStringCache[10];
String tempWeatherString;     // Once a minute we will compile a "WeatherString", this is the string that gets uploaded.


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
EthernetClient client;          // For outgoing connections, uploading to the CSS webserver
EthernetClient incomingClient;  // For incoming connections. Initially this is just to prompt a reboot for new code upload.
EthernetServer server(23537);
EthernetUDP Udp;

// if you don't want to use DNS (and reduce your sketch size)
// use the numeric IP instead of the name for the server:
//IPAddress server(74,125,232,128);    // numeric IP for Google (no DNS)
//char server[] = "www.google.com";    // name address for Google (using DNS)
char CSSserver[] = "www.crestlinesoaring.org"; // Web server to connect to.
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

const int NTP_PACKET_SIZE = 48;
byte packetBuffer[ NTP_PACKET_SIZE ];
char timeServer[] = "us.pool.ntp.org";
// [MarshallProprietary]
//IPAddress timeServerIP(128, 138, 141, 172);   //time.nist.gov IP at one point
unsigned long msNTPrequest;          // miliseconds at which NTP request was made (so we can see how long it took)


//**************************************
//****** SD Card Reading ***************
//**************************************

/******************* BENCHMARKING *******************
  write speed and latency    read speed and latency
   speed,   max, min, avg     speed, max, min,avg
  KB/Sec,  usec,usec,usec    KB/Sec,usec,usec,usec
  183.70,212672,2264,2780    279.23,4688,1784,1827
  194.36,211068,2236,2627    279.26,3584,1784,1826
 ***************************************************/
#define sdErr(msg) sd.errorPrint(F(msg))
SdFat sd;
SdFile file;
unsigned int sdPosition;
const uint8_t chipSelect = 4;



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
    if (millis() - lastWindIRQ > 25) // Ignore switch-bounce glitches less than 10ms (142MPH max reading) after the reed switch closes. 20ms = 74mph max, 25ms = 60mph max
    {
        lastWindIRQ = millis(); //Grab the current time
        windClicks++; //There is 1.492MPH for each click per second.
    }
}

// Watchdog timer fired, let's record a little and report it next bootup.
ISR(WDT_vect)
{
    // Get the last crash time. If it's too recent, we won't write a new time to avoid thrashing EEPROM too frequently.
    EEPROM.put(10, 1);
    EEPROM.get(11, lastCrashTime);
    if (recentTime > lastCrashTime + 600) {
      EEPROM.put(10, 1);                // write a "1" to the first byte to indicate the data in second byte is valid and the ISR triggered properly
      EEPROM.put(11, recentTime);
    }

    //Enable interrupts, see if serial works. Maybe we can do more with the watchdog?
    sei();
    Serial.print(F("recentTime is ")); Serial.print(recentTime); Serial.print(F(" lastCrashTime is ")); Serial.print(lastCrashTime); Serial.print(": "); Serial.println(recentTime - lastCrashTime);
    Serial.println(F("---===00 Done with Watchdog ISR 00===---"));

    while(true);                  // triggers the second watchdog timeout for a reset (does this actually work?)
}

/* sets the watchdog timer both interrupt and reset mode with an 8 second timeout */
void enableWatchdog()
{
  cli();
  MCUSR &= ~(1<<WDRF);
  wdt_reset();
  WDTCSR |= (1<<WDCE) | (1<<WDE);
  WDTCSR = (~(1<<WDP1) & ~(1<<WDP2)) | ((1<<WDE) | (1<<WDIE) | (1<<WDP3) | (1<<WDP0));
  sei();
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
    Serial.begin(115200);
    Serial.println();
    Serial.println();
    Serial.print(startupMessage); // Set at the top of sketch to make it easier to find & update
    Serial.println(millis());

    //Enable the WatchDog, 8 second timeout.
    //wdt_enable(WDTO_8S);
    enableWatchdog();

    if (EEPROM.read(eePowerSave) == 255) {
      Serial.println(F("EEPROM eePowerSave was 255, is this a new Arduino? Setting to false (0)."));
      EEPROM.update(eePowerSave, false);
    }

    if (EEPROM.read(eeKeepUbiOn) == 255) {
      Serial.println(F("EEPROM eeKeepUbiOn was 255, is this a new Arduino? Setting to false (0)."));
      EEPROM.update(eeKeepUbiOn, false);
    }

    // Set the common GND source for "YYD-3" FET switches to LOW OUTPUT because it will need to be this way regardless of which bootup mode we're in
    digitalWrite(30, LOW);                     //             must always be low
    pinMode(30, OUTPUT);                       //             common GND source for "YYD-3" FET switches.

    //Check whether the Ubiquiti should be left on all day or cycled off and only on to upload once every 5 minutes
    if (EEPROM.read(eeKeepUbiOn)) {
      keepUbiquitiOn = true;
    }

    
    // Check EEPROM to see if we should be in power save mode. If so, shut some stuff off immediately.
    Serial.print(F("Reading EEPROM to see power save state: "));
    if (EEPROM.read(eePowerSave)) {
      Serial.print(F("Power Save. Shutting off Eth and Ubiquiti... "));
      powerSave = true;
      isDaytime = false;

      disableWifi();
      disableEthernet();

    } else {
      Serial.print(F("No power save. Turning on Eth and Ubiquiti... "));
      powerSave = false;
      isDaytime = true;

      enableWifi();
      enableEthernet();

      //Can't do this, it will set off the Watchdog. We can discuss disabling the watchdog, but I consider this a poor way to accomplish this task.
      //delay(30000);                            //             give eth and U 30 seconds time to boot up (better would be to  ping!)
 
    }
    Serial.println("Done.");
    Serial.println();


    //Weather Station stuff
    pinMode(STAT1, OUTPUT); //Status LED Blue

    pinMode(WSPEED, INPUT_PULLUP); // input from wind meters windspeed sensor
    pinMode(RAIN, INPUT_PULLUP); // input from wind meters rain gauge sensor

    pinMode(REFERENCE_3V3, INPUT);
    pinMode(LIGHT, INPUT);

    //Setup INA219 voltage and current sensor(s)
    Serial.print(F("Starting INA219a Volt & current sensor A: ")); usTemp = micros();
    ina219a.begin();
    Serial.print(micros() - usTemp); Serial.println("us.");

    Serial.print(F("Starting INA219b Volt & current sensor B: ")); usTemp = micros();
    ina219b.begin();
    Serial.print(micros() - usTemp); Serial.println("us.");

    //Setup BME280 temperatue and humidity sensor A
    Serial.print(F("Starting BME280a Temperature & Humidity sensor A, status: 0x")); usTemp = micros();
    bme280a.settings.commInterface = I2C_MODE;
    bme280a.settings.I2CAddress = bme280a_HWaddr;
    bme280a.settings.runMode = 3;
    bme280a.settings.tempOverSample = 1;  //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
    bme280a.settings.pressOverSample = 1; //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
    bme280a.settings.humidOverSample = 1; //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
    Serial.print(bme280a.begin(), HEX);
    Serial.print(", took "); Serial.print(micros() - usTemp); Serial.println("us.");

    //Setup BME280 temperatue and humidity sensor B
    Serial.print(F("Starting BME280b Temperature & Humidity sensor B, status: 0x")); usTemp = micros();
    bme280b.settings.commInterface = I2C_MODE;
    bme280b.settings.I2CAddress = bme280b_HWaddr;
    bme280b.settings.runMode = 3;
    bme280b.settings.tempOverSample = 1;  //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
    bme280b.settings.pressOverSample = 1; //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
    bme280b.settings.humidOverSample = 1; //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
    Serial.print(bme280b.begin(), HEX);
    Serial.print(", took "); Serial.print(micros() - usTemp); Serial.println("us.");


    /*  NOT USING THE SPARKFUN WEATHER SHIELD ANY MORE
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

    //Configure the humidity sensor
    Serial.print(F("Starting Sparkfun W-Shield Humidity sensor, took ")); usTemp = micros();
    myHumidity.begin();
    Serial.print(micros() - usTemp); Serial.println("us");
    */

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
    Serial.print("Sizeof wxCache: "); Serial.println(sizeof(wxCache));
    for (byte i = 0; i < WX_CACHE_MAX; i++) {
      wxCache[i].ws = 0;
      wxCache[i].gust = 0;
      wxCache[i].wd = 0;
      wxCache[i].pres1 = 0;
      wxCache[i].temp2 = 0;
      wxCache[i].vBatt = 0;
      wxCache[i].aBatt = 0;
    }


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
      Serial.print(" ("); Serial.print(reportWatchdog); Serial.print(")");
      Serial.println();

      if (reportWatchdog > 4294000000) {
        // Seems likely the eeprom is uninitialized
        Serial.println("Resetting eeprom reset-time to zero because it was too high");
        EEPROM.put(11, 0.0F);
      }
    }


    // Request the date & time from RTC or NTP
    wdt_reset();
    if (RTC.get() > 1506693603) {
      // If we have a working RTC, let's just use it. Every few minutes we'll check for NTP too.
      Serial.print(F("RTC selected as time source @ "));
      setSyncProvider(RTC.get);
      setSyncInterval(300);           // Update system time often because it actually slews pretty fast; 4 second an hour is typical.
      recentTime = now();
      Serial.print(getDateWithZeros()); Serial.print(" "); Serial.println(getTimeWithZeros());
      Serial.println();
    } else {
      // 0 Means the RTC didn't work, set NTP as the sync provider, with an initially agressive Sync Interval because we depend on it.
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

    // Start SD. Make sure a "current year" folder exists, set it as current directory.
    Serial.print("Starting SD, ");
    if (!sd.begin(chipSelect, SD_SCK_MHZ(50))) {
      sd.initErrorPrint();
    }

    // Make a char[] of the year, roundabout way through String().toCharArray();
    char chrYear[5];
    String(year()).toCharArray(chrYear, 5);
    if (!sd.exists(chrYear)) {
      Serial.print("creating Folder, ");
      if (!sd.mkdir(chrYear)) sdErr("MKDir error");
    }
    if (!sd.chdir(chrYear)) sdErr ("ChDir error");
    Serial.println("SD Done.");

    //For Debugging, read today's whole file to Serial
    char fileName[13];
    String strFileName = getDateWithZerosNoSeparator() + ".dat";
    strFileName.toCharArray(fileName, 13);
    //sdReadFileToSerial(fileName);

    //Print a header row. Though it gets out of date (and inaccurate) often.
    //Serial.println(F("time , date     ,w1avg,wmax,dir, tmp, hum, baro , dv ,rain,wnow, tmp, hum, 5v , 5v ,lght, uptime   , FreeMem  ,Raw Wdir, RTC time, Misc error messages"));
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

  //Check for incoming Ethernet connections. So far, this is only "connecing to reset". Not much happens.
  if (wifiEnabled) {
    msTemp = millis();
    incomingClient = server.available();
    if (incomingClient) {
      Serial.println(F("  --=Ethernet client connected!!=-- "));
      Serial.println(F("    -= Going down for reboot =-  "));
      // Probably just waiting here is enough to cause a WatchDog reset, which is all we really need.
      while (incomingClient.connected()) {
        //Serial.print(F("Entering While incomingClient.connected() at ms: "));
        //Serial.println(millis());
        if (incomingClient.available()) {
          char c = incomingClient.read();
          char fileName[13];
          String strFileName;
          int i;
          Serial.write(c);
          incomingClient.print(c);

          switch (c) {
            case 'R': // for Reset
              wdt_reset();
              Serial.println(F("---===---===--- Client hit R and [enter], which causes the reboot ---===---===---"));
              incomingClient.println(F("R and Enter detected. Rebooting and disconnecting."));
              delay(100);
              Serial.println(); Serial.print(" ");
              i = 0;
              while(true) { // this would surely cause a reboot, except we never seem to get here.
                Serial.print(8);
                Serial.print(i);
                incomingClient.print(" ");
                incomingClient.print(i);
                i++;
                delay(500);
              } // End while (true) for loop until Watchdog Reset
              break; // End of 'R'eset
            case 'C': // for Cache, dump what cached data we have
              incomingClient.println(F("C and Enter detected. Dumping what we have cached in memory. Be sure to disconnect."));
              for (byte i=0; i < 10; i++) {
                Serial.println(wxStringCache[i]);
                incomingClient.print(i); incomingClient.print(": ");
                incomingClient.println(wxStringCache[i]);
              }

              break; // End of 'C'ache
            case 'D': // for Dump today's file to this socket.
              incomingClient.println(F("D and Enter detected. Dumping today's data file to this socket. No reboot (hopefully)"));
              strFileName = getDateWithZerosNoSeparator() + ".dat";
              strFileName.toCharArray(fileName, 13);
              
              sdReadFileToSocket(fileName);
              
              incomingClient.println(F("---- Done dumping file"));
              Serial.println(F("Done dumping file to Ethernet."));

              break; // End of 'D'ump
            case 'U': // for Toggle Ubiquiti keep-on (vs 5 minute Save & Send all day)
              incomingClient.print(F("U detected, toggling Ubiquity to: "));
              if (EEPROM.read(eeKeepUbiOn)) {
                incomingClient.print(F("turn off, only on once every 5 minutes."));
                keepUbiquitiOn = false;
                EEPROM.update(eeKeepUbiOn, false);
              } else {
                incomingClient.println(F("stay on ALL DAY. Still turns off at night"));
                keepUbiquitiOn = true;
                EEPROM.update(eeKeepUbiOn, true);
              }
              break; // End of 'U'biquiti toggle
          }
        }
        incomingClient.stop();
      }
      delay(5);
      incomingClient.stop();
      Serial.println();
      Serial.print(F("Incoming client disconnected after "));
      Serial.print(millis() - msTemp);
      Serial.println("ms.");
    }
  } // End of incoming Ethernet connection handling

  
  //Do "once a second stuff", mostly weather. Also keep track of which minute it is.
  int elapsedMillis = millis() - lastSecond;
  if( elapsedMillis >= 1000 ) {
    digitalWrite(STAT1, HIGH); //Blink stat LED to show how long we're doing the "once a second" work

    // add one second for every 1000 ms that have passed
    lastSecond += 1000 * (int)(elapsedMillis / 1000);
    seconds += (int)(elapsedMillis / 1000);
    wdt_reset(); //I think once a second is enough for our 8 second watchdog.

    //Calc the wind speed and direction every second for 120 second to get 2 minute average
    float currentSpeed;
    currentSpeed = get_wind_speed();


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

    // Wifi takes ~64 to 80 seconds to come alive, check every second to see if Wifi's ready yet.
    // Use millis() instead of now() because early on (before RTC is set up), now() is invalid.
    if (wifiStartTime) {
      if (not (int((millis() - wifiStartTime) / 1000) % 10)) { Serial.print("Waiting for wifi to start up, it's been "); Serial.print((millis() - wifiStartTime) / 1000.0, 2); Serial.println(" seconds."); }
      if ((millis() - wifiStartupDelay * 1000.0L) > wifiStartTime) {
        Serial.println(" Done waiting! Wifi Enabled.");
        wifiStartTime = 0;
        wifiEnabled = true;
      } else {
        //Serial.println();
      }
    }

    // Once-a-minute tasks; seconds are incremented at the top of loop() and may be > 59 until we get here. Hope that's okay!
    if(seconds > 59)
    {
      seconds = seconds % 60; // sometimes the loop takes longer than 1 second.
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
      if (timeStatus() == timeSet) {
        // Long as we've got a good time source, only need to update every 10 minutes.
        setSyncInterval(600);
        recentTime = now();             //Update this once a minute. It will be used in the Watchdog ISR to give a rough date/time estimate.

        //Compare RTC to NTP, to set the RTC. Used to check every 10 minutes, now let's just check once an hour at :15 after.
        if (minute() == 15) {
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
        } // END of once an hour on :15, while the correct date & time are known
      } else if (timeStatus() == timeNeedsSync) {
        //If we don't have valid time, check for time every 2 minutes. Otherwise it's normally once an hour.
        setSyncInterval(120);
        logSome(" time sync lost, interval set to 120s. ");
        
      } // END of timeStatus() == timeSet

      // Check every minute that we know sunrise/sunset for today. If not, calculate it (roughly).
      if (day() > sunriseDay) getRiseSet();


      // From 11:50 to noon, make sure wifi is powered on, in case we need to do something.
      if (hour() == 11 and minute() >= 49) {
        enableWifi();
        enableEthernet();
      }

    
     /* * * * * * * * * * * * * * * * * *
      *  P O W E R   S A V E
      *  P O W E R   S A V E
      * * * * * * * * * * * * * * * * * */
      // Turn off / on some peripherals at night & morning
      int minutesToday = hour() * 60 + minute();

#ifdef TENMINUTEDAY
      Serial.println(F("   !!DEBUG: Cycling to NIGHT every TEN minutes because of ""#define TENMINUTEDAY"""));
    //if ( (minute() / 10) % 2 ) {
      if ( false ) {  //Everlasting day!! (for testing 5 minute save & send)
        Serial.println(F("Pretending that it's NIGHT time."));

#else
      Serial.print(F("The time of day is: "));
      Serial.print(hour()); Serial.print(":"); Serial.print(minute());
      // Go into night (power save) mode if:
      if ((minutesToday < sunrise - 60)        // over an hour before sunrise
      or  (minutesToday > sunset - 15)         // over 15 mintues after sunset
      or  ( (ina219b_volts < 12.3) ))               // battery is critically low voltage
       //and ((minute() % 20) > 2 )) )  // 00, 01, 02, 20, 21, 22, 40, 41, 42, Because it can take until the next minute before the Ubiquiti is ready.
      {
        Serial.print(F(", which is Night time. We will switch to daytime at "));
        Serial.print((sunrise - 60) / 60); Serial.print(":"); Serial.println((sunrise - 60) % 60);
#endif
        // Night time! (We're not between "an hour before sunrise" and "15 minutes after sunset", so turn stuff off.)
        // First set variables and record in eeprom that we're in power save mode.
        if (!powerSave) {
          powerSave = true;
          isDaytime = false;
          if (!EEPROM.read(eePowerSave)) EEPROM.update(eePowerSave, true);
        }

        // Don't pull the plug if we're waiting for wifi to come up so we can send out a batch.
        if (not uploadPending) {
          disableWifi();
          disableEthernet();
        }

      // Don't come back to daytime unless volts are safely above 12.4
      } else if (ina219b_volts > 12.4) {
        Serial.print(F(", which is Day time. We will switch to night at "));
        Serial.print((sunset - 15) / 60); Serial.print(":"); Serial.println((sunset - 15) % 60);
        // Otherwise, make sure things are TURNED ON
        isDaytime = true;
        if (powerSave) {
          powerSave = false;
          isDaytime = true;
          if (EEPROM.read(eePowerSave)) { EEPROM.update(eePowerSave, false); }
        
          //if powerSave was set, that means we're transitioning to daytime now.
          //enableWifi();
          //enableEthernet();

        }

        //Really only need to enable it once. The constant enabling was causing problems.
        //enableWifi();
        //enableEthernet();

      } // End of night/day figuring out (for power save)

     /* * * * * * * * * * * * * * * * * * * * * * * * *
      *  S O L A R   P A N E L S
      *  S O L A R   P A N E L S
      *  B A T T E R Y   P R O T E C T I O N
      *  B A T T E R Y   P R O T E C T I O N
      * * * * * * * * * * * * * * * * * * * * * * * * */

      //If the charge rate is too high, cut it off. Unless we just resumed.. then let it soak up a little sun first.
      if ((ina219b_ma > 1800) and ( (resumeSolarStartTime + resumeSolarMinutes * 60) <= now() )) {

        // Charging too fast. Poor man's slowdown: turn off the solar panel for a bit. 8-o
        Serial.println();
        Serial.print(getTimeWithZeros());
        Serial.print(F(": Pausing Solar Panels because charge rate "));
        Serial.print(ina219b_ma, 0);
        Serial.println(F(" was > 1800mA."));
        pauseSolar = true;
        pauseSolarChargeCurrent = ina219b_ma;
        pauseSolarStartTime = now();
        disableSolar();

      } else {

        // If we're currently on a pause, let's see if we should enable charging again.
        if (pauseSolar) {
          Serial.print(F(" Solar is paused, seconds left: "));
          Serial.print(pauseSolarStartTime + pauseSolarMinutes * 60);
          Serial.print(" - ");
          Serial.print(now());
          Serial.print(" = ");
          Serial.println((pauseSolarStartTime + pauseSolarMinutes * 60) - now());
          if ( (pauseSolarStartTime + pauseSolarMinutes * 60) <= now() ) {
            //It's been enough time with the Panels off. Turn them back on.
            Serial.println();
            Serial.print(getTimeWithZeros());
            Serial.println(F(": RESUMING Solar Panels, it's been long enough with them turned off"));
            pauseSolarChargeCurrent = 0;
            pauseSolar = false;
            enableSolar();
            resumeSolarStartTime = now();
          }
        }
      } // END of charging-too-fast check

 
    } // END of ONCE A MINUTE tasks


    //Calculate the weather every second, for building averages and stuff. Only print/report it every minute, typically.
    calcWeather();  // Should be called once a second to build averages and stuff.
    byte uploadStatus = 0;
    
    if (justBooted) {
      //Once the time is reporting that it's synced and it's been at least 15 secs since boot, start reporting weather.
      if ((seconds > 15) and (timeStatus() == timeSet)) justBooted = false;
    } else {
      if (lastRealMinute != minute()) { // new minute! Let's party.
        lastRealMinute = minute();
        tempWeatherString = getWeatherString();
        Serial.println(tempWeatherString);
        wxStringCache[minute() % 10] = tempWeatherString;
        ina219a_MMAloops = 0;  //Reset to zero after upload (even if not successful)

        // During the day, only send once every 5 minutes. During the night, nothing for now.
        if (isDaytime) {
          if ((minute() % 5 == 4) and (not uploadPending)) {
            //Time to turn on wifi so it's ready when we can send!
            uploadPending = true;
            enableWifi();
          }
          if (minute() % 5 == 0) {
            //Time to upload!
            uploadPending = true;
            enableEthernet();
            int i;
            msTemp = millis();
            if (minute() % 10 == 0) {
              // upload 6, 7, 8, 9, 0
              for (i = 6; i <= 10; i++) {
                if (not (wxStringCache[i % 10] == "")) uploadStatus = uploadWeather(wxStringCache[i % 10]);
                delay(10);
              }
            } else {
              // upload 1, 2, 3, 4, 5
              for (i = 1; i <= 5; i++) {
                if (not (wxStringCache[i] == "")) uploadStatus = uploadWeather(wxStringCache[i]);
                delay(10);
              }
            }
            // Done sending, hope it worked! (error handling later™) Turn off Eth & Wifi until the next 5 minute boundary.
            disableWifi();
            disableEthernet();
            uploadPending = false;
          } // End every 5th minute: if (minute() %5 == 0)
        }
        
      } // End "new minute()" (clock minute, not runtime minute)
      
      if ((second() == 25) and (minutes == 55)) {
        //refresh DHCP once an hour if we're using it. NTP/RTC second() so we don't do it same time as an upload. Runtime minutes so it's after an hour of running.
        //Ethernet.maintain();
      }
    }

   /** 
    ** Diagnostic, print the weather string to serial output periodically
    ** use getWeatherString to save memory and show exactly what gets uploaded,
    ** or printWeather() to get more diagnostics but not necessarily what's uploaded.
    **/
    //if (justBooted) Serial.println(getWeatherString());               // print every second for the first 15 secs after booting.
    //else if (seconds % 10 == 0) Serial.println(getWeatherString());   // then every 10 seconds
    if (justBooted and seconds % 3 == 0) { Serial.println(getWeatherString()); }               // print every second for the first 15 secs after booting.
    else if (0) { // print the seconds on serial
      Serial.write(8);
      if (second() > 9) {
        Serial.write(8);
      }
      Serial.print(second());
    }

    // At the end of the second, let the minute roll over. This lets us do "new minute" stuff exactly
    // once a minute, without depending on having a loop() every second in case of long Ethernet timeouts.
    // previously we checked if(second() == 0), but that's not reliable and we could miss a minute.
    digitalWrite(STAT1, LOW);    //Turn off WeatherShield's blue stat LED
    
  } // END of ONCE A SECOND loop (every 1000ms)



  // This runs every loop, which is usually 10,000's of times a second.
  if (!ethStopped) {
    // if there are incoming bytes available from the server,
    // read them and dump them to serial up to 250 bytes at a time before main loop()ing:
    for (byte b=0; b < 250; b++) {
      if (client.available()) {
        ethLastMillis = millis();
        char c = client.read();
        if (enableEthDump2Serial) Serial.print(c);
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


  //INA 219 averaging. Gets about 60-70 readings a second at time of writing using a Modified Moving Average.
  if (ina219a_MMAmillis + 12 < millis()) {

    float ina219a_polarity = 1.0;
  
    // * -1 because this one's wired backwards for convenience.
    shuntvoltage = ina219a.getShuntVoltage_mV();
    busvoltage = ina219a.getBusVoltage_V();
    ina219_MMAtemp = busvoltage + (shuntvoltage / 1000.0);
    // flip the reported polarity if needed, one of the brain boxes is wired backwards.
    if (ina219_MMAtemp < 0.0) {
      ina219_MMAtemp = ina219_MMAtemp * -1.0;
      ina219a_polarity = -1.0;
    }

    ina219a_MMAvoltSum -= ina219a_MMAvoltAvg;
    ina219a_MMAvoltSum += ina219_MMAtemp;
    ina219a_MMAvoltAvg  = ina219a_MMAvoltSum / ina219a_MMAcount;
    ina219a_volts = ina219a_MMAvoltAvg;

    ina219_MMAtemp = ina219a.getCurrent_mA() * ina219a_polarity;  
    ina219a_MMAcurrentSum -= ina219a_MMAcurrentAvg;
    ina219a_MMAcurrentSum += ina219_MMAtemp;
    ina219a_MMAcurrentAvg  = ina219a_MMAcurrentSum / ina219a_MMAcount;
    ina219a_ma = ina219a_MMAcurrentAvg * 2.0; // * 2.0 because a resistor was added.

    ina219a_MMAloops++;

    //Battery's INA219. Battery absorbs most of the PWM but amperage still fluctuates so dampen this heavily too.

    shuntvoltage = ina219b.getShuntVoltage_mV();
    busvoltage = ina219b.getBusVoltage_V();
    ina219_MMAtemp = busvoltage + (shuntvoltage / 1000.0);

    ina219b_MMAvoltSum -= ina219b_MMAvoltAvg;
    ina219b_MMAvoltSum += ina219_MMAtemp;
    ina219b_MMAvoltAvg  = ina219b_MMAvoltSum / ina219b_MMAcount;
    ina219b_volts = ina219b_MMAvoltAvg;

    ina219_MMAtemp = ina219b.getCurrent_mA();  
    ina219b_MMAcurrentSum -= ina219b_MMAcurrentAvg;
    ina219b_MMAcurrentSum += ina219_MMAtemp;
    ina219b_MMAcurrentAvg  = ina219b_MMAcurrentSum / ina219b_MMAcount;
    ina219b_ma = ina219b_MMAcurrentAvg * 2.0; // double because a resistor was added

  }


  loopCounter++;
}// END OF LOOP()


byte uploadWeather(String WeatherString)
{
  //String tempWeatherString = getWeatherString();
  String WeatherString2;
  WeatherString2 = WeatherString;
  WeatherString2 += String(charComma);
  WeatherString2 += getTimeWithZeros();
  WeatherString2 += String(charComma);
  WeatherString2 += String(millis() - msTemp);
  char charPut[250];
  WeatherString2.toCharArray(charPut, 230);

  //Save to SD, even if we don't succeed uploading
  char fileName[13];
  String strTemp = getDateWithZerosNoSeparator() + ".dat";
  strTemp.toCharArray(fileName, 13);
  //sdLogData(fileName, charPut);
  
  if (!wifiEnabled) {
    Serial.println("UploadWeather() called, but NO DATA SENT because of Power Save mode.");
    if (wifiStartTime) { Serial.print("millis() - Wifi (/1000) Seconds until wifi is started: "); Serial.println((millis() - wifiStartTime) / 1000.0, 2); }
    
    return 50;
  }
  
  // Connect to CSS website, do a PUT with weather values. Should be called once for every minute of weather data.
  logSome(F("  uploadWeather called, building string. Bytes free: "));
  logSome(freeRam());
  logSome(". ina219a readings this minute: ");
  logOneLine(ina219a_MMAloops);
  byte uploadStatus = 90; //90 = haven't tried stopping the client yet.
  String strPut;

  //ShowSockStatus();   //DEBUG: print IP Socket status on serial.

  // Preemptively close any open connections, to keep sockets available.
  client.stop();
  while (client.available()) { //read return from socket
    char c = client.read();
    if (enableEthDump2Serial) Serial.write(c);
  }

  uploadStatus = 100; //100 = stopped client, but haven't tried connecting.

  strPut = makeUploadWeatherPut(WeatherString2);

  //Serial.print(F(" before strPut, after strPut: "));
  //Serial.println(freeRam());

//  for (int i = 0; i < 200; i++) {
//    charPut[i] = 'x';
//  }
  charPut[199] = '\0';
  int strPutLength = strPut.length() + 1;
  //Serial.print("strPut len: ");
  //Serial.println(strPutLength);
  if (strPutLength > 248) strPutLength = 248;
  strPut.toCharArray(charPut, strPutLength);

  client.setTimeout(600);
  int clientConnectStatus;
  clientConnectStatus = client.connect(CSSserver, 80);
  if (clientConnectStatus) {
    logSome(F("Ether client connected for uploadWeather. Mem: "));
    logSome(freeRam());
    logSome(", connect status: ");
    logOneLine(clientConnectStatus);
    ethStopped = false;
    
    // Make an HTTP request:
    if (enableEthDump2Serial) { Serial.write(charPut, strPutLength); }
    client.write(charPut, strPutLength); //Better chance of a single packet by using a char[].
    ethLastMillis = millis();
    delay(15);

    while (client.available()) {
      ethLastMillis = millis();
      char c = client.read();
      if (enableEthDump2Serial) Serial.print(c);
    }
    //client.stop();
    //ethStopped = true;
    delay(15);
    
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
  byte wxMinute = minute();
  wxCache_lastSaved = wxMinute;

  //Must read temperature first to get calibration for humidity and pressure.
  float temperature2temp = bme280b.readTempC();
  float humidity2temp = bme280b.readFloatHumidity();
  float pres1temp = bme280b.readFloatPressure() / 100.0;


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
  if (windSpeedAvg < 9.95) weatherString += String('0');
  weatherString += String(windSpeedAvg, 1);
  put_windspeed(wxMinute, windSpeedAvg);

  // 4: wind speed, mph, 5 minute max (gust)
  weatherString += String(charComma);
  if (windgustmph_5m < 9.5) weatherString += String('0');
  weatherString += String(windgustmph_5m, 0);
  put_windgust(wxMinute, windgustmph_5m);

  // 5: wind direction, 1 minute average
  weatherString += String(charComma);
  if ((winddir < 10 ) and (winddir >= 0)) weatherString += String("0"); //pad with zeros to keep formatting nicer
  if ((winddir < 100) and (winddir >= 0)) weatherString += String("0"); //pad with zeros to keep formatting nicer
  weatherString += String(winddir);
  put_winddir(wxMinute, winddir);

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


  // 8: Barometric pressure, hPa, outside, instant from bme280a (280b for now, since 280a doesn't exist yet)
  weatherString += String(charComma);
  weatherString += String(pres1temp, 2);
  put_pres1(wxMinute, pres1temp);
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

  // 10: Location string ("M" for Marshall, "L" for Lance, "D" for DJ)
  weatherString += String(charComma);
  weatherString += String(wxOwner);

  // 11: Version string.
  weatherString += String(charComma);
  weatherString += String(wxVersion);

  // 12: temperature in the enclosure or 2nd sensor if we get one. In Celcius for Jimmy.
  // Removed because the RTC temp is so much slower and less precise than the BME temp.
//  weatherString += String(charComma);
//  if (tempc) {
//    weatherString += String(tempc / 4.0, 1);
//  } else {
//    weatherString += "0";
//  }

  // 13 (was 12b): temperature, C, inside BB from BME280b, instant
  weatherString += String(charComma);
  weatherString += String(temperature2temp, 2);
  put_temp2c(wxMinute, temperature2temp);

  // 14 (was 12c): humidity, %, inside BB bme280b, instant (for checking dewpoint eventually)
  weatherString += String(charComma);
  weatherString += String(humidity2temp, 0);
  put_humid2(wxMinute, humidity2temp);

  // 15: Current on ina219 sensor A (Solar Panel)
  weatherString += String(charComma);
  if (ina219a_ma < 0) {
    //negative numbers. There's a better way using dtostrf(), but that pads with spaces not zeros right? Can't have spaces.
    weatherString += String("-");
    if (ina219a_ma > -9.5)  weatherString += "0";
    if (ina219a_ma > -99.5) weatherString += "0";
    weatherString += String(ina219a_ma * -1, 0);
  } else {
    //positive numbers
    if (ina219a_ma < 999.5) weatherString += "0";
    if (ina219a_ma < 99.5)  weatherString += "0";
    if (ina219a_ma < 9.5)   weatherString += "0";
    weatherString += String(ina219a_ma, 0);
  }

  // 16: Voltage on ina219 sensor A (Solar Panel)
  weatherString += String(charComma);
  weatherString += String(ina219a_volts, 1);


  // 17: Current on ina219 sensor B (Battery)
  weatherString += String(charComma);
  if (ina219b_ma < 0) {
    //negative numbers. There's a better way using dtostrf(), but that pads with spaces not zeros right? Can't have spaces.
    weatherString += String("-");
    if (ina219b_ma > -9.5)  weatherString += "0";
    if (ina219b_ma > -99.5) weatherString += "0";
    weatherString += String(ina219b_ma * -1, 0);
  } else {
    //positive numbers
    if (ina219b_ma < 999.5) weatherString += "0";
    if (ina219b_ma < 99.5)  weatherString += "0";
    if (ina219b_ma < 9.5)   weatherString += "0";
    weatherString += String(ina219b_ma, 0);
  }
  put_aBatt(wxMinute, ina219b_ma);

  // 18: Voltage on ina219 sensor B (Battery)
  weatherString += String(charComma);
  weatherString += String(ina219b_volts, 2);
  put_vBatt(wxMinute, ina219b_volts);
  //weatherString += String("v");
  //weatherString += String(batt_lvl, 2);

  // 19: run time in H:MM:SS
  weatherString += String(charComma);
  //weatherString += String(days);
  //weatherString += String(".");
  if (wxOwner == "L") { //Report the hours if this is Lance's. On Marshall there's never more than an hour.
    if ((hours + days * 24) < 10) weatherString += String('0');
    weatherString += String(hours + (days * 24));
    weatherString += String(":");
  } else {
    if (minutes < 100) weatherString += String('0');
  }
  if (minutes <  10) weatherString += String('0');
  weatherString += String(minutes);
  weatherString += String(":");
  if (seconds < 10) weatherString += String('0');
  weatherString += String(seconds);

  // 18: print free memory? Interesting...
//    weatherString += String(charComma);
//    weatherString += String(freeRam());

/*  // 20: print raw wind direction ADC reading, to see why 270 degree sometimes comes back as "invalid"
  if (true) {
    weatherString += String(charComma);
    weatherString += String(winddirRaw);
  } */
  if (true) {
    weatherString += String(charComma);
    if (strWindDir.length() < 3) weatherString += String("_");
    if (strWindDir.length() < 2) weatherString += String("_");
    weatherString += strWindDir;
  }

  // 21+: Assorted info and error values

  // add socket status as 8 hex chars
  if (wifiEnabled) {
    bool reportSockets = false;
    for (int i = 0; i < MAX_SOCK_NUM; i++) {
      if ((ethSockStatus[i] > 0) and (ethSockStatus[i] != 0x14)) reportSockets = true;  // 0x14 == listen. We know one is listening always.
    }
    if (reportSockets) {
      weatherString += String(charComma);
      for (int i = 0; i < MAX_SOCK_NUM; i++) {
        if (ethSockStatus[i] < 17) weatherString += String("0");
        weatherString += String(ethSockStatus[i], 16);
      }
    }
  } // if (wifiEnabled)

  if (pauseSolarChargeCurrent) {
    weatherString += String(charComma);
    weatherString += String("S-");
    weatherString += String(pauseSolarChargeCurrent, 0);
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

  // Tack on a ,R if we've rebooted to make it easier to spot them
  if(justRestarted) {
    weatherString += ",R";
  }

  weatherString.replace(" ", "");
  return weatherString;
}

