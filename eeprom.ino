//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//
// External eeProm on RTC board
// Upgraded to 2Mb
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#include "eeprom.h"
#include "wxConfig.h"
#include "extEEPROM.h"
//#include <Streaming.h>    //http://arduiniana.org/libraries/streaming/

extEEPROM eep(EEPROM_SIZE, 1, EEPROM_PAGE_SIZE , EEPROM_I2C_ADDRESS);  //jjj 2Mbit, 1 device, 256 Bytes Page size, i2c address to match RTC ZS-042 board.

/*
 * Write the weather to next external eeprom block
 */
void writeWeather() {

  int weatherStructureSize = sizeof(WeatherStructure); 
  // Get the next address
  unsigned long  writeAddress = (unsigned long) wxConfig.eeLogWriteAddress;
  if((EEPROM_LOG_SIZE-writeAddress)< weatherStructureSize) { 
      // Won't fit go to next block (start over) 
      writeAddress+=weatherStructureSize; 
  }
  byte *weatherPointer = (byte*) &wxWeather;
  unsigned long address = EEPROM_START_LOG+writeAddress%EEPROM_LOG_SIZE; 
  LOG_DEBUG("Writing to address:"); 
  LOG_DEBUG(address); 
  eep.write(address,weatherPointer,weatherStructureSize); 
 
  // Update the next address

  wxConfig.eeLogWriteAddress = wxConfig.eeLogWriteAddress+weatherStructureSize; 

}

/**
 * Write the configuration from memeory to extenal eeprom
 */
void writeConfig() { 
    eep.write((unsigned long) EEPROM_START_CONFIG,(byte*) &wxConfig,sizeof(wxConfig_struct)); 
}

/**
 * Read the configuration from extenal eeprom  to memeory
 */
void readConfig() { 
    eep.read((unsigned long) EEPROM_START_CONFIG,(byte*) &wxConfig,sizeof(wxConfig_struct)); 
}
/*
 * Read the next waether block 
 *  uses a rolling readAddress that catches up to the writeAddress
 *  
 *  - return null if none left
 */
WeatherStructure readWeather() {

  WeatherStructure weather; 
  int weatherStructureSize = sizeof(WeatherStructure); 
  // Get the next address
  unsigned long  readAddress = (unsigned long) wxConfig.eeLogReadAddress;
  unsigned long  writeAddress = (unsigned long) wxConfig.eeLogWriteAddress;
  if (readAddress < writeAddress) {
    if((EEPROM_LOG_SIZE-readAddress)< weatherStructureSize) { 
      // Won't fit go to next block (start over) 
      readAddress+=weatherStructureSize; 
    }
    byte *weatherPointer = (byte*) &weather; 
    unsigned long address = EEPROM_START_LOG+readAddress%EEPROM_LOG_SIZE; 
    LOG_DEBUG("Reading from address:"); 
    LOG_DEBUG(address);    
    eep.read(address,weatherPointer,weatherStructureSize); 
 
  // Update the next address

    wxConfig.eeLogReadAddress = readAddress+weatherStructureSize; 
  } else {
    LOG_DEBUG("End of log"); 
  }
  return weather; 
}

/**
 * Update the weather structure based on the calculated parameters
 */
void updateWeather() {

    wxWeather.timeTag = RTC.get(); 
    wxWeather.windDirection=winddir; 
    wxWeather.windSpeed=windspeedmph;
    wxWeather.windGustDirection = windgustdir;  
    wxWeather.windGust = windgustmph; 
    
}
