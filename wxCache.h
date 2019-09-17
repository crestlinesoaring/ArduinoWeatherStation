#ifndef WX_CACHE
#define WX_CACHE

// Structure to hold essential data for overnight storage or batched transmission during cloudy days.
// 7 bytes so far, with 2 bits to spare. (may be inaccurate)
//bit cheat-sheet: 4=16, 5=32, 6=64, 7=128, 10=1024
struct wxCache_struct {
  byte gust    : 4;    //Wind gust = gust * 2 + wind speed!!
  byte wd      : 4;    //Wind direction / 22.5 (remember to multiply)
  byte pres1   : 8;    //Pressure in hPa minus 900
  byte temp2   : 8;    //Temp in F for internal Brain Box
  byte vBatt   : 8;    //Voltage * 10 for battery
  unsigned int aBatt : 10;    //Milliamps for battery, / 4 (-500 to 3500ma)
  byte ws      : 6;    //Wind speed
  byte humidIn  : 5;    //Humidity inside / 3.23
  byte sent    : 1;    // Sent successfully? True / False.
  // 4+4+8+8+8+10+6+5+1 = 54 = 7 bytes with 2 bits to spare. 
};

#endif
