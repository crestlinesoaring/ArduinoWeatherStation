


// ArduinoJson - arduinojson.org
// Copyright Benoit Blanchon 2014-2019
// MIT License
//
// This example shows how to generate a JSON document with ArduinoJson.


#include "ArduinoJson.h"
#include "site.h"
#include "wxCommandParser.h"
#include <sunMoon.h>

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

{"get":{"name":"sunrise"}}
{"get":{"name":"sunset"}}

{"get":{"name":"latitude"}}
{"set":{"name":"latitude","value":34.2190161}}

{"get":{"name":"longitude"}}
{"set":{"name":"longitude","value":-117.3055554}}

{"do":{"name":"initialize"}}

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
      
      // "time"
      if (command == TIME_COMMAND) {
        sendJsonTime(TIME_COMMAND, RTC.get());
        return; 
      }
      
      // "gmtOffset"
      if (command == GMT_OFFSET_COMMAND) {
        sendJsonInt(GMT_OFFSET_COMMAND, wxConfig.gmtOffset);
        return; 
      }

      // "latitude"
      if (command == LATITUDE_COMMAND) {
        sendJsonDouble(LATITUDE_COMMAND, wxConfig.latitude); 
        return; 
      }
      
      // "longitude"
      if (command == LONGITUDE_COMMAND) {
        sendJsonDouble(LONGITUDE_COMMAND, wxConfig.longitude); 
        return; 
      }
      // "sunrise"
      if (command == SUNRISE_COMMAND) {
        sendJsonTime(SUNRISE_COMMAND, sunCalc.sunRise()); 
        return; 
      }

      // "sunset
      if (command == SUNSET_COMMAND) {
        sendJsonTime(SUNSET_COMMAND, sunCalc.sunSet()); 
        return; 
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
         
     // "set time"
      if (command == TIME_COMMAND) {
        long time = setCommand[VALUE_KEY];
        RTC.set(time);
        sendJsonTime(TIME_COMMAND, RTC.get());
        return; 
      }

      // "set gmtOffset"
      if (command == GMT_OFFSET_COMMAND) {
        int gmtOffset = setCommand[VALUE_KEY];
        wxConfig.gmtOffset = gmtOffset; 
        sendJsonInt(GMT_OFFSET_COMMAND, wxConfig.gmtOffset);
        return; 
      }


      // "set latitude"
      if (command == LATITUDE_COMMAND) {
        double latitude = setCommand[VALUE_KEY];
        wxConfig.latitude = latitude;
        sendJsonDouble(LATITUDE_COMMAND, wxConfig.latitude);
        return; 
      }
      // "set longitude"
      if (command == LONGITUDE_COMMAND) {
        double longitude = setCommand[VALUE_KEY];
        wxConfig.longitude = longitude;
        sendJsonDouble(LONGITUDE_COMMAND, wxConfig.longitude);
        return; 
      }

      if(command == STAY_AWAKE_COMMAND) {
        boolean stayAwake = setCommand[VALUE_KEY]; 
        wxConfig.stayAwake = stayAwake; 
        sendJsonBoolean(STAY_AWAKE_COMMAND, wxConfig.stayAwake); 
        return; 
      }
      
    }

    if (request.containsKey(DO_REQUEST)) {
      JsonObject doCommand = request[DO_REQUEST];
      String command = doCommand[NAME_KEY]; 
      if (command==INITIALIZE_COMMAND) {
        // Initialize based on the new config values
        
        // Set up the sun calculator
        setupSunCalc(); 
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

  StaticJsonDocument<200> doc;

  // Add values in the document
  //

  JsonObject response  = doc.createNestedObject("response");
  response["name"] = name;
  response["value"] = value;

  //
  serializeJsonPretty(doc, Serial);

}
void sendJsonInt(String name, int value) {

  StaticJsonDocument<200> doc;

  // Add values in the document
  //

  JsonObject response  = doc.createNestedObject("response");
  response["name"] = name;
  response["value"] = value;

  //
  serializeJsonPretty(doc, Serial);

}
void sendJsonDouble(String name, double value) {

  StaticJsonDocument<200> doc;
  JsonObject response  = doc.createNestedObject("response");
  response["name"] = name;
  response["value"] = value;
  serializeJsonPretty(doc, Serial);

}

void sendJsonBoolean(String name, boolean value) { 
  StaticJsonDocument<200> doc;
  JsonObject response  = doc.createNestedObject("response");
  response["name"] = name;
  response["value"] = value;
  serializeJsonPretty(doc, Serial);
}

void sendJsonTime(String name, time_t value) { 
  StaticJsonDocument<200> doc;
  JsonObject response  = doc.createNestedObject("response");
  response["name"] = name;
  String hours = String(hour(value)); 
  String minutes = String(minute(value)); 
  String timeFormated =  hours + ':' + minutes;
  response["value"] = timeFormated ;
  serializeJsonPretty(doc, Serial);
}
