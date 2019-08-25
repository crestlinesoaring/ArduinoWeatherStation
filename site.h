#ifndef SITE_H
// Only do this once
#define SITE_H
#include <Ethernet.h>

#define WXOWNERDEFINED "M"
// Uncomment the next line for debugging logs to Serial output
// Always check in commented
#define DEBUG
#ifdef DEBUG
// Log to serial
#define LOG_DEBUG(message) Serial.println(message)
#else
// No code
#define LOG_DEBUG(message)
#endif

const String wxOwner = WXOWNERDEFINED;
const String wxBetaText = "sub=betaTwo&";
const byte IPgw = 254;    //Marshall must be 254
const byte IPq3 = 190;    //Marshall must be 190, Lance must be 24

byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0x02, 0x22 };

IPAddress serverIP(229, 137, 74, 130);

IPAddress timeServerIP(192, 168, 255, 238);   //Local NTP server provided by Ken

String makeUploadWeatherPut(String wxString) {
  String strPut;
  //  strPut += F("PUT /wx/ptfUM.php?sub=betaTwo&w=");
  strPut += F("PUT /wx/ptfUM.php?");
  strPut += wxBetaText;
  strPut += ("w=");
  strPut += wxString;
  //  pw for cloud xxxxxx
  strPut += F(" HTTP/1.1\r\nHost: www.cloud.com\r\nConnection: close\r\n\r\n\r\n");
  return strPut;
}
#endif
