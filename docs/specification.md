++ Weather Station Specifications

* When the local time is 2 hours before sunrise
*  And battery capacity is at or above 25%
* Then System shall store weather data to external eeprom every 5 minutes

* When the local time is after sunrise
*  And Solar panel production exceeds 50% of capacity
*  Or battery capacity is at or above 25%
* Then System shall send stored esternal eeprom weather data
*  And System shall store weather data to memory every 1 minutes
*  And System shall send stored weather data every 5 minutes

* When  solar production drops below 50% of capacity
*   Or the local time is 30 minutes before sunset
* Then System shall stop storing and sending weather data

