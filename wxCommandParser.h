/*
 * Command parser header
 * 
 */
#ifndef WX_COMMAND_PARSER_H
#define WX_COMMAND_PARSER_H
#define GET_REQUEST "get"
#define SET_REQUEST "set"
#define DO_REQUEST "do"
#define NAME_KEY "name"
#define VALUE_KEY "value"
#define SUCCESS_KEY "success"

// Commands
#define TIME_COMMAND "time"
#define TIME_STAMP_COMMAND "timestamp"
#define STATUS_COMMAND "status"
#define WIND_COMMAND "wind"
#define LATITUDE_COMMAND "latitude"
#define LONGITUDE_COMMAND "longitude"
#define GMT_OFFSET_COMMAND "gmtOffset"
#define STAY_AWAKE_COMMAND "stayAwake"
#define SUNSET_COMMAND "sunset"
#define SUNRISE_COMMAND "sunrise"
#define INITIALIZE_COMMAND "initialize"
#define CAPTURE_COMMAND "capture"
#define WEATHER_COMMAND "weather"
#define HISTORY_COMMAND "history"
#define CLEAR_LOG_COMMAND "clearLog"

// Functions
String formatTime(time_t timeTag); 

 #endif
