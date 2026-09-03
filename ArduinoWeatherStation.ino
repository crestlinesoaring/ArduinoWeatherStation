// SOFTWARE VERSION
#define VERSION_ID "50TAV"        // tav 24.Aug.2026, added serial ultrasonic Anemometer, add bench_mode flag
#define VERSION_DATE "2026/08/24" // tav

// HARDWARE SIMULATION SETTINGS:
 #define ENABLE_HARDWARE_SIMULATION // DEBUG: To operate Arduino standalone or only with individual parts of the the entire station, hardware can be simulated. Uncomment this flag to do so. The components to simulate can be chosen below.
#ifdef ENABLE_HARDWARE_SIMULATION
  // The following flags are relevant only if ENABLE_HARDWARE_SIMULATION is defined. 
  // They control which hardware components are simulated and define the simulated sensor output values. 
  // Example: if "#define SIMULATE_WIND_SPEED 10.0" is not commented out, the wind speed sensor read routine is ignored and the wind speed will be set to a fixed simulated value of 10.0 mph instead.
  // Do not change the values unless you really know what you are doing!
//   #define SIMULATE_RTC 1784354913 //must use UTC time, simulates the presence of an RTC at startup, assuming the specified time (Unix timestamp). 1784354913 is for Saturday, July 18, 2026 at 6:08:33 AM. Time is then running using Arduinos internal timekeeping.
//   #define SIMULATE_WIND_SPEED 10.0 // Sets the currentSpeed variable. Default is 10.0 mph.
//   #define SIMULATE_WIND_DIRECTION 920 // Sets the local adc variable in get_wind_direction() which is in ADC counts. Default is 920 which corresponds to North.
//   #define SIMULATE_INA219A_SOLAR_VOLTS 15.0 // Sets ina219a_solar_volts variable. Default value is 15.0 V, which simulates ok sun on solar panel in terms of voltage.
 //  #define SIMULATE_INA219A_SOLAR_MA 50.0 // Sets ina219a_solar_ma variable. Default value is 50.0 mA, which simulates ok sun on solar panel in terms of current.
 //  #define SIMULATE_INA219B_BATTERY_VOLTS 12.9 // Sets ina219b_battery_volts variable. Default is 12.9 V, which simulates an ok charged battery. Allows for manual U/X power control
//   #define SIMULATE_INA219B_BATTERY_MA 50.0 // Sets ina219b_battery_ma variable. Default is 50.0 mA, which simulates 50mA battery charge/discharge
#endif


// Pre-installed libraries coming with the Arduino IDE. Work out of the box, no action required.
#include <avr/wdt.h>   // WatchDog Timer. If I hit an endless loop, reset.
#include <avr/sleep.h> // to put Arduino to sleep
#include <avr/power.h> // to put ADC etc to sleep
#include <EEPROM.h>    // write to built-in Arduino EEPROM
#include <Wire.h>      // I2C library
#include <Math.h>      // Need cos() for calculating sunrise & sunset
#include <SPI.h>       // Serial peripherial interface, for cimmunication with Ethernet board
#include <Ethernet.h>  // Ethernet board library
#include <EthernetUdp.h>
#include <utility/W5100.h>

// Third-party libraries from ./libraries (do not use Arduino sketchbook / Library Manager copies).
#include <Time.h>            // Time 1.5 (Paul Stoffregen / Michael Margolis). TimeLib.h is in the same library.
#include <TimeLib.h>
#include <DS3232RTC.h>       // DS3232RTC 1.0 (Jack Christensen, Mar 2013). Folder: libraries/DS323RTC. Provides global RTC.
#include <SdFat.h>           // SdFat 1.0.14 (Bill Greiman). Not the Adafruit SdFat fork.
#include <SparkFunBME280.h>  // SparkFun BME280 1.1.0 (uses I2C_MODE, not kSfeI2CMode from 2.x).
#include <Adafruit_INA219_5A.h>  // Adafruit INA219_5A 1.0.0 (crestlinesoaring fork). Customized for 5 A.

// Other header files, included in the sketch-folder. Work out of the box, no action required.
#include "pins.h"      // Header file for hardware dependent variables (must precede Marshall.h for BENCH_MODE)
#include "Marshall.h"  // Site-specific parameters that cannot currently be published


// OTHER DEBUGGING SETTINGS:
// #define TELNET_AT_STARTUP          // DEBUG: Uncomment to force Arduino into Telnet client loop at beginning of loop() function. Attention: standard sensor reading loop is disabled then! Same can be achieved with PIN_TELNET_AT_STARTUP (see pin.h)

const String wxVersion = VERSION_ID;
const bool   enableEthDump2Serial = false;  // Set to false to suppress spitting Ethernet output to serial. Sometimes unprintable characters mess up the terminal.
const String startupMessage = "UM Weather Station (ver" VERSION_ID VERSION_DATE ")";
const byte wifiStartupDelay = 50; // Seconds to wait for Ubiquity Wifi startup
const int EthStartupDelay = 5000; // Milliseconds to wait for Ethernet Shield to establish connection before continuing without sending. Used by enableEthernet() in wxTimeNet. Should be larger than 5 sec
int minutesBeforeSunrise = 70;              // Minutes before sunrise to wake and start sending data. Should consider additional time because reboot happens every hour only -> might miss the sunrise.
int minutesAfterSunset = 30;                // Minutes after sunset to stay awake before sleep().
const unsigned int waitTimeIncomingClient = 8; // This variable sets the time the Telnet loop waits for input. Minimum is 1. Default 8. Maximum is 3600.
float battery_ma_offset = 30.0; // INA219 current measurements sometimes show an offset that needs correction. Battery_ma_offset [mA] will be added to the measured signal.

// Critically low voltage for battery. Depends on battery type (defined above). AGM: 13V~max 11.8V~30%, Lifepo4: 14.9~max 13.00V~30%.
// Below this voltage, weather station will go to sleep.
#if BATTERY_TYPE == 'F'
  float battery_critical_voltage = 13.0; // LiFePo
#elif BATTERY_TYPE == 'A' 
  float battery_critical_voltage = 11.8; // AGM
#endif



//#define logOneLine( line) logFile.println(line); Serial.println(line);
//#define logOneLine2( line, base) logFile.println(line, base); Serial.println(line,base);
//#define logSome( line) logFile.print(line); Serial.print(line);
#define logOneLine( line) Serial.println(line);
#define logOneLine2( line, base) Serial.println(line,base);
#define logSome( line) Serial.print(line);


Adafruit_INA219_5A ina219a_solar(ina219a_solar_HWaddr);     // First  ina219 sensor: A == Solar Panel
Adafruit_INA219_5A ina219b_battery(ina219b_battery_HWaddr);     // Second ina219 sensor: B == Battery
BME280 bme280a;                                 // First  bme280 sensor: A == inside the mostly-sealed Brain Box
BME280 bme280b;                                 // Second bme280 sensor: B == outside (someday we'll add this)
// RTC is provided by libraries/DS323RTC (extern DS3232RTC RTC)


//-=-=-=-=-=-=-=-=-=-= EEPROM MAP of used addresses, MEGA 2560 has 4KB (4096) bytes-=-=-=-=-=-=-=-=-=-=-=-
// Once in a while (a year?) the offset can be moved to beyond used area to avoid problems with worn out cells.
// EEPROM cells have a write life of 100,000 writes. Once an hour, 24 hours: would last 10 years. Once ea 10 min, 14h a day: 3yrs.
// Once ea minute, 12h a day: gone in 6 months. Keep writes to less than 25 a day, for each cell.
// Athena + spare takes EEPROM space from byte 0 until byte 74 -> please go beyond that 
/*#define NETEEPROM_START 0
#define NETEEPROM_MAJVER NETEEPROM_START
#define NETEEPROM_MINVER (NETEEPROM_START + 1)
#define NETEEPROM_IMG_STAT (NETEEPROM_START + 2)
#define NETEEPROM_SIG_1 (NETEEPROM_START + 3)
#define NETEEPROM_SIG_2 (NETEEPROM_START + 4)
#define NETEEPROM_DATA (NETEEPROM_START + 5) // used by bootloader
#define NETEEPROM_GW (NETEEPROM_START + 5)
#define NETEEPROM_SN (NETEEPROM_START + 9)
#define NETEEPROM_MAC (NETEEPROM_START + 13)
#define NETEEPROM_IP (NETEEPROM_START + 19)
#define NETEEPROM_SIG_3 (NETEEPROM_START + 23)
#define NETEEPROM_PORT (NETEEPROM_START + 24)
#define NETEEPROM_SIG_4 (NETEEPROM_START + 26)
#define NETEEPROM_PASS (NETEEPROM_START + 27)
#define NETEEPROM_TFTP_MODE_RESERVED (NETEEPROM_START + 63)
#define NETEEPROM_BOOT_DELAY_RESERVED (NETEEPROM_START + 64)
#define NETEEPROM_ATHENA_VER_MAJOR (NETEEPROM_START + 65)
#define NETEEPROM_ATHENA_VER_MINOR (NETEEPROM_START + 66)
#define NETEEPROM_ATHENA_VER_PATCH (NETEEPROM_START + 67)
#define NETEEPROM_ETHERNET_CS_PIN (NETEEPROM_START + 68) // This is set using the Arduino pin number (SS/53)
#define NETEEPROM_ETHERNET_RESET_PIN (NETEEPROM_START + 69) //This is set using the Arduino pin number (PIN_ETH_RESET/6)
#define NETEEPROM_END (NETEEPROM_START + 70)
#define NETEEPROM_OFFSET NETEEPROM_END
end of Athena EEPROM partitioning*/
// const int eeShutDown              = 75;  // Not used anymore  
const int eeWatchdog              = 76;  // Watchdog flag
const int eeWatchdogTime          = 77;  // 77 to 80 = four bytes, timestamps when WD happened
const int eeKeepUbiOn             = 81;  // Ubiquiti stay-on flag
// const int eeTransmitInterval      = 82;  // (seems not implemented)Transmit interval
// const int eeBootCounter           = 90;  // 90 to 91 - two bytes, suspended because it was writing to eeprom too often.  
const int eeWatchdogCounter       = 92;  // 92 to 93 - two bytes, watchdog counter
const int eeNightPBootCounter     = 94;  // new since V43, Nightly PBoot Counter 
const int eeTimeZone              = 95;  // new since V43, saves WX's TimeZone
const int eeCamStatus             = 96;  // Byte camera control (on/off, etc)
const int eeMinutesBeforeSunrise  = 100; // Char, from -120 minutes to +120 minutes
const int eeMinutesAfterSunset    = 101; // Char, from -120 minutes to +120 minutes
const int eeVoltsLowestSeen       = 102; // Byte, 0 to 254
const int eeVoltsLowestDay        = 103; // Byte, day of month

unsigned int eeUIntTemp = 0;      // Not a memory location, just an int so we can easily write  ints to eeprom.
byte eeByteTemp = 0;              // Not a memory location, just a byte so we can easily write bytes to eeprom.
char eeCharTemp = 0;              // Not a memory location, just a char so we can easily write char (signed, -128 to 127) to eeprom.

struct structCamStatus {
  bool SouthDesireOn : 1;
  bool NorthDesireOn : 1;
  bool BrainDesireOn : 1;
  bool badWeather : 1;
  byte padding    : 4;
};

structCamStatus camStatus;


/* DS3232 Register Addresses
   RTC_SECONDS   0x00
   RTC_MINUTES   0x01
   RTC_HOURS     0x02
   RTC_DAY       0x03
   RTC_DATE      0x04
   RTC_MONTH     0x05
   RTC_YEAR      0x06
   ALM1_SECONDS  0x07
   ALM1_MINUTES  0x08
   ALM1_HOURS    0x09
   ALM1_DAYDATE  0x0A
   ALM2_MINUTES  0x0B  //Stolen for windspeed
   ALM2_HOURS    0x0C  //Stolen for struct RTCmem
   ALM2_DAYDATE  0x0D  //Stolen for struct RTCmem
   RTC_CONTROL   0x0E
   RTC_STATUS    0x0F
   RTC_AGING     0x10
   RTC_TEMP_MSB  0x11
   RTC_TEMP_LSB  0x12
 */

// Store windspeed in the RTC's NVRAM every minute so we can report sensible windspeed immediately after a reboot.
// This would burn up eeprom eventually, so we use the RTC's very very limited nvram.
// Overwriting the ALARM2 minutes location (0x0B) since we don't use ALARM2.
const byte rtcWindSpeed = 0x0B;

//bit cheat-sheet: 4=16, 5=32, 6=64, 7=128, 10=1024, 12=4096
//(ab)using ALARM2 (0x0B-0x0D), we get 24 bits of NVRAM. NOT USED YET, just a framework.
struct RTCmem {
  byte         windSpeed       :  4;  // multiply by 2, stores up to 32
  unsigned int batt_mAh        : 11;  // multiply by 3, stores up to 6,144 mAh discharge; zero = full charge.
  unsigned int batt_lastminute :  9;  // multiply by 3, last minute battery discharge was updated, so we can catch-up on sleep expenditures by estimating usage.
};

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

//Global Variables
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
unsigned long lastSecond;   //The millis counter to see when a second rolls by
unsigned long loopCounter;  //see how often we loop
unsigned long loopDelta;    //see how many loops since the last print
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
int minutesToday;           //Updated each minute to current time. In minutes.
byte telnetSeconds = 0;     //Seconds spent in a telnet session.
byte sunriseDay = 0;        //Day we last calculated sunrise/sunset for. If it's not today, calc again.
byte lastRealMinute;        //Keep track of when it's a new minute() (Real time, not runtime). Used to check for second() == 0, but that's not reliable.
bool justBooted = true;     //Some stuff settles after the first minute, so let's keep track of that.
bool justRestarted = true;  //Print an R at the end of the first upload attempt to make it easy to see a reboot.
bool ethEnabled = false;    //Set once Eth is enabled because enabling incurs a 30 second pause that we don't want to repeat.
bool wifiEnabled = false;   //Set once wifi is enabled so we don't transmit when it's not on.
bool keepUbiquitiOn = false;    // Used for testing, when we need the wifi to stay powererd on all day.
bool pauseSolar = false;    //We need to charge pausing when it gets hot or if charging too fast. It == battery, box, outside, etc...
byte pauseSolarMinutes = 2; //How long to leave solar off when we turn it off.
byte resumeSolarMinutes = 3;//How long to leave solar ON even if charge rate is high.
float pauseSolarChargeCurrent;  //Store the battery charging rate that resulted in a solar panel "pause" so we can report it.
unsigned long wifiStartTime = 0;   // Ubiquiti M5 takes ~64 seconds to start, need to keep track of when it started.
time_t pauseSolarStartTime; //Keep track of when we paused the solar panel so we can leave it off for a set time.
time_t resumeSolarStartTime;//Similarly, what time we resumed so we don't cut it off too fast.
time_t uploadPending = 0;   //Set it to the time when a pending upload starts. Don't shut off wifi if one is pending. At least not for 2 or 3 minutes or something.
time_t reportWatchdog = 0;  //Do we need to report a watchdog reset?
time_t recentTime = 0;      //Set the current time periodically so we can use it in the Watchdog Interrupt
time_t lastCrashTime = 0;
time_t lastUploadTime = 0;  // Keep track of the last (hopefully successful?) upload, so we know what still needs to be uploaded.
time_t ntp_time_temp;            // To store the NTP time locally for processing and error handling on some ocassions.
time_t rtc_time_temp;
bool rtc_got_update_from_ntp = false; //If RTC is available, it gets updated from NTP only once (during first data upload or until it works). This variable stores the status.
const char charComma = ',';       //Save memory with Serial.print(charComma) instead of Serial.print(",") all over.
//const char compile_date[] = __DATE__ " " __TIME__;
bool telnet_at_startup = false;
bool rtc_available = true;
const int version_year = atoi(strtok(VERSION_DATE,'/')); 

// Local variables used during shut down checks:
bool shut_down_flag = false;     // Temporarily used flag to check shut down criteria. Do some stuff different.
bool battery_critical = false;
bool night_time = false;

long lastWindCheck = 0;
int minuteWindClicks = 0;
volatile long lastWindIRQ = 0; // jjj 22b
volatile byte windClicks = 0;
// jjj 22a volatile byte pin18Clicks = 0;
// jjj 22a volatile byte pin19Clicks = 0;

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
// jjj 22a volatile float rainHour[60];        //60 floating numbers to keep track of 60 minutes of rain

//These are all the weather values that wunderground expects:
int winddir = 0;              // [0-360 instantaneous wind direction]
unsigned int winddirRaw = 0;  // Keep the raw ADC reading for troubleshooting
float windspeedmph = 0;       // [mph instantaneous wind speed]
float windgustmph = 0;        // [mph current wind gust, using software specific time period]
int   windgustdir = 0;        // [0-360 using software specific time period]
int   winddir_avg2m = 0;      // [0-360 2 minute average wind direction]
float windgustmph_10m = 0;    // [mph past 10 minutes wind gust mph ]
float windgustmph_5m = 0;     // [mph past 5 minutes wind gust]
float windmax_1m = 0;
float windmin_1m = 0;
int   windgustdir_10m = 0;    // [0-360 past 10 minutes wind gust direction]
int   windgustdir_5m = 0;     // 0-360 past 5 minutes wind gust direction
String strWindDir = "ERR";    // N, NNE, NE, ENE, E, ESE, SE, SSE, S, SSW, SW, WSW, W, WNW, NW, NNW

float humidityOutside = 0.0; // [%]
float humidityInside = 0.0;
float tempf = 0; // [temperature F]
// jjj 22a float rainin = 0; // [rain inches over the past hour)] -- the accumulated rainfall in the past 60 min
// jjj 22a volatile float dailyrainin = 0; // [rain inches so far today in local time]
float pressure = 0;
float oldPressure = 0;
float pres5min[5];
//float dewptf; // [dewpoint F] - It's hard to calculate dewpoint locally, do this in the agent

float batt_lvl = 11.8;     // [analog value from 0 to 1023]
float light_lvl = 455;     // [analog value from 0 to 1023]

float battDrainmA = 0;      // Cumulative sun of minutely better current. Used to track short term battery drain, so we can shut things off in case of clouds etc.
int   battDrainMinutes = 0; // Short term tracking of number of subsequent minutes of battery drain. 

//INA 219 volt & current sensor. MMA means Modified Moving Average. PWM charging requires some smoothing.
const int ina219a_solar_MMAcount = 512;
float ina219a_solar_volts;
float ina219a_solar_ma;
float ina219a_solar_MMAcurrentSum;
float ina219a_solar_MMAcurrentAvg;
float ina219a_solar_MMAvoltSum = 14.0*ina219a_solar_MMAcount ;  // Preload to 14.0 volts so the moving average doesn't take so long
float ina219a_solar_MMAvoltAvg;


const int ina219b_battery_MMAcount = 512;
float ina219b_battery_volts;
float ina219b_battery_ma;
float ina219b_battery_MMAcurrentSum;
float ina219b_battery_MMAcurrentAvg;
float ina219b_battery_MMAvoltSum = 14.0*ina219b_battery_MMAcount;  // Preload to 14.0 volts so the moving average doesn't take so long
float ina219b_battery_MMAvoltAvg;


float shuntvoltage = 0;
float busvoltage = 0;
float current_mA = 0;
float loadvoltage = 0;
float ina219_MMAtemp;
float voltsLowestSeen = 20.0;
unsigned int ina219a_solar_MMAmillis = 0;
unsigned int ina219a_solar_MMAloops = 0;

// volatiles are subject to modification by IRQs
// jjj 22a volatile unsigned long raintime, rainlast, raininterval, rain;


//****************************
//***  Data Storage in RAM ***
//****************************

// Structure to hold essential data for overnight storage or batched transmission during cloudy days.
// 7 bytes so far, with 2 bits to spare. (may be inaccurate)
//bit cheat-sheet: 4=16, 5=32, 6=64, 7=128, 10=1024
struct wxCache_struct {
  byte gust    : 4;    //Wind gust = gust * 2 + wind speed!!
  byte wd      : 4;    //Wind direction / 22.5 (remember to multiply)
  byte pres1   : 8;    //Pressure in hPa minus 900
  byte temp2   : 8;    //Temp in F for internal Brain Box
  byte vBatt   : 8;    //Voltage * 10 for battery
  unsigned int aBatt : 10;    //Milliamps for battery, / 4 (-500 to 3500ma)
  byte ws      : 6;    //Wind speed
  byte humidIn  : 5;    //Humidity inside / 3.23
  byte sent    : 1;    // Sent successfully? True / False.
  // 4+4+8+8+8+10+6+5+1 = 54 = 7 bytes with 2 bits to spare. 
};

time_t wxCache_time;
byte wxCache_count;
byte wxCache_lastSaved;
byte wxCache_lastSent;
byte wxSendInterval = 5;   // Send every wxSendInterval minutes.
#define WX_CACHE_MAX 60

wxCache_struct wxCache[WX_CACHE_MAX];
//2,028 used or 6,164 free without storage
//4,428 used or 3,764 free with 4 hours storage

String wxStringCache[10];
String tempWeatherString;     // Once a minute we will compile a "WeatherString", this is the string that gets uploaded.
String returnStatus;          // A global string to use for updating return statuses. This is poor form, but easier than learning pointers.


//**************************
//***  Ethernet & NTP  *****
//**************************

// Enter a MAC address for your controller below.
// Newer Ethernet shields have a MAC address printed on a sticker on the shield
// [MarshallProprietary] byte mac[] = { ??? };
// Set the local static IP address to use if the DHCP fails to assign
IPAddress ip(192, 168, IPq3, IPWX);
IPAddress dnsServer(1, 1, 1, 1);  //jjj changed from 8,8,8,8
IPAddress gateway(192, 168, IPq3, IPgw);  // Must be 254 for Marshall, set at TOP of sketch since we need to check/change often.
IPAddress subnet(255, 255, 255, 0);
EthernetClient client;          // For outgoing connections, uploading to the CSS webserver
EthernetClient incomingClient;  // For incoming connections. Initially this is just to prompt a reboot for new code upload.
EthernetServer server(23537);
EthernetUDP Udp;

// if you don't want to use DNS (and reduce your sketch size)
// use the numeric IP instead of the name for the server:
char CSSserver[] = "www.flymarshall.com"; // Web server to connect to. // jjj this should be on top 16. Apr 2020
// [MarshallProprietary]

// Some debugging and record keeping variables
unsigned long ethLastMillis = 0;
unsigned long elapsedMillis = 0;
const int ETH_TIMEOUT = 6000;
byte ethTimeouts = 0;
byte ethConnFails = 0;
int ethLastFailureCode = 0;
uint8_t ethSockStatus[MAX_SOCK_NUM];
int timeZone; // Set during setup() routine.
int timeZoneTemp;
int timeZoneDefault = -8;
const int NTP_PACKET_SIZE = 48;
byte packetBuffer[ NTP_PACKET_SIZE ];
// [MarshallProprietary]
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

/* jjj 22a 
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
*/ //jjj 22b 

void wspeedIRQ()
// Activated by the magnet in the anemometer (2 ticks per rotation), attached to input WSPEED //jjj 22b
{
    if (millis() - lastWindIRQ > 25) // Ignore switch-bounce glitches less than 10ms (142MPH max reading) after the reed switch closes. 20ms = 74mph max, 25ms = 60mph max
    {
        lastWindIRQ = millis(); //Grab the current time
        windClicks++; //There is 1.492MPH for each click per second.
    }
}

/* //jjj 22b 
void pin18IRQ()
{
pin18Clicks++;
}

void pin19IRQ()
{
pin19Clicks++;
}
*/ //jjj 22a 


// Watchdog timer fired, let's record a little and report it next bootup.
ISR(WDT_vect)
{
    // Get the last crash time. If it's too recent, we won't write a new time to avoid thrashing EEPROM too frequently.
    //EEPROM.put(eeWatchdog, 1);
    EEPROM.get(eeWatchdogTime, lastCrashTime);
    if (recentTime > lastCrashTime + 600) {
      EEPROM.put(eeWatchdog, 1);                // write a "1" to the first byte to indicate the data in second byte is valid and the ISR triggered properly
      EEPROM.put(eeWatchdogTime, recentTime);
    }

    // Increment a counter of how many times the watchdog triggers, so we have an idea of how often it happens.
    EEPROM.get(eeWatchdogCounter, eeUIntTemp);
    EEPROM.put(eeWatchdogCounter, eeUIntTemp + 1);

    // Enable interrupts, send information to Serial port, wait for it to finish:
    /*sei();
    Serial.println("WATCHDOG TRIGGERED!");
    Serial.print(F("recentTime is ")); Serial.print(recentTime); Serial.print(F("; lastCrashTime is ")); Serial.print(lastCrashTime); Serial.print("; difference is "); Serial.println(recentTime - lastCrashTime);
    delay(1000);
    cli();*/

    while(true);                  // triggers the second watchdog timeout for a reset
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
  Serial.print(" starting at ms ");
  Serial.println(millis());

  Serial.print("Version year is: "); Serial.println(version_year);

  //Enable the WatchDog, 8 second timeout.
  //wdt_enable(WDTO_8S);
  enableWatchdog();

  // Load initial values from EEPROM, and also set sane values for eeprom on a new Arduino. EEPROM starts out all 1's (255).
  initializeEEPROM();

  pinMode(STAT1, OUTPUT); //Status LED Blue

#ifndef USE_WS85
  pinMode(WSPEED, INPUT); // input from wind meters windspeed sensor
#endif

#ifdef USE_WS85
  ws85Init();
  Serial.print(F("WS85 wind sensor on Serial1 @ "));
  Serial.print(WS85_BAUD);
  Serial.println(F(" baud"));
#endif

  pinMode(PIN_CamNorth_POWER, OUTPUT); //jj 22b set camera power control pins to output
  pinMode(PIN_CamSouth_POWER, OUTPUT); //jj 22b set camera power control pins to output
  pinMode(PIN_CamBrain_POWER, OUTPUT); //jj 22b set camera power control pins to output
  
  disableEthernet();

  //Setup INA219 voltage and current sensor(s)
  Serial.print(F("Starting INA219a Solar Volt & current sensor A: ")); usTemp = micros(); //jjjsolar
  ina219a_solar.begin();
  ina219a_solar.setCalibration_32V_5A(); //jjjk INA couldn't get the public method going (32V_5A)
  Serial.print(micros() - usTemp); Serial.println("us.");

  Serial.print(F("Starting INA219b Battery Volt & current sensor B: ")); usTemp = micros();
  ina219b_battery.begin();
  ina219b_battery.setCalibration_16V_5A();
  Serial.print(micros() - usTemp); Serial.println("us.");

  //Setup BME280 temperatue and humidity sensor A
  Serial.print(F("Starting BME280a external Temperature and Humidity sensor A, status: 0x")); usTemp = micros(); //jjjexternal 
  bme280a.settings.commInterface = I2C_MODE;
  bme280a.settings.I2CAddress = bme280a_HWaddr;
  bme280a.settings.runMode = 3;
  bme280a.settings.tempOverSample = 1;  //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
  bme280a.settings.pressOverSample = 1; //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
  bme280a.settings.humidOverSample = 1; //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
  Serial.print(bme280a.begin(), HEX);
  Serial.print(", took "); Serial.print(micros() - usTemp); Serial.println("us.");

  //Setup BME280 temperatue and humidity sensor B
  Serial.print(F("Starting BME280b internal Temperature & Humidity sensor B, status: 0x")); usTemp = micros();
  bme280b.settings.commInterface = I2C_MODE;
  bme280b.settings.I2CAddress = bme280b_HWaddr;
  bme280b.settings.runMode = 3;
  bme280b.settings.tempOverSample = 1;  //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
  bme280b.settings.pressOverSample = 1; //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
  bme280b.settings.humidOverSample = 1; //oversample rate: 1-5 equate to 1, 2, 4, 8, 16
  Serial.print(bme280b.begin(), HEX);
  Serial.print(", took "); Serial.print(micros() - usTemp); Serial.println("us.");


  seconds = 0;
  lastSecond = millis();

  // attach external interrupt pins to IRQ functions
  // jjj 22a attachInterrupt(0, rainIRQ, FALLING);
  #if !defined(SIMULATE_WIND_SPEED) && !defined(USE_WS85)
    attachInterrupt(digitalPinToInterrupt(WSPEED), wspeedIRQ, FALLING); // jjj 22a // jjj 22b 
  #endif
  //attachInterrupt(digitalPinToInterrupt(18), pin18IRQ, FALLING);
  //attachInterrupt(digitalPinToInterrupt(19), pin19IRQ, FALLING);

  // turn on interrupts
  interrupts();

  Serial.println();
  Serial.print(F("Startup done at "));
  Serial.print(millis());
  Serial.println("ms!");

  loopCounter = 0;
  loopDelta = 0;


  /**********************************************
    * EEPROM READ, see if we did a Watchdog crash!
    **********************************************/

  if (EEPROM.read(eeWatchdog)) {
    // We had a watchdog event. It contains a time_t with the time. Save it.
    // Example: return ((four << 0) & 0xFF) + ((three << 8) & 0xFFFF) + ((two << 16) & 0xFFFFFF) + ((one << 24) & 0xFFFFFFFF);

    // Copy the saved date & time into reportWatchdog so we can repeatedly use it until we have a successful upload
    EEPROM.get(eeWatchdogTime, reportWatchdog);

    // Print the date & time the watchdog was tripped.
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
      // Seems likely the eeprom is uninitialized, set it to zero
      Serial.println("Resetting eeprom reset-time to zero because it was too high");
      EEPROM.put(eeWatchdogTime, 0.0F);  // 0.0F means "float", so it takes up 4 bytes to write zero.
    }
  }

  // Request the date & time from RTC or NTP
  wdt_reset();
  
  #ifndef SIMULATE_RTC // Only if time shall not be simulated.

  timeZone = - (int)EEPROM.read(eeTimeZone);
  Serial.print("Read time zone from EEPROM: "); Serial.println(timeZone);
  if ((timeZone < -8) or (timeZone > -7)){ 
    timeZone = timeZoneDefault; //if timeZone from EEPROM is not valid, it was not initialized yet.
    Serial.print("EEPROM time zone not valid. Using default time zone = "); Serial.println(timeZone);
    EEPROM.put(eeTimeZone, (byte)(-timeZone)); // Initialize EEPROM with default value
  }
      
  rtc_time_temp = RTC.get();
  Serial.print("Time read from RTC: "); Serial.println(time_t_to_datetime_string(rtc_time_temp));

  if ((rtc_time_temp > 0) and (isTimeValid(rtc_time_temp))) {
    // If we have a working RTC, let's just use it. Every few minutes we'll check for NTP too.
    rtc_available = true;
	Serial.println(F("RTC selected as time source. Will be synchronized via NTP during during first data upload."));
    setSyncProvider([](){return RTC.get();});
    setSyncInterval(300);           // Update system time often because it actually slews pretty fast; 4 second an hour is typical.
    recentTime = now();
    Serial.println();
  } else {
    // RTC didn't work. Set NTP as the sync provider.
    rtc_available = false;
    Serial.println(F("RTC malfunction! Using NTP instead. Starting Wifi to contact NTP server..."));
    enableWifi();
    waitForWifi();
    enableEthernet();
    if(!setArduinoTimeWithNtp()){ // Only keep going when both NTP time retrievals were successful 
      Serial.println("Fatal error! No time information from any source! Weather station will be available via telnet for 10 minutes, then shut down.");
	  for (int i = 0; i < 600; i++){ // Counts to 10 mins with delay below. Checks for incoming telenet data.
        wdt_reset();
        if (checkEthIncomingData()) break;
        delay(1000);
      }
	  goToSleep(); // No hope left, kill it!
    }
    Serial.print("Time succesfully retrieved via NTP: "); Serial.print(getDateWithZeros()); Serial.print(" "); Serial.println(getTimeWithZeros());
    // Try to set the RTC in any case. Ensures that it's working after next reboot if only the time was wrong.
    RTC.set(getNtpTime());
    // Leave Wifi and Ethernet on in case we need to update the timeZone below.
  }
  // If we arrive here, Arduino time is set, and time zone can retrieved.
  timeZone = getTimeZone();
  timeZoneTemp = - (int)EEPROM.read(eeTimeZone);
  EEPROM.update(eeTimeZone, (byte)(-timeZone));
  if (timeZone != timeZoneTemp){ // If they are not equal, it's because of PST<->PDT change
    Serial.print("Change in time zone deteced, from "); Serial.print(timeZoneTemp); Serial.print(" to "); Serial.println(timeZone);
    if (rtc_available) { // Adjust RTC if available.
      rtc_time_temp = RTC.get();
      Serial.print("Adusting RTC:");
      if (timeZone == -7){
        Serial.println("Subtracting one hour.");
        rtc_time_temp -= 3600;
      }
      if (timeZone == -8) {
        Serial.println("Adding one hour.");
        rtc_time_temp += 3600;
      }
      RTC.set(rtc_time_temp);
    } else { // If we are on NTP, time is wrong because getNtpTime() uses TimeZone. Hence, repeat NTP request.
        setArduinoTimeWithNtp();
    }
  }
  #else
    setTime(SIMULATE_RTC);
    Serial.println("Simulating RTC. Simulated time is:");
    Serial.print(getDateWithZeros()); Serial.print(" "); Serial.println(getTimeWithZeros());
    Serial.println();
  #endif

  // Disable Ethernet and Wifi, just in case they were enabled for NTP.
#ifndef BENCH_MODE
  disableEthernet();
  disableWifi();
#endif

  // Now we can reliably calculate Sunrise and Sunset:
  getRiseSet();
  
  // Trigger watchdog
  /* if (EEPROM.read(eeWatchdog)==0){
	  Serial.println("Waiting to trigger watchdog...");
	  delay(10000);
  } */

#ifndef BENCH_MODE
  // Shut down weather Station immediately if it's night.
  minutesToday = hour() * 60 + minute();
  if ((minutesToday < sunrise - minutesBeforeSunrise)
  or  (minutesToday > sunset  + minutesAfterSunset)){
	Serial.print(F("It's night! We will switch to day at "));
    Serial.print((sunrise - minutesBeforeSunrise) / 60); Serial.print(":"); Serial.println((sunrise - minutesBeforeSunrise) % 60);
    goToSleep();
  }
#endif
    	

  /* Jump start the wind speed by reading the initial value from the RTC's RAM.
      This gets saved every minute. Since Windspeed is an MMA, it takes almost a minute
      to get it up to speed. WS85 provides its own speed — RTC seed holds stale pulse values. */
  
#ifdef USE_WS85
  windSpeedAvg = 0;
#elif !defined(SIMULATE_RTC)
  windSpeedAvg = RTC.readRTC(rtcWindSpeed);
#else
  windSpeedAvg = 10.0;
#endif

#ifdef BENCH_MODE
  enableEthernet();
#endif

  // Is the pin PIN_TELNET_AT_STARTUP pulled to GND?
  #ifdef TELNET_AT_STARTUP //If telenet is forced by defines, don't even check, just do it.
    telnet_at_startup = true;
    Serial.println("TELNET_AT_STARTUP flag is set.");
  #else
    pinMode(PIN_TELNET_AT_STARTUP, INPUT);
    digitalWrite(PIN_TELNET_AT_STARTUP, HIGH); // pullup
    delay(50);
    telnet_at_startup = !digitalRead(PIN_TELNET_AT_STARTUP);
    if (telnet_at_startup) Serial.println("PIN_TELNET_AT_STARTUP is set (pulled to GND).");
  #endif

  if (telnet_at_startup){
    Serial.println("Standard measurement loop will be suspended.");
    enableWifi();
    waitForWifi();
    enableEthernet();
    while (true){  //waits forever!
      Serial.println("Telnet client enabled. Waiting for incoming Telnet data...");
      while (true){ //and ever ever!
        wdt_reset();
        if (checkEthIncomingData()) break;
        delay(1000);
      }
    }
  }
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

#ifdef USE_WS85
  ws85Poll();
#endif

#ifdef BENCH_MODE
  if (ethEnabled) checkEthIncomingData();
#else
  if (wifiEnabled) checkEthIncomingData();
#endif
  
  //Do "once a second stuff", mostly weather. Also keep track of which minute it is.
  elapsedMillis = millis() - lastSecond;
  
  
  if( elapsedMillis >= 1000 ) {

    //digitalWrite(STAT1, HIGH); //Blink stat LED to show how long we're doing the "once a second" work

    // add one second for every 1000 ms that have passed
    lastSecond += 1000 * (elapsedMillis / 1000);
    seconds += (int)(elapsedMillis / 1000);
    wdt_reset(); //I think once a second is enough for our 8 second watchdog.

    //Calc the wind speed and direction every second for 120 second to get 2 minute average
#ifdef USE_WS85
    if (ws85ConsumeFrame()) {
      float currentSpeed = ws85SpeedMph();
      float currentGust = ws85GustMph();
      int currentDirection = ws85Direction();

      windspeedmph = currentSpeed;

      if (windSpeedAvg == 0) windSpeedAvg = currentSpeed;
      float windInc = currentSpeed / WIND_SPEED_AVG_SIZE;
      float windDec = windSpeedAvg / WIND_SPEED_AVG_SIZE;
      windSpeedAvg = windSpeedAvg - windDec + windInc;

      if (currentGust > windgust_10m[minutes_10m]) {
        windgust_10m[minutes_10m] = currentGust;
        windgustdirection_10m[minutes_10m] = currentDirection;
      }
      if (currentGust > windgust_5m[minutes_5m]) {
        windgust_5m[minutes_5m] = currentGust;
        windgustdirection_5m[minutes_5m] = currentDirection;
      }
      if (currentGust > windgustmph) {
        windgustmph = currentGust;
        windgustdir = currentDirection;
      }
    }
#else
    float currentSpeed;
    currentSpeed = get_wind_speed();

    windspeedmph = currentSpeed; //update global variable for windspeed when using the printWeather() function
    int currentDirection = get_wind_direction();

    //Calculate 1 min moving average wind speed instead of using an array
    if (windSpeedAvg == 0) windSpeedAvg = currentSpeed;
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
#endif

    // Wifi takes ~64 to 80 seconds to come alive, check every second to see if Wifi's ready yet.
    // Use millis() instead of now() because early on (before RTC is set up), now() is invalid.
    // wifiStartime is the time when enableWifi() was called. It's non-zero as long as WiFi starts up.
#ifndef BENCH_MODE
    if (wifiStartTime) { 
      if (not (int((millis() - wifiStartTime) / 1000) % 10)) { 
        Serial.print("Waiting for wifi to start up, it's been "); Serial.print((millis() - wifiStartTime) / 1000,10); Serial.println(" seconds.");
      }
      if ((millis() - wifiStartTime) / 1000 > wifiStartupDelay) {
        Serial.println(" Done waiting! Wifi Enabled.");
        wifiStartTime = 0;
        wifiEnabled = true;
      } 
    }
#endif

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
      // jjj 22a rainHour[minutes] = 0;
      windgust_10m[minutes_10m] = 0;
      windgust_5m[minutes_5m] = 0;      

      // From 11:50 to noon, make sure wifi is powered on, in case we need to do something.
      if (hour() == 11 and minute() >= 49) {
        enableWifi();
        enableEthernet();
      }


      /* **************************************************
      *  C A M E R A S    CAMERAS    C A M E R A S
      *  C A M E R A S    CAMERAS    C A M E R A S
      *  C A M E R A S    CAMERAS    C A M E R A S
      * *************************************************/

      // A short while after sunrise, turn ON the cameras, if charging conditions are good enough.
      if ( (minutesToday > sunrise) and (minutesToday < sunset - 120) // Subtract 120 mins in the evening, because sun disappears behind large mountains early.
       and (((ina219a_solar_ma > 500) and (ina219a_solar_volts > 14))
        or (ina219a_solar_volts > 17.5))
       and not (camStatus.badWeather)
       and (battDrainmA > -500)) {
        // If it's early enough in the day, and charging voltage is high enough, enable cameras.
        Serial.println("Daytime and power conditions allow for Camera and continuous WiFi operation.");
        keepUbiquitiOn = true;
        EEPROM.update(eeKeepUbiOn, true);
        enableWifi();
        if (humidityInside < 80) {
          // Cam North is a little wonky, crashes in high humidity. *shrug*. (April 2019)
          enableCamNorth();
        } else {
          Serial.println("Camera North not enabled due to high humidity.");
        }
        enableCamSouth();
      }


      // Keep track of minutes with battery drain; shut off cameras & full-time Ubiquiti if there isn't enough sun.
      if (ina219b_battery_ma < 0) {
        if (battDrainMinutes < 0) { battDrainMinutes = 0; }
        battDrainMinutes += 1;
        // If the battery's been draining too long (minutes) or too much (milliamp-minutes), cut the cameras.
        if (((battDrainMinutes >= 5) or (battDrainmA < -8000) or ((ina219b_battery_volts < 12.5) and (battDrainMinutes > 1)) ) ) {
          Serial.println("Disabling cameras and continuous WiFi due to excessive battery drain.");
          disableCamSouth();
          disableCamNorth();
          disableCamBrain();
          keepUbiquitiOn = false;
          EEPROM.update(eeKeepUbiOn, false);
          Serial.println("Continuous operation of Wifi will stop after next data upload.");
        }
      } else if ((ina219b_battery_ma > 50) or (ina219a_solar_volts > 16)) {
        // track positive charging moments
        if (battDrainMinutes > 0) { battDrainMinutes = 0; }
        battDrainMinutes -= 1;
      } else {
        // reset some of the countdown timers.
        battDrainMinutes = 0;
      }
      battDrainmA += ina219b_battery_ma;


      // After 6:30pm, shut off the cameras and Ubiquiti-always-on setting. Once an hour in case we want to manually turn on.
      if ( (hour() == 18)
      and ((minute() > 25) or (minute() < 30)) ) {
        keepUbiquitiOn = false;
        EEPROM.update(eeKeepUbiOn, false);
        disableCamNorth();
        disableCamSouth();
        disableCamBrain();
      }

    
#ifndef BENCH_MODE
     /* * * * * * * * * * * * * * * * * *
      *  S H U T   D O W N
      *  S H U T   D O W N
      * * * * * * * * * * * * * * * * * */
    
      Serial.println("Checking shut down criteria:");
      
      // Is it night time?
      minutesToday = hour() * 60 + minute();
      Serial.print(F("The time of day is "));Serial.print(hour()); Serial.print(":"); Serial.print(minute());
      if ((minutesToday < sunrise - minutesBeforeSunrise) // Add 40 minutes in the morning because station restarts every hour only.
      or  (minutesToday > sunset  + minutesAfterSunset)){
        shut_down_flag = true;
        Serial.print(F(", which is Night time. We will switch to daytime at "));
        Serial.print((sunrise - minutesBeforeSunrise) / 60); Serial.print(":"); Serial.println((sunrise - minutesBeforeSunrise) % 60);
      } else {
        Serial.print(F(", which is Day time. We will switch to night at "));
        Serial.print((sunset + minutesAfterSunset) / 60); Serial.print(":"); Serial.println((sunset + minutesAfterSunset) % 60);
      }
      
      // Is battery voltage critically low?
      Serial.print("Battery voltage is "); Serial.print(ina219b_battery_volts);
      if (ina219b_battery_volts < battery_critical_voltage) {
        Serial.println(", which is critically low.");
        shut_down_flag = true;
      } else {
        Serial.println(", which is okay.");
      }

      // Going to sleep if required according to criteria above:
      if (shut_down_flag) {
        goToSleep();
      }
#endif

     /* * * * * * * * * * * * * * * * * * * * * * * * *
      *  S O L A R   P A N E L S
      *  S O L A R   P A N E L S
      *  B A T T E R Y   P R O T E C T I O N
      *  B A T T E R Y   P R O T E C T I O N
      * * * * * * * * * * * * * * * * * * * * * * * * */

      //If the charge rate is too high, cut it off. Unless we just resumed.. then let it soak up a little sun first.
      if ((ina219b_battery_ma > 2500) and ( (resumeSolarStartTime + resumeSolarMinutes * 60) <= now() )) {

        // Charging too fast. Poor man's slowdown: turn off the solar panel for a bit. 8-o
        Serial.println();
        Serial.print(getTimeWithZeros());
        Serial.print(F(": Pausing Solar Panels because charge rate "));
        Serial.print(ina219b_battery_ma, 0);
        Serial.println(F(" was > 2500mA."));
        pauseSolar = true;
        pauseSolarChargeCurrent = ina219b_battery_ma;
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
#ifdef BENCH_MODE
      if (seconds > 15) {
        justBooted = false;
        justRestarted = false;
      }
#else
      if ((seconds > 15) and (timeStatus() == timeSet)) justBooted = false;
#endif
    } else {
      if (lastRealMinute != minute()) { // new minute! Let's party.
        lastRealMinute = minute();
        tempWeatherString = getWeatherString();
        Serial.println(tempWeatherString);
        wxStringCache[minute() % 10] = tempWeatherString;
        ina219a_solar_MMAloops = 0;  //Reset to zero after upload (even if not successful)

#ifndef BENCH_MODE
        // Send once every 5 minutes. During the night, nothing for now.
        if ((minute() % 5 == 4) and (not uploadPending)) {
          uploadPending = true;
          enableWifi();
        }
        if ((minute() % 5 == 0) and (millis() > 180000)) { // upload weather at every even 5 minutes and if stations runs for more than 3 minutes 
          //Time to upload!
          uploadPending = true;
          enableEthernet();
          if (ethEnabled){ //if enableEthernet() fails to establish a connection, skip everything and shut connection down until next five minutes
            msTemp = millis();
            if (minute() % 10 == 0) {
              // upload 6, 7, 8, 9, 0
              for (int i = 6; i <= 10; i++) {
                if (not (wxStringCache[i % 10] == "")) uploadStatus = uploadWeather(wxStringCache[i % 10]);
                // resetEthernet(); // jlt 2024-01. To prevent crash of socket. Takes about 3 seconds.
              }
            } else {
              // upload 1, 2, 3, 4, 5
              for (int i = 1; i <= 5; i++) {
                if (not (wxStringCache[i] == "")) uploadStatus = uploadWeather(wxStringCache[i]);
                // resetEthernet(); // jlt 2024-01. To prevent crash of socket. Takes about 3 seconds.
              }
            }
            // Done sending, hope it worked! (error handling later) Turn off Eth & Wifi until the next 5 minute boundary.
			
			if (uploadStatus==0){ // Means upload was successful
				if (reportWatchdog) {
					Serial.println(F("  Clearing watchdog EEPROM flag"));
					reportWatchdog = 0;
					EEPROM.update(eeWatchdog, 0);   //Clear the watchdog-happened bit once we have reason to believe it's been reported.
				}
				ethLastFailureCode = 0;
				justRestarted = false;     //reset this HERE so it stays "true" until a successful ethernet connection has happened.
			}

            // Update RTC from NTP Server data:
            #ifndef SIMULATE_RTC
              if (rtc_available) {
                if (!rtc_got_update_from_ntp){ // Update RTC only once, during first first data upload or until it works
                  ntp_time_temp = getNtpTime();
                  if (isTimeValid(ntp_time_temp)){ // Only update when time is valid
                    RTC.set(ntp_time_temp);
                    Serial.println("RTC update via NTP successful!");
                    rtc_got_update_from_ntp = true;
                    setSyncProvider([](){return RTC.get();}); // Update Arduino time immediately.
                  } else{
                    Serial.println("RTC update via NTP failed! Trying again during next data upload.");
                  }
                }
              } else {
                setArduinoTimeWithNtp(); // When Arduino depends on NTP, do a refersh every data upload.
              }
            #endif

            // Check for incoming connections for a few seconds. This isn't super clean, but it's easy.
            Serial.println("Waiting for incoming Telnet data...");
            for (int i = 0; i <= waitTimeIncomingClient; i++){
              checkEthIncomingData();
              wdt_reset();
              delay(1000);
            }
          } else {
            ethConnFails++; //Increment if connection was not established. If ethConnFails is non-zero, it will be built into weather string by makeWeatherString and reset to zero within uploadWeather function, if it is successful.
          }
          disableWifi(); // Continuous Wifi operation is required if cameras are running. Correspondingly, keepUbiquitiOn flag and wifiStartTime are checked within disableWifi();
          disableEthernet();
          uploadPending = false;
        } // End every 5th minute: if (minute() %5 == 0)
#else  // BENCH_MODE — upload over Ethernet every 5 minutes, no Ubiquiti wait
        if ((minute() % 5 == 0) and (millis() > 180000)) {
          if (not ethEnabled) enableEthernet();
          if (ethEnabled) {
            msTemp = millis();
            if (minute() % 10 == 0) {
              for (int i = 6; i <= 10; i++) {
                if (not (wxStringCache[i % 10] == "")) uploadStatus = uploadWeather(wxStringCache[i % 10]);
              }
            } else {
              for (int i = 1; i <= 5; i++) {
                if (not (wxStringCache[i] == "")) uploadStatus = uploadWeather(wxStringCache[i]);
              }
            }

            if (uploadStatus==0) {
              if (reportWatchdog) {
                Serial.println(F("  Clearing watchdog EEPROM flag"));
                reportWatchdog = 0;
                EEPROM.update(eeWatchdog, 0);
              }
              ethLastFailureCode = 0;
              justRestarted = false;
            }

            #ifndef SIMULATE_RTC
              if (rtc_available) {
                if (!rtc_got_update_from_ntp) {
                  ntp_time_temp = getNtpTime();
                  if (isTimeValid(ntp_time_temp)) {
                    RTC.set(ntp_time_temp);
                    Serial.println("RTC update via NTP successful!");
                    rtc_got_update_from_ntp = true;
                    setSyncProvider([](){return RTC.get();});
                  } else {
                    Serial.println("RTC update via NTP failed! Trying again during next data upload.");
                  }
                }
              } else {
                setArduinoTimeWithNtp();
              }
            #endif

            Serial.println("Waiting for incoming Telnet data...");
            for (int i = 0; i <= waitTimeIncomingClient; i++) {
              checkEthIncomingData();
              wdt_reset();
              delay(1000);
            }
          } else {
            ethConnFails++;
          }
        }
#endif
        
      } // End "new minute()" (clock minute, not runtime minute)
    }

   /** 
    ** Diagnostic, print the weather string to serial output periodically
    ** use getWeatherString to save memory and show exactly what gets uploaded,
    ** or printWeather() to get more diagnostics but not necessarily what's uploaded.
    **/
    //if (justBooted) Serial.println(getWeatherString());               // print every second for the first 15 secs after booting.
    //else if (seconds % 10 == 0) Serial.println(getWeatherString());   // then every 10 seconds
    if (justBooted and seconds % 3 == 0) Serial.println(getWeatherString());           // print every second for the first 15 secs after booting.

  } // END of ONCE A SECOND loop (every 1000ms)


  //INA 219 averaging. Gets about 60-70 readings a second at time of writing using a Modified Moving Average.
  if (ina219a_solar_MMAmillis + 12 < millis()) { //every 12 ms

    float ina219a_solar_polarity = 1.0;
  
    shuntvoltage = ina219a_solar.getShuntVoltage_mV();
    busvoltage = ina219a_solar.getBusVoltage_V();
    ina219_MMAtemp = busvoltage + (shuntvoltage / 1000.0);
    // flip the reported polarity if needed, one of the brain boxes is wired backwards.
    if (ina219_MMAtemp < 0.0) {
      ina219_MMAtemp = ina219_MMAtemp * -1.0;
      ina219a_solar_polarity = -1.0;
    }

    ina219a_solar_MMAvoltSum -= ina219a_solar_MMAvoltAvg;
    ina219a_solar_MMAvoltSum += ina219_MMAtemp;
    ina219a_solar_MMAvoltAvg  = ina219a_solar_MMAvoltSum / ina219a_solar_MMAcount;
    #ifdef SIMULATE_INA219A_SOLAR_VOLTS
    ina219a_solar_volts = SIMULATE_INA219A_SOLAR_VOLTS;    
    #else
    ina219a_solar_volts = ina219a_solar_MMAvoltAvg;
    #endif

    ina219_MMAtemp = ina219a_solar.getCurrent_mA() * ina219a_solar_polarity;  
    ina219a_solar_MMAcurrentSum -= ina219a_solar_MMAcurrentAvg;
    ina219a_solar_MMAcurrentSum += ina219_MMAtemp;
    ina219a_solar_MMAcurrentAvg  = ina219a_solar_MMAcurrentSum / ina219a_solar_MMAcount;
    #ifdef SIMULATE_INA219A_SOLAR_MA
    ina219a_solar_ma = SIMULATE_INA219A_SOLAR_MA;
    #else
    ina219a_solar_ma = ina219a_solar_MMAcurrentAvg; //jjj changed library _5
    #endif

    ina219a_solar_MMAloops++;
    //Battery's INA219. Battery absorbs most of the PWM but amperage still fluctuates so dampen this heavily too.

    shuntvoltage = ina219b_battery.getShuntVoltage_mV();
    busvoltage = ina219b_battery.getBusVoltage_V();
    ina219_MMAtemp = busvoltage + (shuntvoltage / 1000.0);

    ina219b_battery_MMAvoltSum -= ina219b_battery_MMAvoltAvg;
    ina219b_battery_MMAvoltSum += ina219_MMAtemp;
    ina219b_battery_MMAvoltAvg  = ina219b_battery_MMAvoltSum / ina219b_battery_MMAcount;
    #ifdef SIMULATE_INA219B_BATTERY_VOLTS
    ina219b_battery_volts = SIMULATE_INA219B_BATTERY_VOLTS;
    #else
    ina219b_battery_volts = ina219b_battery_MMAvoltAvg;
    #endif
    if ( (ina219b_battery_volts < voltsLowestSeen)
     and (ina219b_battery_volts > 2.0) ) {
      voltsLowestSeen = ina219b_battery_volts;
    }
    

    ina219_MMAtemp = ina219b_battery.getCurrent_mA() + battery_ma_offset;  
    ina219b_battery_MMAcurrentSum -= ina219b_battery_MMAcurrentAvg;
    ina219b_battery_MMAcurrentSum += ina219_MMAtemp;
    ina219b_battery_MMAcurrentAvg  = ina219b_battery_MMAcurrentSum / ina219b_battery_MMAcount;
    #ifdef SIMULATE_INA219B_BATTERY_MA
    ina219b_battery_ma = SIMULATE_INA219B_BATTERY_MA;
    #else
    ina219b_battery_ma = ina219b_battery_MMAcurrentAvg ; //jjjina
    #endif
  }


  loopCounter++;

}// END OF LOOP()







//*****************
// HELPER FUNCTIONS
//*****************

byte uploadWeather(String WeatherString)
{
  Serial.println("UploadWeather() called.");
  //String tempWeatherString = getWeatherString(); //jjj per lance
  String WeatherString2;
  WeatherString2 = WeatherString;
  //WeatherString2 += String(charComma);
  //WeatherString2 += getTimeWithZeros();
  //WeatherString2 += String(charComma);
  //WeatherString2 += String(millis() - msTemp);
  char charPut[250];
  WeatherString2.toCharArray(charPut, 230);

  //Save to SD, even if we don't succeed uploading
  char fileName[13];
  String strTemp = getDateWithZerosNoSeparator() + ".dat";
  strTemp.toCharArray(fileName, 13);
  //sdLogData(fileName, charPut);
  
#ifdef BENCH_MODE
  if (!ethEnabled) {
    Serial.println(F("uploadWeather() — Ethernet not ready, skipping."));
    return 50;
  }
#else
  if (!wifiEnabled) {
    Serial.println("ABORT DATA UPLOAD: WiFi is not enabled.");
    return 50;
  }
  
  if (digitalRead(PIN_UBIQUITI_POWER) == UBIQUITI_OFF){
	Serial.println("ABORT DATA UPLOAD: WiFi power pin is switched off.");
	return 50;
  }
  
  if (digitalRead(PIN_ETH_POWER) == ETH_OFF){
	Serial.println("ABORT DATA UPLOAD: Ethernet power pin is switched off.");
	return 50;
  }
#endif
  
  // Connect to CSS website, do a PUT with weather values. Should be called once for every minute of weather data.
  logSome(F("  uploadWeather called, building string. Bytes free: "));
  logSome(freeRam());
  // jjj                logSome(". ina219a_solar readings this minute: ");
  /// jjj always zero!  logOneLine(ina219a_solar_MMAloops);
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

  client.setTimeout(600); //timeout in ms
  int clientConnectStatus;
  wdt_reset();
  clientConnectStatus = client.connect(CSSserver, 80);
  wdt_reset();
  if (clientConnectStatus) {
    logSome(F("Ether client connected for uploadWeather. Mem: "));
    logSome(freeRam());
    logSome(", connect status: ");
    logOneLine(clientConnectStatus);

    // Make an HTTP request:
    if (enableEthDump2Serial) { Serial.write(charPut, strPutLength); }
    client.write(charPut, strPutLength); //Better chance of a single packet by using a char[].
    wdt_reset();
    ethLastMillis = millis();
    client.flush(); //
    delay(200); //jjjp flush

    while (client.available()) {
      wdt_reset(); // feed the watchdog while reading the response; a slow/stalled link must not trip it
      ethLastMillis = millis();
      char c = client.read();
      if (enableEthDump2Serial) Serial.print(c);
    }
    
    uploadStatus = 0;
    ethConnFails = 0;
    ethTimeouts = 0;
    
  } else {
    // if you didn't get a connection to the server:
    logSome(F("connection failed, status: "));
    logOneLine(clientConnectStatus);
    ethLastFailureCode = clientConnectStatus;
    client.stop();
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
  humidityInside = bme280b.readFloatHumidity();
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
#ifndef USE_WS85
  //Save the wind speed to RTC memory so after a reboot we can jump-start the Moving Average windspeed.
  RTC.writeRTC(rtcWindSpeed, int(windSpeedAvg + 0.5));
#endif

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
  //weatherString += String(bme280a.readTempF(), 2);

  // 7: humidity, %, outside, instant from bme280a
  weatherString += String(charComma);
  //weatherString += String(bme280a.readFloatHumidity(), 0);


  // 8: Barometric pressure, hPa, outside, instant from bme280a (280b for now, since 280a doesn't exist yet)
  weatherString += String(charComma);
  //weatherString += String(pres1temp, 2);
  put_pres1(wxMinute, pres1temp);

  // 9: Barometric pressure delta from previous reading
  weatherString += String(charComma);
  //if (pressure >= oldPressure) weatherString += String("+"); //can't have spaces in the URL, but using the + makes columns line up nicer.
  //weatherString += String((pressure - oldPressure) / 100.0, 2);
  //weatherString += "0";

  // 10: Location string ("M" for Marshall, "L" for Lance, "D" for DJ)
  weatherString += String(charComma);
  weatherString += String(wxOwner);
//  weatherString += '\r';
//jjjcrlf  weatherString += '\n'; didn't work

  // 11: Version string.
  weatherString += String(charComma);
  weatherString += String(wxVersion);

  // 12: Hardware version string
  weatherString += String(charComma);
  weatherString += String(BATTERY_TYPE);
  weatherString += String(hardwareVersion);
  
  // 13 (was 12b): temperature, C, inside BB from BME280b, instant
  weatherString += String(charComma);
  weatherString += String(temperature2temp, 2);
  put_temp2c(wxMinute, temperature2temp);

  // 14 (was 12c): humidity, %, inside BB bme280b, instant (for checking dewpoint eventually)
  weatherString += String(charComma);
  weatherString += String(humidityInside, 0);
  put_humidIn(wxMinute, humidityInside);

  // 15: Current on ina219 sensor A (Solar Panel)
  weatherString += String(charComma);
  if (ina219a_solar_ma < 0) {
    //negative numbers. There's a better way using dtostrf(), but that pads with spaces not zeros right? Can't have spaces.
    weatherString += String("-");
    if (ina219a_solar_ma > -9.5)  weatherString += "0";
    if (ina219a_solar_ma > -99.5) weatherString += "0";
    weatherString += String(ina219a_solar_ma * -1, 0);
  } else {
    //positive numbers
    if (ina219a_solar_ma < 999.5) weatherString += "0";
    if (ina219a_solar_ma < 99.5)  weatherString += "0";
    if (ina219a_solar_ma < 9.5)   weatherString += "0";
    weatherString += String(ina219a_solar_ma, 0);
  }

  // 16: Voltage on ina219 sensor A (Solar Panel)
  weatherString += String(charComma);
  weatherString += String(ina219a_solar_volts, 1);


  // 17: Current on ina219 sensor B (Battery)
  weatherString += String(charComma);
  if (ina219b_battery_ma < 0) {
    //negative numbers. There's a better way using dtostrf(), but that pads with spaces not zeros right? Can't have spaces.
    weatherString += String("-");
    if (ina219b_battery_ma > -9.5)  weatherString += "0";
    if (ina219b_battery_ma > -99.5) weatherString += "0";
    weatherString += String(ina219b_battery_ma * -1, 0);
  } else {
    //positive numbers
    if (ina219b_battery_ma < 999.5) weatherString += "0";
    if (ina219b_battery_ma < 99.5)  weatherString += "0";
    if (ina219b_battery_ma < 9.5)   weatherString += "0";
    weatherString += String(ina219b_battery_ma, 0);
  }
  put_aBatt(wxMinute, ina219b_battery_ma);

  // 18: Voltage on ina219 sensor B (Battery)
  weatherString += String(charComma);
  weatherString += String(ina219b_battery_volts, 2);
  put_vBatt(wxMinute, ina219b_battery_volts);

  // 19: run time in H:MM:SS
  weatherString += String(charComma);
  //weatherString += String(days);
  //weatherString += String(".");
  if (wxOwner == "L") { //Report the hours if this is Lance's. On Marshall there's never more than an hour.
    if ((hours + days * 24) < 10) weatherString += String('0');
    weatherString += String(hours + (days * 24));
    weatherString += String(":");
    if (minutes <  10) weatherString += String('0');
    weatherString += String(minutes);
  } else {
    //if ((hours * 60) + minutes < 100) weatherString += String('0');
    if ((hours * 60) + minutes <  10) weatherString += String('0');
    weatherString += String((hours * 60) + minutes);
  }
  weatherString += String(":");
  if (seconds < 10) weatherString += String('0');
  weatherString += String(seconds);

  // 20: OLD print raw wind direction ADC reading, to see why 270 degree sometimes comes back as "invalid"
    //weatherString += String(winddirRaw);
  // 20: print "turn on" status of Ubiquiti:U and Cameras:P=PG launch (or North), H=HG launch (or South), B=Brain Box (down). X=Bad Weather (cams don't auto-on)
  weatherString += String(charComma);
  if (keepUbiquitiOn)        { weatherString += String("U"); }
  if (camStatus.SouthDesireOn)  { weatherString += String("S"); }
  if (camStatus.NorthDesireOn)  { weatherString += String("N"); }
  if (camStatus.BrainDesireOn)  { weatherString += String("B"); }
  if (camStatus.badWeather)  { weatherString += String("X"); }
  if (telnetSeconds) {
    weatherString += String("T=");
    weatherString += String(telnetSeconds);
    telnetSeconds = 0;
  }

  // 21: print weather direction string to make it easy to read which direction the wind is blowing.
  weatherString += String(charComma);
  if (false) {
    if (strWindDir.length() < 3) weatherString += String("_");
    if (strWindDir.length() < 2) weatherString += String("_");
    weatherString += strWindDir;
  } else if (battDrainMinutes > 0) {
    weatherString += String(battDrainMinutes);
  }

  // 22:
  weatherString += String(charComma);
  weatherString += String(battDrainmA / 60.0, 1);

  // 22-24: Boot, Sleep, and Watchdog counters
  if (justRestarted) {
    //weatherString += String(charComma);  //<-- moved this up a few lines to the battDrainmA print
    // Boot counter suspended because it was writing to EEPROM too often.
    //EEPROM.get(eeBootCounter, eeUIntTemp);
    //weatherString += String(eeUIntTemp);

    weatherString += String(charComma);
    EEPROM.get(eeVoltsLowestSeen, eeByteTemp);
    weatherString += String((float)eeByteTemp / 10.0);
  
    weatherString += String(charComma);
    EEPROM.get(eeWatchdogCounter, eeUIntTemp);
    weatherString += String(eeUIntTemp);
  }

  // 22+: Assorted info and error values

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
/* // jjj 22a 
    if (rainin) {
      weatherString += ",p02-";
      weatherString += String(rainin);
    }
    if (pin18Clicks) {
      weatherString += ",p18-";
      weatherString += String(pin18Clicks);
    }
    if (pin19Clicks) {
      weatherString += ",p19-";
      weatherString += String(pin19Clicks);
    }
*/ // jjj 22a 

  }

  weatherString.replace(" ", "");
  return weatherString;
}
