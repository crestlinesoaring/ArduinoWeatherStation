//Hardware pin definitions, weather station
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
// analog I/O pins
//const byte WDIR = A0;
const byte WDIR = A5; //For Lance, still A5

// digital I/O pins
const byte RAIN = 2;
const byte WSPEED = 3;
const byte STAT1 = 7;


/*
brain1C i2c scan 20.Jan 2018
I2C device found at address 0x40  ! ina219a
I2C device found at address 0x41  ! ina219b (b=battery)
I2C device found at address 0x54  ! EEPROM_HWaddr0
I2C device found at address 0x55  ! EEPROM_HWaddr1
I2C device found at address 0x56  ! EEPROM_HWaddr2
I2C device found at address 0x57  ! EEPROM_HWaddr3
I2C device found at address 0x68  ! bme280a (internal)
I2C device found at address 0x77  ! RTC
*/

// I2C devices
// 0x40  64 Sparkfun Humidity/temp sensor?
// 0x44  68 INA219 on 3rd address (1st address is 0x40, conflicts with humidty sensor)
// 0x41  65 INA219 on 2nd address
// 0x60  96 Sparkfun Humidity/temp sensor?
// 0x76 118 BME280 environmental sensor


const byte ina219a_HWaddr = 0x40;  //0x40 for everyone but Lance. 0x44 for Lance.
const byte ina219b_HWaddr = 0x41;  //battery
const byte bme280a_HWaddr = 0x76;  //Default may be 0x77 depending on mfgr
const byte bme280b_HWaddr = 0x77;


const byte EEPROM_HWaddr0 = 0x54;  // 2Mbit EEPROM on RTC board, 1/4 sector
const byte EEPROM_HWaddr1 = 0x55;  // 2Mbit EEPROM on RTC board, 2/4 sector
const byte EEPROM_HWaddr2 = 0x56;  // 2Mbit EEPROM on RTC board, 3/4 sector
const byte EEPROM_HWaddr3 = 0x57;  // 2Mbit EEPROM on RTC board, 4/4 sector

struct isCamEnabled {
  bool CamNorth : 1;
  bool CamSouth : 1;
  bool CamBrain : 1;
};

const byte PIN_ETH_CONTROL = 8;        // Ethernet power control; on=LOW, off=HIGH
const byte ETH_DISABLED = HIGH;
const byte ETH_ENABLED = LOW;

const byte PIN_CamNorth_CONTROL = 9;      // FETQ3, 12V power to Camera4 (PG launch), Disabled(default)=LOW=Camera4 stays off; Enabled=HIGH=Camera4 turns on
const byte CamNorth_ON = HIGH;            // turn Camera4 on
const byte CamNorth_OFF = LOW;            // (default)=turn off Camera4

const byte PIN_CamSouth_CONTROL = 11;      // FETQ2, 12V power to Camera3 (HG launch), Disabled(default)=LOW=Camera3 stays off; Enabled=HIGH=Camera3 turns on
const byte CamSouth_ON = HIGH;             // turn Camera3 on
const byte CamSouth_OFF = LOW;             // (default)=turn off Camera3

const byte PIN_CamBrain_CONTROL = 12;      // FETQ1, 12V power to Camera1&2 (BB), Disabled(default)=LOW=Camera1&2 stay off; Enabled=HIGH=Camera1&2 turn on
const byte CamBrain_ON = HIGH;             // turn Camera1&2 on
const byte CamBrain_OFF = LOW;             // (default)=turn off Camera1&2

const byte PIN_UBIQUITI_CONTROL = 14;   // FETQ4, 12V power to Ubiquiti AP; Enabled(default)=LOW=Ubiquiti AP stays on, Disabled=HIGH=Ubiquiti AP is off 
const byte UBIQUITI_ON = LOW;           // (default)=turn on Ubiquiti AP
const byte UBIQUITI_OFF = HIGH;         // turn off Ubiquiti AP

const byte PIN_12V_CONTROL = 15;        // Rel4, 12V power to all peripherals; Enabled (default)=LOW=power stays connected, Disabled==HIGH=power is disconnected
const byte CONNECT_12V = LOW;           // (default)=power stays connected
const byte DISCONNECT_12V = HIGH;       // power is disconnected

const byte PIN_SOLAR_CONTROL = 16;      // Rel2, Solar panel connection; Enabled (default)=LOW=panel stays connected, Disabled=HIGH=panel is disconnected
const byte SOLAR_CONNECTED = LOW;       // (default)=panel is disconnected
const byte SOLAR_DISCONNECTED = HIGH;   // panel is disconnected


