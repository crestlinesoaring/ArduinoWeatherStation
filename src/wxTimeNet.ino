/*
 * 
 * Functions for handling time and some network related duties. Like NTP.
 * 
 */
/* Check for incoming data on the Ethernet server.
 *  Typically stuff like reset requests, maybe update EEPROM values, print current data cache, etc...
 */
bool checkEthIncomingData() {
#ifdef BENCH_MODE
  if (!ethEnabled) return false;
#else
  if (!wifiEnabled) return false;
#endif
    usTemp = millis();  // using usTemp so we can use msTemp as a timeout timer below.
    bool timeoutWarningGiven = false;
    bool boolQuitSession = false;
    // Local variables for setting the RTC:
    unsigned long RTCSetTimeoutStart;
    bool RTCSetTimeoutExceeded;
    time_t RTCSett;
    tmElements_t RTCSettm;
    wdt_reset();
    incomingClient = server.available();
    if (incomingClient) {
      Serial.println(F("Ethernet client connected!"));
      incomingClient.println(F("Hi there, it's me, the Marshall weather station! Send '?' for help."));
      // Probably just waiting here is enough to cause a WatchDog reset, which is all we really need.
      while (incomingClient.connected()) {
        //Serial.print(F("Entering While incomingClient.connected() at ms: "));
        //Serial.println(millis());
        if (incomingClient.available()) {
          msTemp = millis();
          char c = incomingClient.read();
          while(incomingClient.available()) incomingClient.read(); //clean buffer just to be safe
          char fileName[13];
          String strFileName;
          int rtcSetStatus;
          // Echoing disabled by JLT 2023
          // Serial.write(c);
          // incomingClient.print(c);

          switch (c) {
            case 'q':
            case 'Q': // for quit/Quit
              boolQuitSession = true;
              break;
            
            case 'R': // for Reset
              wdt_reset();
              Serial.println(F("---===---===--- Client hit R and [enter], which causes the reboot ---===---===---"));
              incomingClient.println(F("R and Enter detected. Rebooting and disconnecting."));
              wdt_disable();              // kill interference
              wdt_enable(WDTO_15MS);      // set WD reset timeout to 15msec
              while (true);                  // wait for WD to happen
              break;                      // End of 'R'eset

            case 'M':                     // 'M'anually enable (no-timeout) TFTP mode and make a Reset to trigger TFTP mode
              wdt_reset();                // prevent timeout for now
              Serial.println(F("---===---===--- Client hit M and [enter], which sets the TFTP EEPROM flag and issues a WD reset to trigger TFTP mode---===---===---"));
              incomingClient.println(F("M and Enter detected. Seeting flag, rebooting and disconnecting."));
              EEPROM.write(02,0xDD);      // enableUpdateMode, set the TFTP mode via flag (0xDD) in EEPROM location 02
              delay(100);                 // strangely must wait here for it to work
              wdt_disable();              // kill interference
              wdt_enable(WDTO_15MS);      // set WD reset timeout to 15msec
              while (true);               // wait 15msec for WD to happen, Mega will be in TFTP mode after reset
              break;                      // End of 'M'anual TFTP + reset
              
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
              
            case 'H': // Set time of RTC.
              incomingClient.println(F("H detected. Set RTC by providing timestamp."));
              RTCSetTimeoutStart = millis();
              RTCSetTimeoutExceeded = false;
              incomingClient.println(F("Expected format: year,month,day,hour,minute,second"));
              incomingClient.println(F("Where: year has four digits, month is 1-12, day is 1-31, hour is 0-23, minute and second are 0-59."));
              incomingClient.println(F("Type anything else to abort. Timeout is 300 seconds."));
              while(!incomingClient.available()){ //wait for user input resetting the watchdog_timer()
                wdt_reset(); //reset watchdog while wating
                msTemp = millis(); //Reset general client connection timeout while waiting.
                delay(100);
                if(millis()-RTCSetTimeoutStart > 300000){ 
                  incomingClient.println(F("Timeout for RTC setting exceeded. Send 'H' to retry."));
                  RTCSetTimeoutExceeded = true;
                  break;
                }
              }
              if (RTCSetTimeoutExceeded) break;
              if (incomingClient.available() < 12) incomingClient.println(F("Error: Timestamp too short! Send 'H' again to retry."));
              else {
                int y = incomingClient.parseInt();
                if (y < 1000) incomingClient.println(F("Error: Year must be > 1000!"));
                else {
                  RTCSettm.Year = CalendarYrToTm(y);
                  RTCSettm.Month = incomingClient.parseInt();
                  RTCSettm.Day = incomingClient.parseInt();
                  RTCSettm.Hour = incomingClient.parseInt();
                  RTCSettm.Minute = incomingClient.parseInt();
                  RTCSettm.Second = incomingClient.parseInt();
                  RTCSett = makeTime(RTCSettm);
                  RTC.set(RTCSett);
                  setTime(RTCSett);
                  incomingClient.println(F("Setting RTC succesful! New time is:"));
                  incomingClient.print(getDateWithZeros()); incomingClient.print(" "); incomingClient.println(getTimeWithZeros());
                  while (incomingClient.available() > 0) incomingClient.read(); //flush buffer
                }
              }
              msTemp = millis(); //Reset general client connection timeout.
              break;
              
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
              // incomingClient.print(F("NTP time, raw: "));
              // incomingClient.println(String(getNtpTime()));
              // incomingClient.print(F("RTC time, raw: "));
              // incomingClient.println(String(RTC.get()));
              incomingClient.println();
              incomingClient.print(F("NTP check finished. Time is: "));
              incomingClient.println(getTimeWithZeros());
              incomingClient.println(returnStatus);
              break;
              
            case 'T':   // Add one hour to Time
              incomingClient.println(F("H detected. Set RTC by providing timestamp."));
              incomingClient.print(F("T detected, adding one hour to RTC time for Daylight Saving update. Current time is: "));
              incomingClient.println(getTimeWithZeros());
              rtcSetStatus = RTC.set(now() + 3600);
              incomingClient.print(F("RTC is now set, return status: "));
              incomingClient.print(rtcSetStatus);
              incomingClient.print(F(" time is "));
              incomingClient.println(getTimeWithZeros());
              incomingClient.println();
              incomingClient.println(F("---===  Note!! It takes 10 minutes for the system time to update after RTC fix!! ===------"));
              break;
              
            case 't':   // Subtract one hour from Time
              incomingClient.print(F("t detected, subtracting one hour from time for Daylight Saving update. Current time is: "));
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
              incomingClient.println(F("H: Set time and date of RTC."));
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
              incomingClient.print(F("  Ubiquiti Keep on:       ")); incomingClient.println(EEPROM.read(eeKeepUbiOn));
              incomingClient.print(F("  Solar   V: "));              incomingClient.print(String(ina219a_solar_volts, 2));
                incomingClient.print(F(", mA: "));                     incomingClient.println(String(ina219a_solar_ma, 0));
              incomingClient.print(F("  Battery V: "));              incomingClient.print(String(ina219b_battery_volts, 2));
                incomingClient.print(F(", mA: "));                     incomingClient.println(String(ina219b_battery_ma, 0));
              incomingClient.print(F("  Lowest batt voltage since boot:  "));  incomingClient.println(String(voltsLowestSeen, 2));
              incomingClient.print(F("  Lowest batt voltage last sleep:  "));  incomingClient.println(String(EEPROM.read(eeVoltsLowestSeen) / 10.0, 1));
              incomingClient.print(F("  Lowest batt voltage day:  "));         incomingClient.println(String(EEPROM.read(eeVoltsLowestDay)));
              incomingClient.print(F("  Battery drain minutes: "));  incomingClient.print(String(battDrainMinutes));
                incomingClient.print(F(", mAm: "));                    incomingClient.print(String(battDrainmA));
                incomingClient.print(F(", mAh = "));                   incomingClient.println(String(battDrainmA / 60));
              incomingClient.print(F("  ina219_MMA loops: "));       incomingClient.println(String(ina219a_solar_MMAloops));
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
              incomingClient.print(F("  Current time: "));           incomingClient.println(getTimeWithZeros());
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
      return true; // return true if a telnet communication took place
    }
  return false; //return false if no telnet communication took place
}

void setKeepUbiquitiOn(bool v) {
    keepUbiquitiOn = v;
    EEPROM.update(eeKeepUbiOn, v);
}

// Activate power supply and SPI bus of Ethernet card. Nothing else! 
void ethernetPowerOn(){
  // Turn shield on:
  pinMode       (PIN_ETH_RESET, OUTPUT);          // prepare ETH reset control pin
  digitalWrite  (PIN_ETH_RESET, ETH_RESET);       // turn ETH reset on, transition to power with reset active  
  pinMode       (PIN_ETH_POWER, OUTPUT);          // prepare ETH power control pin
  digitalWrite  (PIN_ETH_POWER, ETH_ON);          // turn ETH shield on
  delay(100);
  digitalWrite  (PIN_ETH_RESET, ETH_NORESET);     // turn ETH reset off
  delay(100);
  // Activate SPI bus:
  pinMode       (SCK,   OUTPUT);
  pinMode       (MISO,  INPUT);
  pinMode       (MOSI,  OUTPUT);
  digitalWrite  (MISO,  HIGH);                    // SPI pullup
  pinMode       (SS,    OUTPUT);
  digitalWrite  (SS,    HIGH);
  Ethernet.init (SS);                             // This pin ChipSelects the W5500 board on the SPI bus
  delay(100);                                     // jjjjj? delay needed?? from 1500
  wdt_reset();
}


// Deactivate power supply and SPI bus of Ethernet card. Nothing else! 
void ethernetPowerOff(){
  // Deactivate SPI bus:
  SPI.end(); 
  pinMode       (MOSI,  INPUT);                   // prevents leakage through W5500 ESD diodes
  pinMode       (MISO,  INPUT);                   // prevents leakage through ESD diodes
  pinMode       (SCK,   INPUT);                   // prevents leakage through ESD diodes
  pinMode       (SS,    INPUT);                   // prevents leakage through ESD diodes
  // Turn shield off:
  pinMode       (PIN_ETH_RESET, OUTPUT);          // prepare ETH reset control pin
  digitalWrite  (PIN_ETH_RESET, ETH_RESET);       // turn on (and keep on) ETH reset for smoother power transition 
  pinMode       (PIN_ETH_POWER, OUTPUT);          // prepare ETH power control pin
  digitalWrite  (PIN_ETH_POWER, ETH_OFF);         // turn ETH shield off
}


// Turns on power for components needed for network connectivity
void enableEthernet() {
  // DON'T KEEP ENABLING ONCE IT'S ALREADY ENABLED! It's wasteful. Also it makes an endless loop if the 30 seconds crosses the "second zero" boundary.
  if (ethEnabled) return;
  wdt_reset();
  Serial.println("Executing enableEthernet()."); 
  ethernetPowerOn();                              // Activate power supply and SPI bus
  Ethernet.begin(mac, ip, dnsServer, gateway, subnet); // Eth must be initialized after each power up
  Serial.println("Ethernet.begin executed. Wating for 5 sec"); 
  delayWithWdt(EthStartupDelay);                  // must wait at least @ 5000ms; feed WD during wait
  wdt_reset();
  Serial.println(" Done.");
  Serial.print("Link hopefully connected. Local IP is ");
  Serial.println(Ethernet.localIP());
  W5100.setRetransmissionTime(0x07D0);            // reduce wait
  W5100.setRetransmissionCount(4);
  server.begin();                                 //jjjjj? why is that here?
  delayWithWdt(100);                              //jjjjj down from 2500
  ethEnabled = true;
  wdt_reset();
}

void resetEthernet(){ // Resets the ethernet shield. Delays incorporated! Takes about 5.3 seconds.
  wdt_reset(); // keep WD away
  Serial.print("Resetting ethernet card...");
  pinMode(PIN_ETH_RESET, OUTPUT);                 // prepares ETH reset control pin
  digitalWrite(PIN_ETH_RESET, ETH_RESET);         // reset W5500
  delay(100);                                     // for 100ms
  digitalWrite(PIN_ETH_RESET, ETH_NORESET);       // turn off reset, let W5500 boot up
  delay(100);                                     // for 100ms
  pinMode(SS,   OUTPUT);
  digitalWrite (SS, HIGH);                        // select master mode for SPI bus
  Ethernet.init (SS) ;                            // This pin ChipSelects the W5500 board on the SPI bus
  delay(100);                                     // jjjjj? is this time delay needed at all? check source?
  Ethernet.begin(mac, ip, dnsServer, gateway, subnet); // Eth must be initialized after each power up
  Serial.println("Ethernet.begin executed. Wating for 5 sec"); 
  delayWithWdt(5000);                           // must wait at least 5000ms; feed WD during wait
  wdt_reset();
  W5100.setRetransmissionTime(0x07D0);            // reduce wait
  W5100.setRetransmissionCount(4);                // reduce retries
  Serial.println("Done.");
}

// Turns off power for network components to save power
void disableEthernet() {
  Serial.print(getTimeWithZeros());
  Serial.println(F(": disableEthernet() called."));
  
  if (hour() == 11 and minute() > 48) {
    // Leave it all on for ~10 minutes, once a day. Just-in-case.
    Serial.println(F("Leaving Ethernet on from 11:50 to noon"));
    return;
  }
  
  incomingClient.stop();
  client.stop();

  ethernetPowerOff();                             // Turn off Ethernet shield

  ethEnabled = false;
}

void enableWifi() {

#ifdef BENCH_MODE
  Serial.println(F("enableWifi() skipped in BENCH_MODE (Ethernet only)."));
  return;
#endif
  
  Serial.print("enableWifi() called.");
  
  if (wifiEnabled){ 
    Serial.println("enable Wifi() aborted: Wifi is already enabled.");
    return;
  }
  if (wifiStartTime){
    Serial.println("enable Wifi() aborted: Wifi is already starting up.");
    return;
  }
  
  Serial.print(F("Wasn't already enabled. Delay seconds: ")); Serial.println(wifiStartupDelay);

  pinMode(PIN_UBIQUITI_POWER, OUTPUT);                 // prepares Ubiquiti power control pin
  digitalWrite(PIN_UBIQUITI_POWER, UBIQUITI_ON);  // turns Ubiquiti on
  wifiStartTime = millis();
  // Rest of enabling happens in loop() where we check that it's been wifiStartupDelay seconds (currently 55, may be out of date)
}

void waitForWifi() {
  while(true){
    wdt_reset();  
    if (not (int((millis() - wifiStartTime) / 1000) % 10)) { 
      Serial.print("Waiting for wifi to start up, it's been "); Serial.print((millis() - wifiStartTime) / 1000,10); Serial.println(" seconds.");
    }
    if ((millis() - wifiStartTime) / 1000 > wifiStartupDelay) {
      Serial.println(" Done waiting! Wifi Enabled.");
      wifiStartTime = 0;
      wifiEnabled = true;
      break;
    }
    delay(1000);
  }
}

void disableWifi() {

  Serial.print(getTimeWithZeros());
  Serial.println(F(": disableWifi() called."));

  if (keepUbiquitiOn) {
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


  pinMode(PIN_UBIQUITI_POWER, OUTPUT);                  // prepares Ubiquiti power control pin
  digitalWrite(PIN_UBIQUITI_POWER, UBIQUITI_OFF);  // turns Ubiquiti off
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
  // Calculated in minutes of the day. E.g. sunrise at 6 am -> sunrise = 360
  // From http://forum.arduino.cc/index.php/topic,66426.msg487457.html#msg487457
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

int getTimeZone(void) {
      if (CheckDST()) {
        return -7;
      } else {
        return -8;
      }
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
  Udp.begin(localPort);
  while (Udp.parsePacket() > 0) ; // discard any previously received packets
  Serial.println("Transmit NTP Request");
  sendNtpPacket(timeServer);
  uint32_t beginWait = millis();
  while (millis() - beginWait < 1500) {
    wdt_reset();
    int size = Udp.parsePacket();
    if (size >= NTP_PACKET_SIZE) {
      Serial.println("Receive NTP Response");
      Udp.read(packetBuffer, NTP_PACKET_SIZE);  // read packet into the buffer
      unsigned long secsSince1900;
      // convert four bytes starting at location 40 to a long integer
      secsSince1900 =  (unsigned long)packetBuffer[40] << 24;
      secsSince1900 |= (unsigned long)packetBuffer[41] << 16;
      secsSince1900 |= (unsigned long)packetBuffer[42] << 8;
      secsSince1900 |= (unsigned long)packetBuffer[43];
      return secsSince1900 - 2208988800UL + timeZone * SECS_PER_HOUR;
    }
  }
  Serial.print(F("After waiting "));
  Serial.print(millis() - beginWait);
  Serial.println(F("ms, No NTP Response :-("));
  Udp.stop();	 
  return 0; // return 0 if unable to get the time
}

// send an NTP request to the time server at the given address (DNS lookup version, see IPAddress() version below)
void sendNtpPacket(IPAddress &address)
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


bool isTimeValid(time_t time_to_check){
  // Compares time_to_check year to the year of the Software Version Date. If it is more than 1 year before or more then 5 years after, time is not valid!
  int ttc_year = year(time_to_check);
  if ((ttc_year >= version_year-1) and (ttc_year <= version_year + 5)) return true;
  return false;
}


bool setArduinoTimeWithNtp(){
  // gets time from NTP server but checks validiy before setting Arduino time with it. Returns success as boolean.
  time_t _ntp_time = getNtpTime();
  if (_ntp_time == 0) {
    Serial.println("Setting of Arduino time from NTP failed, because NTP not available!");
    return false; 
  }
  if (!isTimeValid(_ntp_time)) {
    Serial.println("Setting of Arduino time from NTP failed, because NTP not valid! NTP time is not consistent with software version date.");
    return false; 
  }
  setTime(_ntp_time);
  return true;
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

String time_t_to_datetime_string(time_t tt){
  String dts = (String)year(tt) + "/" + (String)month(tt) + "/" + (String)day(tt) + " ";
  dts += (String)hour(tt) + ":" + (String)minute(tt) + ":" + (String)second(tt);
  return dts;
}

// Compact station-config suffix for the first upload after boot (sub, ip, gw, q3).
String makeStationDefinesSuffix() {
  String s;
  s += F(",");
  s += wxBetaText;
  s += F(",q3=");
  s += IPq3;
  s += F(",ip=");
  s += IPWX;
  s += F(",gw=");
  s += IPgw;
  return s;
}

// Build the HTTP PUT request used to upload a weather string to the CSS web site.
// Site name (wxSiteName), path (wxUploadPath) and data subfolder (wxBetaText) are defined in Marshall.h.
String makeUploadWeatherPut(String wxString) {
  String strPut;
  strPut += F("PUT ");
  strPut += wxUploadPath;
  strPut += F("?sub=");
  strPut += wxBetaText;
  strPut += F("&w=");
  strPut += wxString;
  strPut += F(" HTTP/1.1\r\nHost: ");
  strPut += wxSiteName;
  strPut += F("\r\nConnection: close\r\n\r\n\r\n");
  return strPut;
}
