// Hardware pin definitions for weather station and cameras etc. 
// for new GlueBoards GB3,GB4 and GB5, 18 March 2024

// WS85 ultrasonic anemometer on Serial1 (RX1=19, TX1=18). WS85 TX -> Mega pin 19.
#define USE_WS85
#define WS85_BAUD 115200

// Bench testing: stay awake, upload over Ethernet every 5 minutes, no Ubiquiti wait. Comment out for field deploy.
#define BENCH_MODE

void ws85Init();
void ws85Poll();
bool ws85Fresh(unsigned long maxAgeMs = 30000);
bool ws85ConsumeFrame();
float ws85SpeedMph();
float ws85GustMph();
int ws85Direction();
float ws85TempC();
float ws85RainMm();
float ws85CapVoltage();
float ws85BatVoltage();
// all connectors (relay, FET, BME etc) are compatible to old base, just the pin assignments of respected functions were changed.
// Only headers POWER (Vin, GND etc up to SPARE), PWMH (8,9 etc up to SCL), and some of XIO (Extened I/O) are needed to connect GB to Mega
// see excel sheet for details
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=


// Analog I/O Pins
/******************************************************************************* 
* ADCL Header, NOT connected from GB[Glue Board] to Mega, circuit is glued right onto Mega
*******************************************************************************/
const byte WDIR                 = A5;     // can be any anaolog pin. Circuit is glued onto Mega


// Digital I/O Pins
/******************************************************************************* 
* PWML Header, NOT connected from GB to Mega, circuits are glued right onto Mega
*******************************************************************************/
const byte WSPEED               = 3;      // Interrupt pin for windspeed. (INT5)
const byte STAT1                = 7;      // Status LED Blue on original Weather_Shield, leave for Lance
const byte PIN_ETH_RESET        = 6;      // Resets ONLY W5500 Ethernet board
const byte ETH_NORESET          = HIGH;   // (default)= Reset pin of Eth/W5500 is high
const byte ETH_RESET            = LOW;    // Low resets Eth/W5500


/******************************************************************************* 
* PWMH 10 pin Header, connected from GB to Mega
*******************************************************************************/
const byte PIN_CamBrain_POWER   = 8;      // FETQ1, 12V power to BrainBox Camera
const byte CamBrain_ON          = HIGH;   // first use INPUT_PULLUP for 2 sec to precharge capacitor, then turn BB (BrainBox) Camera on 
const byte CamBrain_OFF         = LOW;    // (default)= turn off BB Camera

const byte PIN_CamSouth_POWER   = 9;      // FETQ2, 12V power to South Camera (HG launch)
const byte CamSouth_ON          = HIGH;   // first use INPUT_PULLUP for 2 sec to precharge capacitor, then turn South Camera on
const byte CamSouth_OFF         = LOW;    // (default)= turn off South Camera

// const byte SS_CONTROL           = 10;     // IDE default for UNO's ethernet SS, PIN 53 with Mega
const byte PIN_CamNorth_POWER   = 10;     // FETQ3, 12V power to North Camera (PG launch)
const byte CamNorth_ON          = HIGH;   // first use INPUT_PULLUP for 2 sec to precharge capacitor, then turn North Camera on
const byte CamNorth_OFF         = LOW;    // (default)= turn off North Camera

const byte PIN_UBIQUITI_POWER   = 11;     // FETQ4, 12V power to Ubiquiti AP  
const byte UBIQUITI_ON          = LOW;    // (default)=turn Ubiquiti AP on 
const byte UBIQUITI_OFF         = HIGH;   // turn off Ubiquiti AP

// const byte UNUSEDPIN12         = 12      // is connected to GB and unused.
// const byte  IDE_LED            = 13;     // is connected to GB and unused.IDE default for yellow LED (try not to use this)
// for brevity, other pins from PWMH 10 pin Header 
// GND                                    // GB:GND
// AREF                                   // GB:5V
// SDA                                    // GB:I2C data
// SCL                                    // GB:I2C clock


/******************************************************************************* 
* XIO (eXtended I/O) 2x18-pin Header, only 2x3 and 2x2 pins are connected from GB to Mega
*******************************************************************************/
// 3x2 header pins
// 5V                                     // GB:5V
// 5V                                     // GB:5V
const byte PIN_SOLAR_POWER      = 22;     // Rel2, Solar panel connection 
const byte SOLAR_CONNECTED      = LOW;    // (default)= panel is connected 
const byte SOLAR_DISCONNECTED   = HIGH;   // panel is disconnected
const byte PIN_SQW              = 23;     // Interrupt pin fired each minute from RTC (SQW), for testing with new Brain3
const byte PIN_ETH_POWER        = 24;     // Ethernet power control; on=LOW, off=HIGH
const byte ETH_OFF              = HIGH;   // in order to save power, W5500 is set by hardware to 10Mbit Full-duplex, Auto-negotiation disabled (OPMD 0,0,1)
const byte ETH_ON               = LOW;    // (default)= Power to Eth is connected
// const byte UNUSEDPIN12         = 25      // is connected to GB and unused.


// 2+4+2 header, the middle 4 pins are not connected to GB, but connected to W5500 directly
// 2 header pins
const byte PIN_TELNET_AT_STARTUP= 49;     // Pull this pin to ground during startup to force Arduino into Telnet client loop at beginning of loop() function. Attention: standard sensor reading loop is disabled then! 
// const byte UNUSEDPIN48       = 48        // is connected to GB and unused.
// +4 header pins (not connected to GB)
// MISO                         = 50;     // W5500 SPI stuff, defined in Library
// MOSI                         = 51;     // SPI stuff, defined in Library
// SCK                          = 52;     // SPI stuff, defined in Library
// SS                           = 53;     // SPI's Chip Select for Mega's Ethernet board (instead of SS=10). Must be defined/left alone as output for SPI to work
// +2 header pins
// GND                                    // GB:GND
// GND                                    // GB:GND

 
/******************************************************************************* 
* POWER 8 pin Header, connected from GB to Mega
*******************************************************************************/
// pin#   Mega      GB
// 1      SPARE     5V_ETH    5V for Ethernet board
// 2      IOREF     5V_sw     5V switched on/off by Pboot
// 3      RESET     RESET     RESETS all
// 4      3V3                 unused
// 5      5V        5V_sw     5V switched on/off by Pboot
// 6      GND       GND       GND
// 7      GND       GND       GND
// 8      Vin       5V_ETH    5V for Ethernet board


// I2C devices
/*brain1C i2c scan 11. Jan 2024
Found address: 64 (0x40)      ina219a  Please change this to ina219s (for Solar)// jjj 22b
Found address: 65 (0x41)      ina219b (b=battery)
Found address: 84 (0x54)      EEPROM_HWaddr0
Found address: 85 (0x55)      EEPROM_HWaddr1
Found address: 86 (0x56)      EEPROM_HWaddr2
Found address: 87 (0x57)      EEPROM_HWaddr3
Found address: 104 (0x68)     RTC  
Found address: 118 (0x76)     bme280a (internal) default address, bridged to GND
Found address: 119 (0x77)     bme280b (external) //jjj just testing, not implemented yet. Scratch open default bridge!
*/

// I2C device definitions
const byte ina219a_solar_HWaddr = 0x40;     // solar INA219, 0x40 for everyone but Lance. 0x44 for Lance.
const byte ina219b_battery_HWaddr = 0x41;     // battery INA219
 
/* probably still unused, test AT24CM02 with Test2Mbit
const byte EEPROM_HWaddr0 = 0x54;  // 2Mbit EEPROM on RTC board, 1/4 sector
const byte EEPROM_HWaddr1 = 0x55;  // 2Mbit EEPROM on RTC board, 2/4 sector
const byte EEPROM_HWaddr2 = 0x56;  // 2Mbit EEPROM on RTC board, 3/4 sector
const byte EEPROM_HWaddr3 = 0x57;  // 2Mbit EEPROM on RTC board, 4/4 sector
*/

// address: 104 (0x68) is ZS-042 DS3231 RTC, defined in library

const byte bme280a_HWaddr = 0x77;     // external BME not implemented, kill CS PCB bridge to GND, connect to 3.3V, default may be 0x76 depending on mfgr
const byte bme280b_HWaddr = 0x76;     // internal BME, CS is PCB bridged to GND on purple 5V boards  //jjj changed for new GB V3&4 11.Jan.2024 19.Jul.2026 flipped bme280a and bme280b=internal now


struct isCamEnabled {
  bool CamNorth : 1;
  bool CamSouth : 1;
  bool CamBrain : 1;
};
