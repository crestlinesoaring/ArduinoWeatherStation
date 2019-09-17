


// ArduinoJson - arduinojson.org
// Copyright Benoit Blanchon 2014-2019
// MIT License
//
// This example shows how to generate a JSON document with ArduinoJson.


#include "ArduinoJson.h"
#include "site.h"
#include "wxCommandParser.h"
#include <sunMoon.h>
#include "eeprom.h"

char buf[80];




// Allocate the JSON document
//
// Inside the brackets, 200 is the RAM allocated to this document.
// Don't forget to change this value to match your requirement.
// Use arduinojson.org/v6/assistant to compute the capacity.

// StaticJsonObject allocates memory on the stack, it can be
// replaced by DynamicJsonDocument which allocates in the heap.
//
// DynamicJsonDocument  doc(200);

// StaticJsonObject allocates memory on the stack, it can be
// replaced by DynamicJsonDocument which allocates in the heap.
//
// DynamicJsonDocument  doc(200);

/*
* Stay awake while seting up 

{"set":{"name":"stayAwake","value":true}}
{"get":{"name":"stayAwake"}}

{"get":{"name":"time"}}
{"set":{"name":"time","value":1566725728}}

{"get":{"name":"gmtOffset"}}
{"set":{"name":"gmtOffset","value":-7}}

{"get":{"name":"sunset"}}
{"get":{"name":"sunrise"}}

{"get":{"name":"latitude"}}
{"set":{"name":"latitude","value":34.2190161}}

{"get":{"name":"longitude"}}
{"set":{"name":"longitude","value":-117.3055554}}

{"get":{"name":"history"}}
{"get":{"name":"weather"}}

{"do":{"name":"initialize"}}
{"do":{"name":"capture"}}
{"do":{"name":"clearLog"}}

*/

void parseJson() {
  StaticJsonDocument<200> request;

  if (readline(Serial.read(), buf, 80) > 0) {
    LOG_DEBUG(buf);
    deserializeJson(request, buf);
    if (request.containsKey(GET_REQUEST)) {
     LOG_DEBUG("get:");      
      JsonObject getCommand = request[GET_REQUEST];
      String command = getCommand[NAME_KEY];
      LOG_DEBUG(command);
      
      // {"get":{"name":"time"}}
      if (command == TIME_COMMAND) {
        sendJsonTime(TIME_COMMAND, RTC.get());
        return; 
      }
      
      // {"get":{"name":"gmtOffset"}}
      if (command == GMT_OFFSET_COMMAND) {
        sendJsonInt(GMT_OFFSET_COMMAND, wxConfig.gmtOffset);
        return; 
      }

      // {"get":{"name":"latitude"}}
      if (command == LATITUDE_COMMAND) {
        sendJsonDouble(LATITUDE_COMMAND, wxConfig.latitude); 
        return; 
      }
      
      // {"get":{"name":"longitude"}}
      if (command == LONGITUDE_COMMAND) {
        sendJsonDouble(LONGITUDE_COMMAND, wxConfig.longitude); 
        return; 
      }
      // {"get":{"name":"sunrise"}}
      if (command == SUNRISE_COMMAND) {
        sendJsonTime(SUNRISE_COMMAND, sunCalc.sunRise()); 
        return; 
      }

      // {"get":{"name":"sunset"}}
      if (command == SUNSET_COMMAND) {
        sendJsonTime(SUNSET_COMMAND, sunCalc.sunSet()); 
        return; 
      }

      // {"get":{"name":"weather"}}
      if (command == WEATHER_COMMAND) {
        updateWeather(); 
        sendJsonWeather(wxWeather); 
      }

      // {"get":{"name":"history"}}
      if (command == HISTORY_COMMAND) {
        WeatherStructure weather = readWeather();
        if(weather.timeTag!=0) { 
            sendJsonWeather(weather); 
         }
      }
    }
    // "set" commands
    if (request.containsKey(SET_REQUEST)) {
      JsonObject setCommand = request[SET_REQUEST];
      
        LOG_DEBUG("set");
        String value = setCommand[VALUE_KEY]; 
        LOG_DEBUG(value);
      String command = setCommand[NAME_KEY];
         LOG_DEBUG(command);
         
     // {"set":{"name":"time","value":1566725728}}
      if (command == TIME_COMMAND) {
        long time = setCommand[VALUE_KEY];
        RTC.set(time);
        sendJsonTime(TIME_COMMAND, RTC.get());
        return; 
      }

      // {"set":{"name":"gmtOffset","value":-7}}
      if (command == GMT_OFFSET_COMMAND) {
        int gmtOffset = setCommand[VALUE_KEY];
        wxConfig.gmtOffset = gmtOffset; 
        sendJsonInt(GMT_OFFSET_COMMAND, wxConfig.gmtOffset);
        return; 
      }


      // "{"set":{"name":"latitude","value":34.2190161}}
      if (command == LATITUDE_COMMAND) {
        double latitude = setCommand[VALUE_KEY];
        wxConfig.latitude = latitude;
        sendJsonDouble(LATITUDE_COMMAND, wxConfig.latitude);
        return; 
      }
      // {"get":{"name":"longitude"}}
      if (command == LONGITUDE_COMMAND) {
        double longitude = setCommand[VALUE_KEY];
        wxConfig.longitude = longitude;
        sendJsonDouble(LONGITUDE_COMMAND, wxConfig.longitude);
        return; 
      }

      // {"set":{"name":"stayAwake","value":true}}
      if(command == STAY_AWAKE_COMMAND) {
        boolean stayAwake = setCommand[VALUE_KEY]; 
        wxConfig.stayAwake = stayAwake; 
        sendJsonBoolean(STAY_AWAKE_COMMAND, wxConfig.stayAwake); 
        return; 
      }
      
    }
/**
 * Execute methods in the device
 */
    if (request.containsKey(DO_REQUEST)) {
      JsonObject doCommand = request[DO_REQUEST];
      String command = doCommand[NAME_KEY];
      
      // {"do":{"name":"initialize"}}
      if (command==INITIALIZE_COMMAND) {
        // Initialize based on the new config values
        
        // Set up the sun calculator
        setupSunCalc();
        // Save to external eeprom
        writeConfig();        
        sendJsonBoolean(SUCCESS_KEY, true); 
        return;  
      }

      // {"do":{"name":"clearLog"}}
      if (command==CLEAR_LOG_COMMAND) {
        // Initialize based on the new config values
        
        wxConfig.eeLogWriteAddress=0; 
        wxConfig.eeLogReadAddress=0; 
        
        // Save
        writeConfig();        
        sendJsonBoolean(SUCCESS_KEY, true); 
        return;  
      }
      
      // {"do":{"name":"capture"}}
      if (command==CAPTURE_COMMAND) {
        // Capture and store the weather
        
        updateWeather(); 
       // Write to the ext eeprom 
        writeWeather();
        sendJsonBoolean(SUCCESS_KEY, true); 
         return;  
      }
    }
  }
}

int readline(int readch, char *buffer, int len) {
  static int pos = 0;
  int rpos;

  if (readch > 0) {
    switch (readch) {
      case '\r': // Ignore CR
        break;
      case '\n': // Return on new-line
        rpos = pos;
        pos = 0;  // Reset position index ready for next time
        return rpos;
      default:
        if (pos < len - 1) {
          buffer[pos++] = readch;
          buffer[pos] = 0;
        }
    }
  }
  return 0;
}
void sendJsonLong(String name, long value) {

  StaticJsonDocument<50> doc;

  // Add values in the document
  //

  JsonObject response  = doc.createNestedObject("response");
  response[NAME_KEY] = name;
  response[VALUE_KEY] = value;

  //
  serializeJsonPretty(doc, Serial);

}
void sendJsonInt(String name, int value) {

  StaticJsonDocument<50> doc;

  // Add values in the document
  //

  JsonObject response  = doc.createNestedObject("response");
  response[NAME_KEY] = name;
  response[VALUE_KEY] = value;

  //
  serializeJsonPretty(doc, Serial);

}
void sendJsonDouble(String name, double value) {

  StaticJsonDocument<50> doc;
  JsonObject response  = doc.createNestedObject("response");
  response[NAME_KEY] = name;
  response[VALUE_KEY] = value;
  serializeJsonPretty(doc, Serial);

}

void sendJsonBoolean(String name, boolean value) { 
  StaticJsonDocument<50> doc;
  JsonObject response  = doc.createNestedObject("response");
  response[NAME_KEY] = name;
  response[VALUE_KEY] = value;
  serializeJsonPretty(doc, Serial);
}

void sendJsonTime(String name, time_t value) { 
  StaticJsonDocument<50> doc;
  JsonObject response  = doc.createNestedObject("response");
  response[NAME_KEY] = name;
  response[VALUE_KEY] = formatTime(value);
  serializeJsonPretty(doc, Serial);
}

void sendJsonWeather(WeatherStructure weather) { 
  StaticJsonDocument<200> doc;
  JsonObject response  = doc.createNestedObject("response");
  response[NAME_KEY] = WEATHER_COMMAND;
 
  response["time"] = formatTime(weather.timeTag);
  response["windSpeed"] = weather.windSpeed; 
  response["windDirection"] = weather.windDirection; 
  
  
  serializeJsonPretty(doc, Serial);
}

/*
 * Generate a iso string for the date and time in the form
 * yyyy-mm-dd HH:MM
 */
String formatTime(time_t timeTag) { 
  char timeString[20];
  sprintf(timeString, "%4d-%02d-%02d %02d:%02d", year(timeTag), month(timeTag), day(timeTag), hour(timeTag), minute(timeTag)); 
  return String(timeString); 
}
