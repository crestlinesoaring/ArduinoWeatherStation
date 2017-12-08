/*
 * 
 * Functions for handling time related duties. Like NTP.
 * 
 */




// Turns on power for components needed for network connectivity
void enableEthernet() {

  // DON'T KEEP ENABLING ONCE IT'S ALREADY ENABLED! It's wasteful. Also it makes an endless loop if the 30 seconds crosses the "second zero" boundary.
  if (ethEnabled) return;

  //enableWifi();   //We do this separately now, so we can write to an SD card without turning on the wifi.

  PrintSpiPinMode();
  
  Serial.println();
  Serial.print(getTimeWithZeros());
  Serial.print(F(": enableEthernet() called, startup delay 2 seconds:  0"));

  // Re-enable the pins that were disabled during power save.
  pinMode(SS,   OUTPUT);
  //pinMode(SCK,  OUTPUT);
  //pinMode(MISO, OUTPUT);
  //pinMode(MOSI, OUTPUT);

  SPI.begin();

  pinMode(PIN_ETH_CONTROL, OUTPUT);                     // prepares ETH power control pin
  digitalWrite(PIN_ETH_CONTROL, ETH_ENABLED);           // turns ETH shield on
  
  // ETH takes ~2 seconds to be ready to send when turned on
  for (int i=0; i>0; i--) {

    // Count down the seconds on Serial. Character 8 is the backspace.
    Serial.write(8);
    if (i > 9) {
      Serial.write(8);
    }
    Serial.print(i - 1);

    wdt_reset();
    delay(1000);
  }
  Serial.print("Ethernet.begin; ");
  Ethernet.begin(mac, ip, dnsServer, gateway, subnet); // Eth must be initialized after each power up
  Serial.print("server.begin(); ");
  server.begin();
  ethEnabled = true;

  Serial.print(millis());
  Serial.print(F("ms: Started Ethernet. Local IP is "));
  Serial.println(Ethernet.localIP());

  PrintSpiPinMode();

}

void enableWifi() {

  if (wifiEnabled or wifiStartTime) return;
  Serial.print(F("enableWifi called, wasn't already enabled. Delay seconds: ")); Serial.println(wifiStartupDelay);

  pinMode(PIN_UBIQUITI_CONTROL, OUTPUT);                 // prepares Ubiquiti power control pin
  digitalWrite(PIN_UBIQUITI_CONTROL, UBIQUITI_ON);  // turns Ubiquiti on
  wifiStartTime = millis();
  
  // Rest of enabling happens in loop() where we check that it's been wifiStartupDelay seconds (currently 75, may be out of date)

}

// Turns off power for network components to save power
void disableEthernet() {
  Serial.println();
  Serial.print(getTimeWithZeros());
  Serial.println(F(": disableEthernet() called."));

  if (keepUbiquitiOn and isDaytime) {
    // Leave it all on! Mostly for testing.
    Serial.println(F("Leaving Ethernet on because of keepUbiquitiOn flag."));
    return;
  }
  if (hour() == 11 and minute() > 48) {
    // Leave it all on for ~10 minutes, once a day. Just-in-case.
    Serial.println(F("Leaving Ethernet on from 11:50 to noon"));
    return;
  }
  
  incomingClient.stop();
  client.stop();

  // It would be okay to disable wifi any time ethernet is disabled, but for good form let's separate them out from now on.
  //disableWifi();

  //print the pinmodes first
  PrintSpiPinMode();
                                             //             Unlike regular boots, the Ethernet shield's SPI pins will be active after a reset because of the Ariadne Bootloader.
                                             //             When powering down the Ethernet shield, all connected pins must be set to low or preferrably inputs without pullups
  if (not wxOwner.equals("L")) {  // Crashes the sketch if you don't actually remove power from Ethernet Shield.
    SPI.end();
    pinMode(MOSI, INPUT);                    //             prevents leakage through ESD diodes
    pinMode(MISO, INPUT);                    //             prevents leakage through ESD diodes
    pinMode(SCK,  INPUT);                    //             prevents leakage through ESD diodes
    pinMode(SS,   INPUT);                    //             prevents leakage through ESD diodes
  }

  pinMode(PIN_ETH_CONTROL, OUTPUT);                      // prepares ETH power control pin
  digitalWrite(PIN_ETH_CONTROL, ETH_DISABLED);           // turns ETH shield off
  ethEnabled = false;
}

void disableWifi() {

  Serial.print(getTimeWithZeros());
  Serial.println(F(": disableWifi() called."));

  if (keepUbiquitiOn and isDaytime) {
    // do nothing, keep it on!
    Serial.println(F(" Wifi left on due to keepUbiquitiOn flag."));
    return;
  }

  if (hour() == 11 and minute() > 48) {
    // Leave it all on for ~10 minutes, once a day. Just-in-case.
    Serial.println(F("Leaving Ubiquiti on from 11:50 to noon"));
    return;
  }


  pinMode(PIN_UBIQUITI_CONTROL, OUTPUT);                  // prepares Ubiquiti power control pin
  digitalWrite(PIN_UBIQUITI_CONTROL, UBIQUITI_OFF);  // turns Ubiquiti off
  wifiEnabled = false;
  wifiStartTime = 0;

}

//Prints to serial the pinmode of SPI pins. For debugging obviously.
void PrintSpiPinMode() {
  return; // DISABLED !! DISABLED !! DISABLED
  Serial.print(  "I: " ); Serial.print(INPUT);
  Serial.print(", O: " ); Serial.print(OUTPUT);
  Serial.print(", Ip: "); Serial.println(INPUT_PULLUP);
  Serial.print("MOSI: "); Serial.println(getPinMode(MOSI));
  Serial.print("MISO: "); Serial.println(getPinMode(MISO));
  Serial.print("SCK : "); Serial.println(getPinMode(SCK ));
  Serial.print("SS  : "); Serial.println(getPinMode(SS  ));
  Serial.println();
}

#define UNKNOWN_PIN 0xFF
uint8_t getPinMode(uint8_t pin)
{
  uint8_t bit = digitalPinToBitMask(pin);
  uint8_t port = digitalPinToPort(pin);

  // I don't see an option for mega to return this, but whatever...
  if (NOT_A_PIN == port) return UNKNOWN_PIN;

  // Is there a bit we can check?
  if (0 == bit) return UNKNOWN_PIN;

  // Is there only a single bit set?
  if (bit & bit - 1) return UNKNOWN_PIN;

  volatile uint8_t *reg, *out;
  reg = portModeRegister(port);
  out = portOutputRegister(port);

  if (*reg & bit)
    return OUTPUT;
  else if (*out & bit)
    return INPUT_PULLUP;
  else
    return INPUT;
}




void getRiseSet()
{
  // Calculate sunrise and sunset, based on Los Angeles. Close enough.
  // From http://forum.arduino.cc/index.php/topic,66426.msg487457.html#msg487457
  usTemp = micros();
  float common = cos( ((month()-1)*30.5+day() + 8 ) / 58.091554);
  sunrise = 349.5 + 66.5 * common;
  sunset =  1078.5 - 69.5 * common;
  if (CheckDST()) {
    sunrise = sunrise + 60;
    sunset = sunset + 60;
  }
  sunriseDay = day();
  Serial.println();
  Serial.print(F("Sunrise today is at  ")); Serial.print(sunrise / 60); Serial.print(":"); Serial.println(sunrise % 60);
  Serial.print(F("Sunset  today is at " )); Serial.print(sunset  / 60); Serial.print(":"); Serial.println(sunset  % 60);
  Serial.print(F("  Took ")); Serial.print(micros() - usTemp);  Serial.println(F("us to calculate."));
  Serial.println();
}

boolean CheckDST(){
/*
Starts: Second Sunday in March
Ends: First Sunday in November
From: http://forum.arduino.cc/index.php?topic=66426.15
*/     
    //January, february, and december are out.
    if (month() < 3 || month() > 11) { return false; }
    //April to October are in
    if (month() > 3 && month() < 11) { return true; }
    int previousSunday = day() - weekday();
    //In march, we are DST if our previous sunday was on or after the 8th.
    if (month() == 3) { return previousSunday >= 8; }
    //In november we must be before the first sunday to be dst.
    //That means the previous sunday must be before the 1st.
    return previousSunday <= 0;
}

 
/*-------- NTP code ----------*/
/*****************************************************************************
  _______   _____   __  __   ______         __    _   _   _______   _____  
 |__   __| |_   _| |  \/  | |  ____|       / /   | \ | | |__   __| |  __ \ 
    | |      | |   | \  / | | |__         / /    |  \| |    | |    | |__) |
    | |      | |   | |\/| | |  __|       / /     | . ` |    | |    |  ___/ 
    | |     _| |_  | |  | | | |____     / /      | |\  |    | |    | |     
    |_|    |_____| |_|  |_| |______|   /_/       |_| \_|    |_|    |_|     

 *****************************************************************************
 */

time_t getNtpTime()
{
  // We don't want to send anything during power save times, for now.
  if (!wifiEnabled) {
    Serial.println("   NTP requested, but NO PACKET SENT due to Power Save mode.");
    return 0;
  }
  if (disableNTP) {
    Serial.println("   NTP requested, but disabled via \"const bool disableNTP = true;\"");
    return 0;
  }
  Udp.begin(NTPlocalPort); // Moved from setup(), to try stop()ing udp every time.
  while (Udp.parsePacket() > 0) ; // discard any previously received packets
  Serial.println(F("Transmit NTP Request"));
  msNTPrequest = millis();
  sendNTPpacket(timeServer);
  //sendNTPpacket(timeServerIP);
  uint32_t beginWait = millis();
  // Normal timeout is 1500, but I can't pause that long or weather gets messed up.
  // FIXME: see about making this check every loop(), for 1500ms before failing, instead of looping here.
  while (millis() - beginWait < 800) {
    int size = Udp.parsePacket();
    if (size >= NTP_PACKET_SIZE) {
      Serial.print(F("   UDP response received "));
      Serial.print(millis() - msNTPrequest);
      Serial.println(F("ms later. Parsing for NTP"));
      Udp.read(packetBuffer, NTP_PACKET_SIZE);  // read packet into the buffer
      unsigned long secsSince1900;
      // convert four bytes starting at location 40 to a long integer
      secsSince1900 =  (unsigned long)packetBuffer[40] << 24;
      secsSince1900 |= (unsigned long)packetBuffer[41] << 16;
      secsSince1900 |= (unsigned long)packetBuffer[42] << 8;
      secsSince1900 |= (unsigned long)packetBuffer[43];
      Udp.stop();
      return secsSince1900 - 2208988800UL + timeZone * SECS_PER_HOUR;
    }
  }
  Serial.print(F("After waiting "));
  Serial.print(millis() - msNTPrequest);
  Serial.println(F("ms, No NTP Response :-("));
  Udp.stop();
  return 0; // return 0 if unable to get the time
}

// send an NTP request to the time server at the given address (DNS lookup version, see IPAddress() version below)
unsigned long sendNTPpacket(char* address)
{
  // set all bytes in the buffer to 0
  memset(packetBuffer, 0, NTP_PACKET_SIZE);
  // Initialize values needed to form NTP request
  // (see URL above for details on the packets)
  packetBuffer[0] = 0b11100011;   // LI, Version, Mode
  packetBuffer[1] = 0;     // Stratum, or type of clock
  packetBuffer[2] = 6;     // Polling Interval
  packetBuffer[3] = 0xEC;  // Peer Clock Precision
  // 8 bytes of zero for Root Delay & Root Dispersion
  packetBuffer[12]  = 49;
  packetBuffer[13]  = 0x4E;
  packetBuffer[14]  = 49;
  packetBuffer[15]  = 52;

  // all NTP fields have been given values, now
  // you can send a packet requesting a timestamp:
  Serial.print(F("   About to send UDP NTP packet from char* ... "));
  //wdt_disable();
  Udp.beginPacket(address, 123); //NTP requests are to port 123
  Udp.write(packetBuffer, NTP_PACKET_SIZE);
  Udp.endPacket();
  //wdt_enable(WDTO_8S);
  Serial.println(F("sent (probably)."));
}

// send an NTP request to the time server at the given address (IP, no-dns version)
unsigned long sendNTPpacket(IPAddress address)
{
  // set all bytes in the buffer to 0
  memset(packetBuffer, 0, NTP_PACKET_SIZE);
  // Initialize values needed to form NTP request
  // (see URL above for details on the packets)
  packetBuffer[0] = 0b11100011;   // LI, Version, Mode
  packetBuffer[1] = 0;     // Stratum, or type of clock
  packetBuffer[2] = 6;     // Polling Interval
  packetBuffer[3] = 0xEC;  // Peer Clock Precision
  // 8 bytes of zero for Root Delay & Root Dispersion
  packetBuffer[12]  = 49;
  packetBuffer[13]  = 0x4E;
  packetBuffer[14]  = 49;
  packetBuffer[15]  = 52;

  // all NTP fields have been given values, now
  // you can send a packet requesting a timestamp:
  Udp.beginPacket(address, 123); //NTP requests are to port 123
  Udp.write(packetBuffer, NTP_PACKET_SIZE);
  Udp.endPacket();
  Serial.println(F("  UDP NTP packet sent from IPAddress (probably)."));
}


String getDateWithZeros() {

    String S;

    if(year() < 10) S += "0";
    S += String(year());
    S += "/";
    if(month() < 10) S += "0";
    S += String(month());
    S += "/";
    if(day() < 10) S += "0";
    S += String(day());

    return S;

}

String getDateWithZerosNoSeparator() {

    String S;

    if(year() < 10) S += "0";
    S += String(year());
    if(month() < 10) S += "0";
    S += String(month());
    if(day() < 10) S += "0";
    S += String(day());

    return S;

}

String getTimeWithZeros() {

    String S;
    
    if(hour() < 10) S += "0";
    S += String(hour());
    S += ":";
    if(minute() < 10) S += "0";
    S += String(minute());
    S += ":";
    if(second() < 10) S += "0";
    S += String(second());

    return S;

}


