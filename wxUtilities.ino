/*
 * 
 * Various utility functions like string manipulation, etc.
 * Stuff that doesn't fit anywhere else. Just to clear up the main one a bit.
 * 
 */

 
//Returns the instataneous wind speed
float get_wind_speed()
{
    float deltaTime = millis() - lastWindCheck; // (ex: 750ms)
    deltaTime /= 1000.0; //Covert to seconds
    float windSpeed = (float)windClicks / deltaTime; // (ex, 3 clicks / 0.750s = 4 clicks per second)

    minuteWindClicks += windClicks;
    windClicks = 0; //Reset and start watching for new wind
    lastWindCheck = millis();
    windSpeed *= 1.492; //4 * 1.492 = 5.968MPH

    return(windSpeed);
}

//Read the wind direction sensor, return heading in degrees
int get_wind_direction()
{
    unsigned int adc;

    adc = analogRead(WDIR); // get the current reading from the sensor
    winddirRaw = adc;       // Save the ADC value for troubleshooting.

    // The following table is ADC readings for the wind direction sensor output, sorted from low to high.
    // Each threshold is the midpoint between adjacent headings. The output is degrees for that ADC reading.
    // Note that these are not in compass degree order! See Weather Meters datasheet for more information.

    if      (adc <   81 )  { strWindDir = "ERL"; return (-10); }
    else if (adc <  186 )  { strWindDir = "ESE"; return (113); }   // ESE
    else if (adc <  215 )  { strWindDir = "ENE"; return  (68); }   // ENE
    else if (adc <  258 )  { strWindDir = "E";   return  (90); }   // E
    else if (adc <  341 )  { strWindDir = "SSE"; return (158); }   // SSE
    else if (adc <  436 )  { strWindDir = "SE";  return (135); }   // SE
    else if (adc <  508 )  { strWindDir = "SSW"; return (203); }   // SSW
    else if (adc <  600 )  { strWindDir = "S";   return (180); }   // S
    else if (adc <  689 )  { strWindDir = "NNE"; return  (23); }   // NNE
    else if (adc <  766 )  { strWindDir = "NE";  return  (45); }   // NE
    else if (adc <  827 )  { strWindDir = "WSW"; return (248); }   // WSW
    else if (adc <  859 )  { strWindDir = "SW";  return (225); }   // SW
    else if (adc <  902 )  { strWindDir = "NNW"; return (338); }   // NNW
    else if (adc <  934 )  { strWindDir = "N";   return   (0); }   // N
    else if (adc <  957 )  { strWindDir = "WNW"; return (293); }   // WNW
    else if (adc <  982 )  { strWindDir = "NW";  return (315); }   // NW
    else if (adc <  1008)  { strWindDir = "W";   return (270); }   // W
    else                   { strWindDir = "ERH"; return (-20); }
    return (-30); // Never get here
}



void ShowSockStatus()
{
  if (not ethEnabled) return; // Would cause an error if the Ethernet card has been disabled.
  // CLOSED 0x00 // LISTEN 0x14 // ESTABLISHED 0x17 // FIN_WAIT 0x18 // CLOSE_WAIT 0x1C // UDP 0x22
  for (int i = 0; i < MAX_SOCK_NUM; i++) {
    Serial.print("Socket#");
    Serial.print(i);
    uint8_t s = W5100.readSnSR(i);
    ethSockStatus[i] = s;
    Serial.print(":0x");
    Serial.print(s,16);
    Serial.print(" ");
    Serial.print(W5100.readSnPORT(i));
    Serial.print(" D:");
    uint8_t dip[4];
    W5100.readSnDIPR(i, dip);
    for (int j=0; j<4; j++) {
      Serial.print(dip[j],10);
      if (j<3) Serial.print(".");
    }
    Serial.print("(");
    Serial.print(W5100.readSnDPORT(i));
    Serial.println(")");
  }
}


int freeRam () {
  extern int __heap_start, *__brkval; 
  int v; 
  return (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval); 
}

void printDigits(int digits){
  // utility function adds leading 0
  if(digits < 10)
    Serial.print('0');
  Serial.print(digits);
}



void handleSerial() {
  // If there's serial data waiting, process it here.
  while (Serial.available()) {

    char c = Serial.read();
    
  }
}



// Turns on solar panels, allows battery charging and solar powering of peripherals.
// NOTE if this is disabled, everything runs on battery power, even in daytime.
void enableSolar() {
  Serial.print(getTimeWithZeros());
  Serial.println(" - Solar panel ENABLED via enableSolar();");
  pinMode(PIN_SOLAR_CONTROL, INPUT);                 // prepares Solar Panel control pin
  digitalWrite(PIN_SOLAR_CONTROL, SOLAR_CONNECTED);     // turns Solar Panel on

}

// Turns off solar panels. Use this carefully, it makes everything battery powered.
void disableSolar() {
  Serial.print(getTimeWithZeros());
  Serial.println(" - Solar panel DISABLED via disableSolar();");
  pinMode(PIN_SOLAR_CONTROL, OUTPUT);                  // prepares Solar Panel control pin
  digitalWrite(PIN_SOLAR_CONTROL, SOLAR_DISCONNECTED);    // turns Solar Panel off

}


// Camera control helper functions
void enableCamBrain() {
  if (camStatus.BrainDesireOn == false) {
    Serial.println(F("Enabling CamBrain"));
    digitalWrite(PIN_CamBrain_CONTROL, CamBrain_ON);
    camStatus.BrainDesireOn = true;
    EEPROM.put(eeCamStatus, camStatus);
  }
}
void disableCamBrain() {
  Serial.println(F("Disabling CamBrain"));
  digitalWrite(PIN_CamBrain_CONTROL, CamBrain_OFF);
  camStatus.BrainDesireOn = false;
  EEPROM.put(eeCamStatus, camStatus);
}

void enableCamNorth() {
  if (camStatus.NorthDesireOn == false) {
    Serial.println(F("Enabling CamNorth"));
    camStatus.NorthDesireOn = true;
    digitalWrite(PIN_CamNorth_CONTROL, CamNorth_ON);
    EEPROM.put(eeCamStatus, camStatus);
  }
}
void disableCamNorth() {
  Serial.println(F("Disabling CamNorth"));
  camStatus.NorthDesireOn = false;
  digitalWrite(PIN_CamNorth_CONTROL, CamNorth_OFF);
  EEPROM.put(eeCamStatus, camStatus);
}

void enableCamSouth() {
  if (camStatus.SouthDesireOn == false) {
    Serial.println(F("Enabling CamSouth"));
    digitalWrite(PIN_CamSouth_CONTROL, CamSouth_ON);
    camStatus.SouthDesireOn = true;
    EEPROM.put(eeCamStatus, camStatus);
  }
}
void disableCamSouth() {
  Serial.println(F("Disabling CamSouth"));
  digitalWrite(PIN_CamSouth_CONTROL, CamSouth_OFF);
  camStatus.SouthDesireOn = false;
  EEPROM.put(eeCamStatus, camStatus);
}

// Called to request that a cameras "snapshot" be taken. This process will change, but initially it means
// to turn on the cameras next time the ubiquiti turns on, and leave the ubiquiti on for at least 2 minutes.
// Then turn it all back off again using finishCamSnapshot() below.
void requestCamSnapshot() {
  camSnapshot = now();
  camSnapshotSaveCamStatus.NorthDesireOn = camStatus.NorthDesireOn;
  camSnapshotSaveCamStatus.SouthDesireOn = camStatus.SouthDesireOn;
  if (not camSnapshotSaveCamStatus.NorthDesireOn) { 
    digitalWrite(PIN_CamNorth_CONTROL, CamNorth_ON);
    camStatus.NorthDesireOn = true;
  }
  if (not camSnapshotSaveCamStatus.SouthDesireOn) { 
    digitalWrite(PIN_CamSouth_CONTROL, CamSouth_ON);
    camStatus.SouthDesireOn = true;
  }
}
void checkCamSnapshot() {
  //Check that it's been ~120 seconds since snapshot was requested
  if (camSnapshot and (now() >= camSnapshot + 115)) {
    camSnapshot = 0;
    if (not camSnapshotSaveCamStatus.NorthDesireOn) { disableCamNorth(); }
    if (not camSnapshotSaveCamStatus.SouthDesireOn) { disableCamSouth(); }
    disableWifi();
  }
}

// Called from Setup() to load memory values from EEPROM.
// Also looks for 255 values, which suggest a new Arduino or a newly added EEPROM variable that needs initialization
void initializeEEPROM() {

  if (EEPROM.read(eePowerSave) == 255) {
    Serial.println(F("EEPROM eePowerSave was 255, is this a new Arduino? Setting to false (0)."));
    EEPROM.update(eePowerSave, false);
  }

  if (EEPROM.read(eeKeepUbiOn) == 255) {
    Serial.println(F("EEPROM eeKeepUbiOn was 255, is this a new Arduino? Setting to false (0)."));
    EEPROM.update(eeKeepUbiOn, false);
  }

  if (EEPROM.read(eeCamStatus) == 255) {
    Serial.println(F("EEPROM eeCamStatus was 255, is this a new Arduino? Setting to false (0)."));
    EEPROM.update(eeCamStatus, false);
  }

  if (EEPROM.read(eeMinutesBeforeSunrise) == 255) {
    Serial.println(F("EEPROM eeMinutesBeforeSunrise was 255, is this a new Arduino? Setting to 30."));
    EEPROM.put(eeMinutesBeforeSunrise, char(minutesBeforeSunrise));
  }
  if (EEPROM.read(eeMinutesAfterSunset) == 255) {
    Serial.println(F("EEPROM eeMinutesAfterSunset was 255, is this a new Arduino? Setting to 30."));
    EEPROM.put(eeMinutesAfterSunset, char(minutesAfterSunset));
  }

  //Check whether the Ubiquiti should be left on all day or cycled off and only on to upload once every 5 minutes
  if (EEPROM.read(eeKeepUbiOn)) {
    keepUbiquitiOn = true;
  }

  // Increment a boot counter. We'd like an idea of how often we're booting, even if we don't know when necessarily.
  //Disabled because it's wearing out this EEPROM cell a little fast.
//  EEPROM.get(eeBootCounter, eeUIntTemp);
//  EEPROM.put(eeBootCounter, eeUIntTemp + 1);

  
  // Check EEPROM to see if we should be in power save mode. If so, shut some stuff off immediately.
  Serial.print(F("Reading EEPROM to see power save state: "));
  if (EEPROM.read(eePowerSave)) {
    Serial.println(F("Power Save. Shutting off Eth and Ubiquiti... ")); //jjj ln
    powerSave = true;
    isDaytime = false;

    disableWifi();
    disableEthernet();

  } else {
    Serial.print(F("No power save. Turning on Eth and Ubiquiti... "));
    powerSave = false;
    isDaytime = true;

    // Now that we send every 5 minutes, don't turn on until it's time to turn on.
    if (keepUbiquitiOn) {
      enableWifi();
      enableEthernet();
    } else {
      disableWifi();
      disableEthernet();
    }

  }
  Serial.println("Done.");
  Serial.println();

  //Populate a struct with saved camera state so camera on/off (powered/unpowered) state can persist through pboots.
  EEPROM.get(eeCamStatus, camStatus);
  if (camStatus.NorthDesireOn) { camStatus.NorthDesireOn = false; enableCamNorth(); }
  if (camStatus.SouthDesireOn) { camStatus.SouthDesireOn = false; enableCamSouth(); }
  if (camStatus.BrainDesireOn) { camStatus.BrainDesireOn = false; enableCamBrain(); }
  

  //Populate the wake/sleep times
  EEPROM.get(eeMinutesBeforeSunrise, eeCharTemp);
  minutesBeforeSunrise = eeCharTemp;
  EEPROM.get(eeMinutesAfterSunset, eeCharTemp);
  minutesAfterSunset = eeCharTemp;

}

void goToSleep(){
  //jjjsleep 
  //jjj Sleep turns all Mega pins to output and to low (except inverted default "on" (Eth and U), and MWX sensor pins)
  //jjj sets Mega to it's lowest power state and disables interrupts. Only a reset (Pboot) brings it back to life.
  //jjj decision of when to sleep must take into account the Pboot time.
  // If Pboot time is earlier than "sunrise-1h", then sleep should not be called for the last hour.
  // begin of sleep
  // shut down or power down external peripherals
  // should be done at some point by (de-)powering with Mega's pins

  // Morning: don't go back to sleep if it's within 40 minutes of Wake time, because we only wake once an hour.
  if ((minutesToday < sunrise - minutesBeforeSunrise - 40) or (minutesToday > sunset)) {

    // Increment a sleep counter so we have an idea of how often we go to sleep.
    EEPROM.get(eeSleepCounter, eeUIntTemp);
    EEPROM.put(eeSleepCounter, eeUIntTemp + 1);

    // Turn off the cameras at night. This might change but for now we want to make sure they sleep when the Arduino does.
    keepUbiquitiOn = false;
    EEPROM.update(eeKeepUbiOn, false);
    disableCamBrain();
    disableCamNorth();
    disableCamSouth();

    ina219a.enterPowerSave();       //jjj powering down two INAs saves 2mA
    ina219b.enterPowerSave();

    // We set the sensor in "forced mode" to force one reading.
    // After the reading the sensor will go to sleep mode.
    uint8_t valuea = bme280a.readRegister(BME280_CTRL_MEAS_REG);
    valuea = (valuea & 0xFC) + 0x01;
    bme280a.writeRegister(BME280_CTRL_MEAS_REG, valuea);
    uint8_t valueb = bme280b.readRegister(BME280_CTRL_MEAS_REG);
    valueb = (valueb & 0xFC) + 0x01;
    bme280b.writeRegister(BME280_CTRL_MEAS_REG, valueb);
    // Measurement Time (as per BME280 datasheet section 9.1)
    //  ~ 9.3ms for current settings
    delay(10);
  
  // power down EEPROM? and RTC?
  
  // allpinslow turns all Mega pins to output and to low. Except inverted default "on" (Eth and U), and MWX sensor pins (input)
    Serial.println(F("GOING TO SLEEP!!"));  // print this before messing with pins
    Serial.flush(); //jjj wait for message to print 
    Serial.end();   //jjj turn off TX0 so 16U2 ESD won't get pulled high
  
    cli();  //jjj clear interrupts just in case
  
  // turn off power to SD in case it was left on
    delay(500);                              //jjjSD wait for a second for SD card closure
    PORTF &= ~_BV (7) & ~_BV (6) & ~_BV (4) &~_BV (2) & ~_BV (1) & ~_BV (0);  //jjj turn off (0V) A5 to A7 and all other SD pins to unpower SD card reader
  
    // Analog pins, set pins to output to prevent floating inputs
    pinMode(A0, OUTPUT);
    pinMode(A1, OUTPUT);
    pinMode(A2, OUTPUT);
    pinMode(A3, OUTPUT);
    pinMode(A4, OUTPUT);
    pinMode(A5, OUTPUT);
    pinMode(A6, OUTPUT);
    pinMode(A7, OUTPUT);
    pinMode(A8, OUTPUT);
    pinMode(A9, OUTPUT);
    pinMode(A10, OUTPUT);
    pinMode(A11, OUTPUT);
    pinMode(A12, OUTPUT);
    pinMode(A13, OUTPUT);
    pinMode(A14, OUTPUT);
    pinMode(A15, OUTPUT);
  
    digitalWrite(A0, LOW);
    digitalWrite(A1, LOW);
    digitalWrite(A2, LOW);
    digitalWrite(A3, LOW);
    digitalWrite(A4, LOW);
    digitalWrite(A5, LOW);
    digitalWrite(A6, LOW);
    digitalWrite(A7, LOW);
    digitalWrite(A8, LOW);
    digitalWrite(A9, LOW);
    digitalWrite(A10, LOW);
    digitalWrite(A11, LOW);
    digitalWrite(A12, LOW);
    digitalWrite(A13, LOW);
    digitalWrite(A14, LOW);
    digitalWrite(A15, LOW);
    pinMode(WSPEED, INPUT);         //jjj MWX sensor, external pullup attached, stable
    pinMode(WDIR, INPUT);           //jjj MWX sensor, external pullup attached, stable
  
    // Digital pins
    Wire.end();                     //jjj just to make sure i2c won't pullup
    pinMode(SCL, INPUT);            //jjj external pullup attached, stable
    pinMode(SDA, INPUT);            //jjj external pullup attached, stable
  
  
    for (int i = 0; i <= 53; i++) 
    {
      pinMode(i, OUTPUT);           //jjj set pins to output to prevent floating inputs
      if (PIN_ETH_CONTROL == i) 
        {
          digitalWrite(i, HIGH);    //jjj is inverted, must be high
        }
      else if (PIN_UBIQUITI_CONTROL == i) 
        {
          digitalWrite(i, HIGH);    //jjj is inverted, must be high
        }
      else 
        {
          digitalWrite(i, LOW);     //jjj all others = LOW   
        }
  
    }
  
    cli();  //jjj clear interrupts just in case
  
    ADCSRA = 0; //jjj disable ADC before freezing it below
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);  // prepare the sleep mode
    power_all_disable();                  // turn off all internal peripherals just in case
    power_adc_disable();                  // turn off all internal peripherals just in case
    power_spi_disable();
    power_usart0_disable();
    power_usart2_disable();
    power_timer1_disable();
    power_timer2_disable();
    power_timer3_disable();
    power_timer4_disable();
    power_timer5_disable();
    power_twi_disable();
  
    sleep_mode();       // finally, go to sleep
  }
} // end of sleep: Wakes only by reset until interrupts are set



//Calculates each of the variables that wunderground is expecting
//Expects to be called once a second, bases some calculations on that.
void calcWeather()
{
    //Calc winddir
    winddir = get_wind_direction();

    //Calc windspeed
    //windspeedmph = get_wind_speed(); //This is calculated in the main loop on line 179

    //Calc windgustmph
    //Calc windgustdir
    //These are calculated in the main loop

    //Calc windspdmph_avg2m
/*    float temp = 0;
    for(int i = 0 ; i < 120 ; i++)
        temp += windspdavg[i];
    temp /= 120.0;
    windspdmph_avg2m = temp;
*/

    //Calc winddir_avg2m, Wind Direction
    //You can't just take the average. Google "mean of circular quantities" for more info
    //We will use the Mitsuta method because it doesn't require trig functions
    //And because it sounds cool.
    //Based on: http://abelian.org/vlf/bearings.html
    //Based on: http://stackoverflow.com/questions/1813483/averaging-angles-again
    long sum = winddiravg[0];
    int D = winddiravg[0];
    for(int i = 1 ; i < WIND_DIR_AVG_SIZE ; i++)
    {
        int delta = winddiravg[i] - D;

        if(delta < -180)
            D += delta + 360;
        else if(delta > 180)
            D += delta - 360;
        else
            D += delta;

        sum += D;
    }
    winddir_avg2m = sum / WIND_DIR_AVG_SIZE;
    if(winddir_avg2m >= 360) winddir_avg2m -= 360;
    if(winddir_avg2m < 0) winddir_avg2m += 360;

    //Calc windgustmph_10m
    //Calc windgustdir_10m
    //Find the largest windgust in the last 10 minutes
    windgustmph_10m = 0;
    windgustdir_10m = 0;
    //Step through the 10 minutes
    for(int i = 0; i < 10 ; i++)
    {
        if(windgust_10m[i] > windgustmph_10m)
        {
            windgustmph_10m = windgust_10m[i];
            windgustdir_10m = windgustdirection_10m[i];
        }
    }

    //Calc windgustmph_5m
    //Calc windgustdir_5m
    //Find the largest windgust in the last 10 minutes
    windgustmph_5m = 0;
    windgustdir_5m = 0;
    //Step through the 5 minutes
    for(int i = 0; i < 5 ; i++)
    {
        if(windgust_5m[i] > windgustmph_5m)
        {
            windgustmph_5m = windgust_5m[i];
            windgustdir_5m = windgustdirection_5m[i];
        }
    }

    //Total rainfall for the day is calculated within the interrupt
    //Calculate amount of rainfall for the last 60 minutes
    rainin = 0;
    for(int i = 0 ; i < 60 ; i++)
        rainin += rainHour[i];
    
}




//Prints the various variables directly to the port
//I don't like the way this function is written but Arduino doesn't support floats under sprintf
void printWeather()
{
  //calcWeather(); //Go calc all the various sensors; except now call it directly from loop()
  timeStatus();             //check the time status now to force a sync if needed.

  // 1: time
  printDigits(hour());
  Serial.print((":"));
  printDigits(minute());

  // 2: date
  Serial.print(charComma);
  Serial.print(month());
  Serial.print(("/"));
  Serial.print(day());
  Serial.print(("/"));
  Serial.print(year());

  // 3: Wind speed, mph, 1 minute average
  Serial.print(charComma);
  if (windSpeedAvg < 10) Serial.print('0');
  Serial.print(windSpeedAvg, 2);

  // 4: wind speed, mph, 5 minute max (gust)
  Serial.print(charComma);
  if (windgustmph_5m < 10) Serial.print('0');
  Serial.print(windgustmph_5m, 1);

  // 5: wind direction, 1 minute average
  Serial.print(charComma);
  if (winddir == 0 ) Serial.print(" ");
  if (winddir < 100) Serial.print(" ");
  Serial.print(winddir);
  //Serial.print(",windgustdir=");
  //Serial.print(windgustdir);
  //Serial.print(F(",wAvg="));
  //Serial.print(windspdmph_avg2m, 2);

  // 6: temperature, F, outside, instant
  Serial.print(charComma);
  Serial.print(tempf, 1);

  // 7: humidity, %, outside, instant
  Serial.print(charComma);
  Serial.print(humidityOutside, 1);

  // 8: Barometric pressure, hPa, outside, instant
  Serial.print(charComma);
  Serial.print(pressure / 100.0, 1);

  // 9: Barometric pressure delta from previous reading
  Serial.print(charComma);
  if (pressure >= oldPressure) Serial.print(" ");
  Serial.print((pressure - oldPressure) / 100.0, 2);

  // 10: rain so far today
  //Serial.print(",rainin=");
  //Serial.print(rainin, 2);
  Serial.print(charComma);
  Serial.print(0.0, 2);

  // 11: rain long term? Maybe it's supposed to be last 24h, but it's always zero.
  //Serial.print(",dailyrainin=");
  //Serial.print(dailyrainin, 2);
  //Serial.print(",");
  //Serial.print(0.0, 2);

  // 11: wind speed, mph, instant (instead of 24h rain)
  Serial.print((","));
  if (windspeedmph < 10) Serial.print('0');
  Serial.print(windspeedmph, 1);

  // 12: temperature in the enclosure or 2nd sensor if we get one
  Serial.print(charComma);
  //Serial.print(tempf, 1); //(FIXME: same as ext sensor since we only have one)
  Serial.print(RTC.temperature() / 4);

  // 13: current in mA
  //(FIXME: same as ext sensor since we only have one)
  Serial.print(charComma);
  Serial.print(ina219a_ma, 2);
  Serial.print("mA");

  // 14: voltage onboard, ~5v source
  Serial.print(charComma);
  Serial.print(batt_lvl, 2);

  // 15: voltage battery, possibly inferred but same as 14 for now.
  Serial.print(charComma);
  Serial.print(ina219a_volts,2);

  // 16: light level, referenced to voltage I think
  Serial.print(charComma);
  Serial.print(light_lvl, 2);

  // 17: run time in days.HH:MM:SS
  Serial.print(charComma);
  Serial.print(days);
  Serial.print(".");
  printDigits(hours);
  Serial.print(":");
  printDigits(minutes);
  Serial.print(":");
  printDigits(seconds);

  // 18: Print the  date & time. For debugging.
  time_t rtcTime = RTC.get();
  Serial.print(charComma);
  Serial.print("rtc:");
  Serial.print(year(rtcTime));
  Serial.print("/");
  Serial.print(month(rtcTime));
  Serial.print("/");
  Serial.print(day(rtcTime));
  Serial.print(charComma);
  Serial.print(hour(rtcTime));
  Serial.print(":");
  Serial.print(minute(rtcTime));
  Serial.print(":");
  Serial.print(second(rtcTime));


/*
  // loop counter. For diagnostics, mostly useless.
  Serial.print(charComma);
  Serial.print(loopCounter);
  Serial.print(charComma);
  Serial.print(loopCounter - loopDelta);
  loopDelta = loopCounter;

  // Print the raw 12v input on A12/SLA_BATT_LVL
  Serial.print(charComma);
  Serial.print(sla_raw);
  Serial.print(charComma);
  Serial.print(sla_lvl, 2);
  Serial.print(charComma);
  Serial.print(sla_30sec, 2);

  //Serial.print(charComma);
  //Serial.print(F("__DATE__ "));    //C++ #DEFINE that expands to the current compile date
  //Serial.print(F("__TIME__"));     //C++ #DEFINE that expands to the current compile time
  //Serial.print(String(compile_date));
*/

  // 19: print free memory? Interesting...
  Serial.print(charComma);
  Serial.print(freeRam());

  // 20: print raw ADC reading from wind direction, to troubleshooting why 270 degrees sometimes reads invalid
  Serial.print(charComma);
  Serial.print(winddirRaw);

  // 21: print ina219a's voltage, current
  Serial.print(charComma);
  Serial.print(ina219a_volts);
  Serial.print(charComma);
  Serial.print(ina219a_ma);

  // NEWLINE:
  Serial.println();

}
