/*
 * 
 * Various utility functions like string manipulation, etc.
 * Stuff that doesn't fit anywhere else. Just to clear up the main one a bit.
 * 
 */



//Returns the voltage of the light sensor based on the 3.3V rail
//This allows us to ignore what VCC might be (an Arduino plugged into USB has VCC of 4.5 to 5.2V)
float get_light_level()
{
    float operatingVoltage = analogRead(REFERENCE_3V3);
    float lightSensor = analogRead(LIGHT);

    operatingVoltage = 3.3 / operatingVoltage; //The reference voltage is 3.3V
    lightSensor = operatingVoltage * lightSensor;

    return(lightSensor);
}

//Returns the voltage of the raw pin based on the 3.3V rail
//This allows us to ignore what VCC might be (an Arduino plugged into USB has VCC of 4.5 to 5.2V)
//Battery level is connected to the RAW pin on Arduino and is fed through two 5% resistors:
//3.9K on the high side (R1), and 1K on the low side (R2)
float get_battery_level()
{
    float operatingVoltage = analogRead(REFERENCE_3V3);
    float rawVoltage = analogRead(BATT);

    operatingVoltage = 3.30 / operatingVoltage; //The reference voltage is 3.3V
    rawVoltage = operatingVoltage * rawVoltage; //Convert the 0 to 1023 int to actual voltage on BATT pin
    rawVoltage *= 4.90; //(3.9k+1k)/1k - multiple BATT voltage by the voltage divider to get actual system voltage

    return(rawVoltage);
}

//Returns the instataneous wind speed
float get_wind_speed()
{
    float deltaTime = millis() - lastWindCheck; // (ex: 750ms)
    deltaTime /= 1000.0; //Covert to seconds
    float windSpeed = (float)windClicks / deltaTime; // (ex, 3 clicks / 0.750s = 4 clicks per second)

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

    if      (adc < 81)   { strWindDir = "ERL"; return (-10); }
    else if (adc < 162)  { strWindDir = "ESE"; return (113); }   // ESE
    else if (adc < 188)  { strWindDir = "ENE"; return  (68); }   // ENE
    else if (adc < 227)  { strWindDir = "E";   return  (90); }   // E
    else if (adc < 305)  { strWindDir = "SSE"; return (158); }   // SSE
    else if (adc < 395)  { strWindDir = "SE";  return (135); }   // SE
    else if (adc < 466)  { strWindDir = "SSW"; return (203); }   // SSW
    else if (adc < 559)  { strWindDir = "S";   return (180); }   // S
    else if (adc < 651)  { strWindDir = "NNE"; return  (23); }   // NNE
    else if (adc < 733)  { strWindDir = "NE";  return  (45); }   // NE
    else if (adc < 800)  { strWindDir = "WSW"; return (248); }   // WSW
    else if (adc < 835)  { strWindDir = "SW";  return (225); }   // SW
    else if (adc < 883)  { strWindDir = "NNW"; return (338); }   // NNW
    else if (adc < 919)  { strWindDir = "N";   return   (0); }   // N
    else if (adc < 945)  { strWindDir = "WNW"; return (293); }   // WNW
    else if (adc < 974)  { strWindDir = "NW";  return (315); }   // NW
    else if (adc < 1005) { strWindDir = "W";   return (270); }   // W
    else                 { strWindDir = "ERH"; return (-10); }
    return (-10); // Never get here
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

    //Calc humidity
    //humidity = myHumidity.readHumidity();

    //Calc tempf from pressure sensor
    //tempf = myPressure.readTempF();

    //Total rainfall for the day is calculated within the interrupt
    //Calculate amount of rainfall for the last 60 minutes
    rainin = 0;
    for(int i = 0 ; i < 60 ; i++)
        rainin += rainHour[i];

    //Calc pressure but ONLY ONCE A MINUTE, so deltas are meaningful.
    /*
    if (seconds == 59) {
      oldPressure = pressure;
      pressure = myPressure.readPressure();
      if (oldPressure == 0) oldPressure = pressure; //First time, let's not have a "delta" of the current pressure.
    } */

    //Calc dewptf

    //Calc light level
    light_lvl = get_light_level();

    //Calc battery level
    batt_lvl = get_battery_level();
    
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
  Serial.print(humidity, 1);

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

  // 18: Print the RTC date & time. For debugging.
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

