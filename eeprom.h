/**
 * EEPROM definitions 
 */
#ifndef EEPROM_H
#define EEPROM_H

// Start logging here leaving space for configuration
#define EEPROM_I2C_ADDRESS 0x54
#define EEPROM_START_CONFIG 0
#define EEPROM_PAGE_SIZE 256
#define EEPROM_START_LOG 256

// 2Mbit/256k Mbyte EEPROM
#define EEPROM_SIZE kbits_2048
#define EEPROM_MAX_ADDRESS (EEPROM_SIZE-1)
#define EEPROM_LOG_SIZE (EEPROM_SIZE-EEPROM_START_LOG)

// Structure to hold weather data for external (RTC) eeprom storage
struct WeatherStructure {
  time_t timeTag; 
  float windSpeed;    //Wind speed
  int windDirection;    //Wind direction / 22.5 (remember to multiply)
  float windGust;    //Wind gust = gust * 2 + wind speed!!
  int windGustDirection; 
  float atmosphericPressure;    //Pressure in hPa minus 900
  float externalTemperature; // Temperature 
} wxWeather;

void writeWeather(WeatherStructure data); 
WeatherStructure readWeather(); 
void clearWeather();
void writeConfig(); 
void readConfig(); 
void updateWeather(); 
#endif
