
// WIND SPEED
// Wind Speed is a 6 bit value, 1:1, up to 63mph wind in 1 mph increments.
void put_windspeed(byte m, byte windSpeed) {
  m = m % 60;
  if (windSpeed > 63) windSpeed = 63;
  if (windSpeed < 0)  windSpeed = 0;
  wxCache[m].ws = windSpeed;
}

byte get_windspeed(byte m) {
  m = m % 60;
  return wxCache[m].ws;
}


// WIND GUST
// Wind Gust is a 4 bit value: the gust minus the wind speed, and divided by two
void put_windgust(byte m, byte windGust) {
  m = m % 60;
  windGust = windGust - wxCache[m].ws;
  windGust = round(windGust / 2);
  wxCache[m].gust = windGust;
}

// Multiply by two, and then add the Wind Speed back in.
byte get_windgust(byte m) {
  byte tempGust;
  m = m % 60;
  tempGust = wxCache[m].gust * 2;
  tempGust = tempGust + wxCache[m].ws;
  return tempGust;
}


//Wind direction. Only has 16 possible directions for current windvane,
// so stored in a 4 bit value. Divide (or multiply) by 22.5
void put_winddir(byte m, int wd) {
  m = m % 60;
  if (wd < 0) wd = 0;
  if (wd > 359) wd = 359;
  wxCache[m].wd = (int)(wd / 22.5);
}

int get_winddir(byte m) {
  m = m % 60;
  return round(wxCache[m].wd * 22.5);
}


// Pressure is a byte, subtract 900.
// m = minute, p = pressure
void put_pres1(byte m, float p) {
  byte pres1;
  m = m % 60;
  if (p < 900)  {
    pres1 = 0;
  } else if (p > 1155) {
    pres1 = 255;
  } else {
    pres1 = round(p - 900);
  }

  wxCache[m].pres1 = pres1;
}

float get_pres1(byte m) {
  m = m % 60;
  return (float)(900 + wxCache[m].pres1);
}

//Temp2 is the temperature on sensor 2 (inside the Brain box) in Fahrenheit
// F * 1.4 so it will scale where 0f = 0 and 180f = 252
void put_temp2f(byte m, float t) {
  m = m % 60;
  if (t > 180) t = 180;
  if (t < 0) t = 0;
  wxCache[m].temp2 = t * 1.4;
}

float get_temp2f(byte m) {
  m = m % 60;
  return wxCache[m].temp2 / 1.4;
}

//Poor conversions to C, but it's probably okay.
//Note the value is always stored in F, so there is some loss in accuracy.
void put_temp2c(byte m, float c) {
  m = m % 60;
  float f = c * 1.8 + 32.0;
  put_temp2f(m, f);
}

float get_temp2c(byte m) {
  m = m % 60;
  return (get_temp2f(m) - 32.0) / 1.8;
}


//HumidIn is the humidity inside the brain box, not atmospheric!
void put_humidIn(byte m, float h) {
  m = m % 60;
  if (h > 100) h = 100;
  if (h <   0) h =   0;
  h = h / 3.23;
  wxCache[m].humidIn = round(h);
}
float get_humidIn(byte m) {
  m = m % 60;
  return (wxCache[m].humidIn * 3.23);
}

//vBatt is the voltage on the battery. Can save between 10.0 and 15.0 volts in 2/100ths 
// subtract 10 and multiply by 50
// m = minute, v = voltage
void put_vBatt(byte m, float v) {
  m = m % 60;
  // if Volts are negative, flip positive, then bound between 10v-15v
  if (v <  0) v = v * -1.0;
  if (v < 10) v = 10;
  if (v > 15) v = 15;
  v = v - 10;
  v = v * 50;
  wxCache[m].vBatt = (byte)round(v);
}

float get_vBatt(byte m) {
  m = m % 60;
  float v = wxCache[m].vBatt;
  return v / 50 + 10;
}


//aBatt is milliamps to/from the battery. Positive is charging the battery.
void put_aBatt(byte m, float a) {
  m = m % 60;
  if (a > 3550) a = 3550;
  if (a < -500) a = -500;
  a = a + 500.0;
  wxCache[m].aBatt = round(a / 4.0);
}

int get_aBatt(byte m) {
  m = m % 60;
  return (int)wxCache[m].aBatt * 4 - 500;
}

//Open the file, write the line of data, close the file.
//This is expected to happen about once a minute, lets not leave the file open.
//Eventually we will shut off the SD card reader to save power too.
void sdLogData(char *fileName, String logData) {

  msTemp = millis();
  usTemp = micros();
  Serial.print("Writing to SD file "); Serial.print(fileName); Serial.print("; ");

  bool sdEnabledEthernet = false;
  if (not ethEnabled) {
    sdEnabledEthernet = true;
    enableEthernet();
  }

  // Open the file for writing, create if doesn't exist
  if (!file.open(fileName, O_CREAT | O_WRITE | O_APPEND)) {
    sdErr("file.open");
  }
  Serial.print(F(" open, setting dateTimeCallback."));
  file.dateTimeCallback(sdDateTime);

  // Write the line of data, plus a newline for now. Subject to change.
  wdt_reset();
  file.print(logData);
  file.println();

  // Sync and close the file. Expect to only write once a minute...
  if (!file.sync() || file.getWriteError()) {
    sdErr("write error");
  }

  sdPosition = file.curPosition();
  file.close();

  if (sdEnabledEthernet) disableEthernet();

  Serial.print(F(" done writing. Took "));
  Serial.print(millis() - msTemp); Serial.print("ms, ");
  //Serial.print(micros() - usTemp); Serial.print("us. ");
  Serial.print(F("file position: ")); Serial.println(sdPosition);
  Serial.println();
  
}

void sdReadFileToSerial(char *fileName) {

  msTemp = millis();
  wdt_reset();

  Serial.print("Dumping SD file to serial: "); Serial.println(fileName);

  //Open the file if it exists
  if (!file.open(fileName, O_READ)) {
    sdErr("file.open for read");
  } else {
    Serial.println("File opened, begin dumping...");

    while (file.available()) {
      Serial.write(file.read());
      wdt_reset();
    }

    file.close();
  }

  //redundant file.close()
  file.close();

  Serial.print("  --- Done reading "); Serial.print(fileName); Serial.print(", took ");
  Serial.print(millis() - msTemp); Serial.println("ms.");
  
}


void sdReadFileToSocket(char *fileName) {

  msTemp = millis();
  wdt_reset();

  Serial.print("Dumping SD file to ethernet socket: "); Serial.println(fileName);

  bool sdEnabledEthernet = false;
  if (not ethEnabled) {
    sdEnabledEthernet = true;
    enableEthernet();
  }

  //Open the file if it exists
  if (!file.open(fileName, O_READ)) {
    sdErr("file.open for read");
  } else {
    Serial.println("File opened, begin dumping...");

    while (file.available()) {
      wdt_reset();
      incomingClient.write(file.read());
    }

    file.close();
  }

  //redundant file.close()
  file.close();

  if (sdEnabledEthernet) disableEthernet();

  Serial.print("  --- Done reading "); Serial.print(fileName); Serial.print(", took ");
  Serial.print(millis() - msTemp); Serial.println("ms.");
  
}


void sdDateTime(uint16_t* sd_date, uint16_t* sd_time) {
  uint16_t sd_year;
  uint8_t sd_month, sd_day, sd_hour, sd_minute, sd_second;
  // User gets date and time from GPS or real-time clock here

  Serial.print(F(" -sdDateTime- " )); Serial.print(getTimeWithZeros());

  sd_year   = year();
  sd_month  = month();
  sd_day    = day();
  sd_hour   = hour();
  sd_minute = minute();
  sd_second = second();
  
  // return date using FAT_DATE macro to format fields
  *sd_date = FAT_DATE(sd_year, sd_month, sd_day);
  // return time using FAT_TIME macro to format fields
  *sd_time = FAT_TIME(sd_hour, sd_minute, sd_second);
}





// END OF FILE
