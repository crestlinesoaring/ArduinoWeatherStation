//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//
// External eeProm on RTC board
// Upgraded to 2Mb
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#include "eeprom.h"
#include "extEEPROM.h"
//#include <Streaming.h>    //http://arduiniana.org/libraries/streaming/

extEEPROM eep(EEPROM_SIZE, 1, EEPROM_PAGE_SIZE , EEPROM_I2C_ADDRESS);  //jjj 2Mbit, 1 device, 256 Bytes Page size, i2c address to match RTC ZS-042 board.

/*
 * Write the weather to next external eeprom block
 */
void writeWeather(String weather) {
 
  // Get the next address

  // Write to the eeprom

  // Update the next address
  
}
/*
 * Read the next waether block 
 *  uses a rolling readAddress that catches up to the writeAddress
 *  
 *  - return null if none left
 */
String readWeather() {

  String weather; 
  
  // Get the write and read addresses

  // Return null if the same as the write address
  
  // Read the next block

  // Update the last read address

  return weather; 
  
}
