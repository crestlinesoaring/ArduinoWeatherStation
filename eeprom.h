/**
 * EEPROM definitions 
 */
#ifndef EEPROM_H
#define EEPROM_H

// Start logging here leaving space for configuration
#define EEPROM_I2C_ADDRESS 0x54
#define EEPROM_PAGE_SIZE 256
#define EEPROM__START_LOG 256

// 2Mbit/256k Mbyte EEPROM
#define EEPROM_SIZE kbits_2048
#define EEPROM__MAX_ADDRESS (EEPROM__SIZE-1)

void writeWeather(String data); 
String  readWeather(); 
void clearWeather(); 
#endif
