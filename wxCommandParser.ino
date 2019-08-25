


// ArduinoJson - arduinojson.org
// Copyright Benoit Blanchon 2014-2019
// MIT License
//
// This example shows how to generate a JSON document with ArduinoJson.


#include "ArduinoJson.h"
#include "site.h"

char buf[80];

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

//{"get":{"name":"time"}}
//{"set":{"name":"time","value":1566716760}}
void sendTime() {

  StaticJsonDocument<200> doc;

  // Add values in the document
  //

  JsonObject response  = doc.createNestedObject("response");
  response["name"] = "time";
  response["value"] = RTC.get();

  //
  serializeJsonPretty(doc, Serial);

}

void parseJson() {
  StaticJsonDocument<200> request;

  if (readline(Serial.read(), buf, 80) > 0) {
    LOG_DEBUG(buf);
    deserializeJson(request, buf);
    if (request.containsKey("get")) {
      JsonObject getCommand = request["get"];
      String command = getCommand["name"];
      if (command == "time") {
        LOG_DEBUG("get time");
        sendTime();
      }
    }
    if (request.containsKey("set")) {
      JsonObject setCommand = request["set"];
      String command = setCommand["name"];
      if (command == "time") {
        LOG_DEBUG("set time");
        long time = setCommand["value"];
        LOG_DEBUG(time);
        RTC.set(time);
        sendTime();
      }
    }
  }
}
