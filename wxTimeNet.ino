/*
 * 
 * Functions for handling time and some network related duties. Like NTP.
 * 
 */

/* Check for incoming data on the Ethernet server.
 *  Typically stuff like reset requests, maybe update EEPROM values, print current data cache, etc...
 */
void checkEthIncomingData() {
  if (wifiEnabled) {
    usTemp = millis();  // using usTemp so we can use msTemp as a timeout timer below.
    bool timeoutWarningGiven = false;
    bool boolQuitSession = false;
    wdt_reset();
    incomingClient = server.available();
    if (incomingClient) {
      Serial.println(F("  --=Ethernet client connected!!=-- "));
      // Probably just waiting here is enough to cause a WatchDog reset, which is all we really need.
      while (incomingClient.connected()) {
        //Serial.print(F("Entering While incomingClient.connected() at ms: "));
        //Serial.println(millis());
        if (incomingClient.available()) {
          msTemp = millis();
          char c = incomingClient.read();
          char fileName[13];
          String strFileName;
          int i;
          int rtcSetStatus;
          Serial.write(c);
          incomingClient.print(c);

          switch (c) {
            case 'q':
            case 'Q': // for quit/Quit
              boolQuitSession = true;
              break;
            
            case 'R': // for Reset
              wdt_reset();
              Serial.println(F("---===---===--- Client hit R and [enter], which causes the reboot ---===---===---"));
              incomingClient.println(F("R and Enter detected. Rebooting and disconnecting."));
              delay(100);
              Serial.println(); Serial.print(" ");
              i = 0;
              while(true) { // this would surely cause a reboot, except we never seem to get here.
                Serial.print(8);
                Serial.print(i);
                incomingClient.print(" ");
                incomingClient.print(i);
                i++;
                delay(500);
              } // End while (true) for loop until Watchdog Reset
              break; // End of 'R'eset
              
            case 'C': // for Cache, dump what cached data we have
              incomingClient.println(F("C and Enter detected. Dumping what we have cached in memory. Be sure to disconnect."));
              for (byte i=0; i < 10; i++) {
                Serial.println(wxStringCache[i]);
                incomingClient.print(i); incomingClient.print(": ");
                incomingClient.println(wxStringCache[i]);
              }

              break; // End of 'C'ache
              
            case 'D': // for Dump today's file to this socket.
              incomingClient.println(F("D and Enter detected. Dumping today's data file to this socket. No reboot (hopefully)"));
              strFileName = getDateWithZerosNoSeparator() + ".dat";
              strFileName.toCharArray(fileName, 13);
              
              sdReadFileToSocket(fileName);
              
              incomingClient.println(F("---- Done dumping file"));
              Serial.println(F("Done dumping file to Ethernet."));

              break; // End of 'D'ump

            case 'G':
            case 'g': // for Get Camera Snapshot (a stretch, but I'm running out of letters)
              incomingClient.print(F("<-- g detected. Getting a camera snapshot. "));
              requestCamSnapshot();

              break; // End of 'g'et Camera Snapshot
              
            case 'U': // for Toggle Ubiquiti keep-on (vs 5 minute Save & Send all day)
              incomingClient.print(F("U detected, toggling Ubiquity to: "));
              if (EEPROM.read(eeKeepUbiOn)) {
                incomingClient.println(F("turn off, only on once every 5 minutes."));
                keepUbiquitiOn = false;
                EEPROM.update(eeKeepUbiOn, false);
              } else {
                incomingClient.println(F("stay on ALL DAY. Still turns off at night."));
                keepUbiquitiOn = true;
                EEPROM.update(eeKeepUbiOn, true);
              }
              break; // End of 'U'biquiti toggle
              
            case 'B': // for turn Brain Box camera on
              if (camStatus.BrainDesireOn) {
                incomingClient.print(F("B detected, BrainBox camera was ON, turning off BrainBox camera..."));
                disableCamBrain();
              } else {
                incomingClient.print(F("B detected, BrainBox camera was OFF, turning on BrainBox camera..."));
                enableCamBrain();
              }
              incomingClient.println(F(" Done!"));
              break;
              
            case 'H':
            case 'S': // for turn South camera on (formerly called Hang Glider launch camera)
              if (camStatus.SouthDesireOn) {
                incomingClient.print(F("S detected, South camera was ON, turning off South camera..."));
                disableCamSouth();
              } else {
                incomingClient.print(F("S detected, South camera was OFF, turning on South camera..."));
                enableCamSouth();
              }
              incomingClient.println(F(" Done!"));
              break;

            case 'P':
            case 'N': // for turn North camera on (formerly called Paraglider Launch camera)
              if (camStatus.NorthDesireOn) {
                incomingClient.print(F("N detected, North camera was ON, turning off North camera..."));
                disableCamNorth();
              } else {
                incomingClient.print(F("N detected, North camera was OFF, turning on North camera..."));
                enableCamNorth();
              }
              incomingClient.println(F(" Done!"));
              break;

            case 'X': // Bad Weather forecast, don't auto-on the cameras in the morning.
              if(camStatus.badWeather) {
                incomingClient.print(F("X detected, Bad Weather bit is now set FALSE so cameras will auto-start tomorrow morning... "));
                camStatus.badWeather = false;
              } else {
                incomingClient.print(F("X detected, Bad Weather bit is now set TRUE, so cameras will NOT auto-start tomorrow morning... "));
                camStatus.badWeather = true;
              }
              EEPROM.put(eeCamStatus, camStatus);
              incomingClient.println(F(" done!"));
              break;
              
            case 'A': // for turn ALL cameras on
              incomingClient.print(F("A detected, turning on all cameras... "));
              enableCamBrain();
              enableCamSouth();
              enableCamNorth();
              incomingClient.println(F(" - DONE."));
              break;

            case 'a': // for turn ALL cameras off
              incomingClient.print(F("a detected, turning OFF all cameras... "));
              disableCamBrain();
              disableCamSouth();
              disableCamNorth();
              incomingClient.println(F(" - DONE."));
              break;


            case 'J': // Force an NTP check to update the RTC
              incomingClient.print(F("J detected, forcing an NTP check, time is: "));
              incomingClient.println(getTimeWithZeros());
              returnStatus = "";
              compareRTCwithNTP();
//              incomingClient.print(F("NTP time, raw: "));
//              incomingClient.println(String(getNtpTime()));
//              incomingClient.print(F("RTC time, raw: "));
//              incomingClient.println(String(RTC.get()));
              incomingClient.println();
              incomingClient.print(F("NTP check finished. Time is: "));
              incomingClient.println(getTimeWithZeros());
              incomingClient.println(returnStatus);
              break;
              
            case 'T':   // Add one hour to Time
              incomingClient.print(("T detected, adding one hour to RTC time for Daylight Saving update. Current time is: "));
              incomingClient.println(getTimeWithZeros());
              rtcSetStatus = RTC.set(now() + 3600);
              incomingClient.print(F("RTC is now set, return status: "));
              incomingClient.print(rtcSetStatus);
              incomingClient.print(F(" time is "));
              incomingClient.println(getTimeWithZeros());
              incomingClient.println();
              incomingClient.println(F("---===  Note!! It takes 10 minutes for the system time to update after RTC fix!! ===------"));
              break;
              
            case 't':   // Add one hour to Time
              incomingClient.print(("t detected, subtracting one hour from time for Daylight Saving update. Current time is: "));
              incomingClient.println(getTimeWithZeros());
              rtcSetStatus = RTC.set(now() - 3600);
              incomingClient.print(F("RTC is now set, return status: "));
              incomingClient.print(rtcSetStatus);
              incomingClient.print(F(" time is "));
              incomingClient.println(getTimeWithZeros());
              incomingClient.println();
              incomingClient.println(F("---===  Note!! It takes 10 minutes for system time to update after RTC fix!! ===------"));
              break;

            case 'W': // adjust "wake up" time 15 minutes earlier
              incomingClient.print(F("W detected, adding 15 minutes to morning wake-up time... "));
              minutesBeforeSunrise = minutesBeforeSunrise + 15;
              if (minutesBeforeSunrise > 120) { minutesBeforeSunrise = 120; }
              eeCharTemp = minutesBeforeSunrise;
              EEPROM.put(eeMinutesBeforeSunrise, eeCharTemp);
              incomingClient.print(F(" - DONE, now waking up "));
              incomingClient.print(minutesBeforeSunrise);
              incomingClient.println(F(" minutes before sunrise."));
              break;

            case 'w': // adjust "wake up" time 15 minutes later
              incomingClient.print(F("w detected, subtracting 15 minutes from morning wake-up time... "));
              minutesBeforeSunrise = minutesBeforeSunrise - 15;
              if (minutesBeforeSunrise < -120) { minutesBeforeSunrise = -120; }
              eeCharTemp = minutesBeforeSunrise;
              EEPROM.put(eeMinutesBeforeSunrise, eeCharTemp);
              incomingClient.print(F(" - DONE, now waking up "));
              incomingClient.print(minutesBeforeSunrise);
              incomingClient.println(F(" minutes before sunrise."));
              break;

            case 'Z': // adjust sleep (ZZZzzz) time 15 minutes later
              incomingClient.print(F("S detected, adding 15 minutes to night go-to-sleep time... "));
              minutesAfterSunset = minutesAfterSunset + 15;
              if (minutesAfterSunset > 120) { minutesAfterSunset = 120; }
              eeCharTemp = minutesAfterSunset;
              EEPROM.put(eeMinutesAfterSunset, eeCharTemp);
              incomingClient.print(F(" - DONE, now going to sleep "));
              incomingClient.print(minutesAfterSunset);
              incomingClient.println(F(" minutes after sunset."));
              break;

            case 'z': // adjust sleep (ZZZzzz) time 15 minutes earlier
              incomingClient.print(F("s detected, subtracting 15 minutes from night go-to-sleep time... "));
              minutesAfterSunset = minutesAfterSunset - 15;
              if (minutesAfterSunset < -120) { minutesAfterSunset = -120; }
              eeCharTemp = minutesAfterSunset;
              EEPROM.put(eeMinutesAfterSunset, eeCharTemp);
              incomingClient.print(F(" - DONE, now going to sleep "));
              incomingClient.print(minutesAfterSunset);
              incomingClient.println(F(" minutes after sunset."));
              break;
              
            case '?':   // HELP
              // print help
              incomingClient.println(F("Options:"));
              incomingClient.println(F("q or Q: Quit. Disconnects telnet session."));
              incomingClient.println(F("R: Reset unit (watchdog reset)."));
              incomingClient.println(F("C: Cache, print cached weather lines."));
              incomingClient.println(F("D: Dump SD file for today (only valid if SD card exists)."));
              incomingClient.println(F("U: Toggle ubiquiti between Always On and Off except for send every 5 minutes. Always off at night regardless."));
              incomingClient.println(F("B: Camera viewing Brain."));
              incomingClient.println(F("S: Camera viewing South."));
              incomingClient.println(F("N: Camera viewing North."));
              incomingClient.println(F("A: Turn ON all Cameras (Brain Box, South, North)."));
              incomingClient.println(F("a: Turn OFF all Cameras (Brain Box, South, North)."));
              incomingClient.println(F("X: Bad Weather forecast, disable AUTO TURN ON for cameras. Can still be manually turned on."));
              incomingClient.println(F("J: Force an NTP check to see if the RTC should be updated."));
              incomingClient.println(F("T: Add one hour to RTC clock, for DST end in Fall. Takes 10 minutes to take effect!!"));
              incomingClient.println(F("t: Subtract one hour from RTC clock, for DST begin in Spring. Takes 10 minutes to take effect!!"));
              incomingClient.println(F("W: Add 15 minutes to morning wake time, wakes up earlier."));
              incomingClient.println(F("w: Subtract 15 minutes from morning wake time, wake up later."));
              incomingClient.println(F("Z: Add 15 minutes to night go-to-sleep (Zzzz) time, stay up later."));
              incomingClient.println(F("z: Subtract 15 minutes from night go-to-sleep (Zzzz) time, go to sleep earlier."));
              incomingClient.println("");
              incomingClient.print(F("  Minutes before Sunrise: ")); incomingClient.println(minutesBeforeSunrise);
              incomingClient.print(F("  Minutes after Sunset:   ")); incomingClient.println(minutesAfterSunset);
              incomingClient.print(F("  camStatus EEPROM value: ")); incomingClient.println(EEPROM.read(eeCamStatus));
              incomingClient.print(F("  Bad Weather bit:        ")); incomingClient.println(camStatus.badWeather);
              incomingClient.print(F("  CamSouth desired on:    ")); incomingClient.println(camStatus.SouthDesireOn);
              incomingClient.print(F("  CamNorth desired on:    ")); incomingClient.println(camStatus.NorthDesireOn);
              incomingClient.print(F("  CamBrain desired on:    ")); incomingClient.println(camStatus.BrainDesireOn);
              incomingClient.print(F("  CamSnapshot value:      ")); incomingClient.println(camSnapshot);
              incomingClient.print(F("  Ubiquiti Keep on:       ")); incomingClient.println(EEPROM.read(eeKeepUbiOn));
              incomingClient.print(F("  Solar   V: "));              incomingClient.print(String(ina219a_volts, 2));
                incomingClient.print(F(", mA: "));                     incomingClient.println(String(ina219a_ma, 0));
              incomingClient.print(F("  Battery V: "));              incomingClient.print(String(ina219b_volts, 2));
                incomingClient.print(F(", mA: "));                     incomingClient.println(String(ina219b_ma, 0));
              incomingClient.print(F("  Battery drain minutes: "));  incomingClient.print(String(battDrainMinutes));
                incomingClient.print(F(", mAm: "));                    incomingClient.print(String(battDrainmA));
                incomingClient.print(F(", mAh = "));                   incomingClient.println(String(battDrainmA / 60));
              incomingClient.print(F("  ina219_MMA loops: "));       incomingClient.println(String(ina219a_MMAloops));
              incomingClient.print(F("  Temp internal: "));          incomingClient.println(String(bme280b.readTempC()));
              incomingClient.print(F("  Humidity int:  "));          incomingClient.println(String(bme280b.readFloatHumidity()));
              incomingClient.print(F("  Sunrise / Wake: "));
                incomingClient.print(strMinutesToHHMM(sunrise));
                incomingClient.print(" - "); incomingClient.print(minutesBeforeSunrise); incomingClient.print(" minutes = ");
                incomingClient.println(strMinutesToHHMM(sunrise - minutesBeforeSunrise));
              incomingClient.print(F("  Sunset / Sleep: "));
                incomingClient.print(strMinutesToHHMM(sunset));
                incomingClient.print(" + "); incomingClient.print(minutesAfterSunset); incomingClient.print(" minutes = ");
                incomingClient.println(strMinutesToHHMM(sunset + minutesAfterSunset));
              incomingClient.println();
              incomingClient.print(F("  Free ram:      "));          incomingClient.println(String(freeRam()));
              incomingClient.println(startupMessage);
              incomingClient.println();
              break;
          }
        }
        wdt_reset();
        if (boolQuitSession) {
          incomingClient.println("Session quit, DISCONNECTING.");
          break;
        }
        if ((millis() - msTemp) > 20000) {
          incomingClient.println("Idle timeout reached, DISCONNECTING.");
          break;
        } else if ((millis() - msTemp) > 10000) {
          // Been 10 seconds with no input, give a warning
          if (not timeoutWarningGiven) {
            incomingClient.println("Idle timeout in 10 seconds....");
            timeoutWarningGiven = true;
          }
        } else if (timeoutWarningGiven) {
          // less than 10 secs but warning already given means timer was reset. Reset the warning too.
          timeoutWarningGiven = false;
        }
        //incomingClient.stop();
      }
      delay(3);
      incomingClient.println();
      incomingClient.print(getTimeWithZeros());
      incomingClient.println(": Ending Session. Goodbye!");
      delay(10);
      incomingClient.stop();
      Serial.println();
      Serial.print(F("Incoming client disconnected after "));
      Serial.print(millis() - usTemp);
      Serial.println("ms.");
      telnetSeconds = (millis() - usTemp) / 1000;
    }
  } // End of incoming Ethernet connection handling

}

void setKeepUbiquitiOn(bool v) {
    keepUbiquitiOn = v;
    EEPROM.update(eeKeepUbiOn, v);
}

// Turns on power for components needed for network connectivity
void enableEthernet() {

  // DON'T KEEP ENABLING ONCE IT'S ALREADY ENABLED! It's wasteful. Also it makes an endless loop if the 30 seconds crosses the "second zero" boundary.
  if (ethEnabled) return;

//jjj20f first turn Ethernet shield on
  pinMode(PIN_ETH_CONTROL, OUTPUT);                     // prepares ETH power control pin
  digitalWrite(PIN_ETH_CONTROL, ETH_ENABLED);           // turns ETH shield on
  
  // ETH takes ~2 seconds to be ready to send when turned on // jjj 0 4 8 
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

  PrintSpiPinMode();
  
  Serial.println();
  Serial.print(getTimeWithZeros());
  Serial.println(F(": enableEthernet() called, startup delay ? seconds:  0")); //jjj ln, ?

//jjj20f  Re-enable just in case the pins were disabled during power save.
  pinMode(SS,   OUTPUT);
  pinMode(SCK,  OUTPUT);
  pinMode(MISO, INPUT);
  pinMode(MOSI, OUTPUT);
  digitalWrite (MISO, HIGH);    //jjj20f pullup
  digitalWrite (SS, HIGH);      //jjj20f to select spi master
//jjj20f   digitalWrite (SCK, LOW);     //jjj20f is low already
//jjj20f   digitalWrite (MOSI, LOW);    //jjj20f  is low already
//jjj20f SPI will be fully initialized by Ethernet.begin 

  wdt_reset(); //jjj
  Serial.println("Ethernet.begin; ");
  Ethernet.begin(mac, ip, dnsServer, gateway, subnet); // Eth must be initialized after each power up
    delay(1000); //jjj20d back to 1000 
    W5100.setRetransmissionTime(0x07D0);  // reduce wait
    W5100.setRetransmissionCount(4);
  Serial.println("server.begin(); ");  //jjj ln
  server.begin();
  ethEnabled = true;

  Serial.print(millis());
  Serial.print(F("ms: Started Ethernet. Local IP is "));
  Serial.println(Ethernet.localIP());

  PrintSpiPinMode();

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

#ifdef TENMINUTEDAY
  // For debugging lets leave the ethernet on
  Serial.println(F("Leaving Ethernet on for #TENMINUTEDAY"));
  return;
#endif
  
  incomingClient.stop();
  client.stop();

  //print the pinmodes first
  PrintSpiPinMode();

//jjj20f       Turn off Ethernet shield
//             Unlike regular boots, the Ethernet shield's SPI pins will be active after a reset because of the Ariadne Bootloader.
//             When powering down the Ethernet shield, all connected pins must be set to low or preferrably inputs without pullups

  // turn off SPI machine 
  SPI.end(); 
  pinMode(MOSI, INPUT);                    //             prevents leakage through ESD diodes
  pinMode(MISO, INPUT);                    //             prevents leakage through ESD diodes
  pinMode(SCK,  INPUT);                    //             prevents leakage through ESD diodes
  pinMode(SS,   INPUT);                    //             prevents leakage through ESD diodes

  pinMode(PIN_ETH_CONTROL, OUTPUT);                      // prepares ETH power control pin
  digitalWrite(PIN_ETH_CONTROL, ETH_DISABLED);           // turns ETH shield off
  ethEnabled = false;

}

void enableWifi() {

  if (wifiEnabled or wifiStartTime) return;
  Serial.print(F("enableWifi called, wasn't already enabled. Delay seconds: ")); Serial.println(wifiStartupDelay);

  pinMode(PIN_UBIQUITI_CONTROL, OUTPUT);                 // prepares Ubiquiti power control pin
  digitalWrite(PIN_UBIQUITI_CONTROL, UBIQUITI_ON);  // turns Ubiquiti on
  wifiStartTime = millis();
  
  // Rest of enabling happens in loop() where we check that it's been wifiStartupDelay seconds (currently 55, may be out of date)

}

void disableWifi() {

  Serial.print(getTimeWithZeros());
  Serial.println(F(": disableWifi() called."));

  if (keepUbiquitiOn and isDaytime) {
    // do nothing, keep it on!
    Serial.println(F(" Wifi left on due to keepUbiquitiOn flag."));
    return;
  }

  if (wifiStartTime) {
    // do nothing, something has requested the wifi be turned on so we'll leave it on.
    // up to that thing to turn it off after it's done.
    Serial.println(F(" Wifi left on due to wifiStartTime > 0, meaning something is starting up wifi."));
    return;
  }

  if (camSnapshot) {
    // do nothing, a camera snapshot has been requested so we leave wifi on for a bit.
    Serial.println(F(" Wifi left on due to camera snapshot request."));
    return;
  }

  if (hour() == 11 and minute() > 48) {
    // Leave it all on for ~10 minutes, once a day. Just-in-case.
    Serial.println(F("Leaving Ubiquiti on from 11:50 to noon"));
    return;
  }

#ifdef TENMINUTEDAY
  // For debugging lets leave the "ubiquiti" on
  Serial.println(F("Leaving Ubiquiti on for #TENMINUTEDAY"));
  return;
#endif


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
  if (bit & (bit - 1)) return UNKNOWN_PIN;

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
    Serial.println("   NTP requested, but NO PACKET SENT due to Wifi not enabled or ready.");
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
void sendNTPpacket(char* address)
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
void sendNTPpacket(IPAddress address)
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


void compareRTCwithNTP() {
  
  //Compare RTC to NTP, to set the RTC.
  unsigned int diffNTPRTC = 0;

  if (CheckDST()) {
    timeZone = -7;
  } else {
    timeZone = -8;
  }

  returnStatus += "TZ: ";
  returnStatus += String(timeZone);
  
  time_t timeRTC = RTC.get();
  time_t timeNTP = getNtpTime();
  if ((timeRTC == 0) or (timeNTP == 0)) {
    // RTC and NTP will both return zero on error. Don't bother if either one is invalid / unreadable.
    diffNTPRTC = 0;
    returnStatus += " RTC or NTP was 0. ";
  } else if (timeNTP > timeRTC) {
    diffNTPRTC = timeNTP - timeRTC;
  } else {
    diffNTPRTC = timeRTC - timeNTP;
  }
  if (diffNTPRTC > 0) {
    returnStatus += F("NTP and RTC differ by ");
    returnStatus += String(diffNTPRTC);
    if (diffNTPRTC == 1) Serial.print(" second.");
    if (diffNTPRTC >  1) Serial.print(" seconds.");
    if (diffNTPRTC >  5) {
      Serial.print("RTC time is ");
      Serial.print(timeRTC);
      Serial.print(", setting RTC to ");
      Serial.print(timeNTP);
      byte rtcSetStatus;
      rtcSetStatus = RTC.set(timeNTP);
      if (rtcSetStatus) {
        Serial.print(" FAILED. Error code: ");
        Serial.print(rtcSetStatus);
        returnStatus += F(" - Failed! RTC status: ");
        returnStatus += String(rtcSetStatus);
      } else {
        Serial.print(" done.");
        setTime(timeNTP);
        returnStatus += F("Done, RTC updated.");
      }
    }
    Serial.println();
  }
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

// Given minutes-after-midnight (like int sunset or int sunrise), turn that into military HH:MM with padded zeros
String strMinutesToHHMM(int M) {

  String S;

  if (M / 60 < 10) S += "0";
  S += String(M / 60);
  S += ":";

  if (M % 60 < 10) S += "0";
  S += String(M % 60);

  return S;
}


