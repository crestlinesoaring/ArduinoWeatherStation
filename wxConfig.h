#ifndef WX_CONFIG_H
#define WX_CONFIG_H
/*
 * Structure to hold configuration parameters
 * Use this to organize any future configuration parameters
 */
struct wxConfig_struct {
  bool stayAwake;
  double latitude;
  double longitude;
  int gmtOffset; 
  int startSampleTimeHour;
  IPAddress serverIP; 
  IPAddress timeServerIP; 
  short eeLogWriteAddress; 
  short eeLogReadAddress;   
} wxConfig;
#endif
