/**************************************************************************/
/*! 
    @file     Adafruit_INA219_5A.cpp  //jjj added 16V, 5A, 0.00833Ohm and 32V, 5A, 0.00833Ohm 
    @author   K.Townsend (Adafruit Industries)
	@license  BSD (see license.txt)
	
	Driver for the INA219 current sensor

	This is a library for the Adafruit INA219 breakout
	----> https://www.adafruit.com/products/???
		
	Adafruit invests time and resources providing this open source code, 
	please support Adafruit and open-source hardware by purchasing 
	products from Adafruit!

	@section  HISTORY

    v1.0 - First release
*/
/**************************************************************************/
#if ARDUINO >= 100
 #include "Arduino.h"
#else
 #include "WProgram.h"
#endif

#include <Wire.h>

#include "Adafruit_INA219_5A.h"

/**************************************************************************/
/*! 
    @brief  Sends a single command byte over I2C
*/
/**************************************************************************/
void Adafruit_INA219_5A::wireWriteRegister (uint8_t reg, uint16_t value)
{
  Wire.beginTransmission(ina219_i2caddr);
  #if ARDUINO >= 100
    Wire.write(reg);                       // Register
    Wire.write((value >> 8) & 0xFF);       // Upper 8-bits
    Wire.write(value & 0xFF);              // Lower 8-bits
  #else
    Wire.send(reg);                        // Register
    Wire.send(value >> 8);                 // Upper 8-bits
    Wire.send(value & 0xFF);               // Lower 8-bits
  #endif
  Wire.endTransmission();
}

/**************************************************************************/
/*! 
    @brief  Reads a 16 bit values over I2C
*/
/**************************************************************************/
void Adafruit_INA219_5A::wireReadRegister(uint8_t reg, uint16_t *value)
{

  Wire.beginTransmission(ina219_i2caddr);
  #if ARDUINO >= 100
    Wire.write(reg);                       // Register
  #else
    Wire.send(reg);                        // Register
  #endif
  Wire.endTransmission();
  
  delay(1); // Max 12-bit conversion time is 586us per sample

  Wire.requestFrom(ina219_i2caddr, (uint8_t)2);  
  #if ARDUINO >= 100
    // Shift values to create properly formed integer
    *value = ((Wire.read() << 8) | Wire.read());
  #else
    // Shift values to create properly formed integer
    *value = ((Wire.receive() << 8) | Wire.receive());
  #endif
}

//jjj begin Power Down mode
/**************************************************************************/
/*! jjj
    @brief   Enter the Power Down mode for INA219
		
    @return  void	

    @details This function turns the INA into the Power Down mode,
             using 1 uA instead of 1 mA current in continous mode.
             Saving on average 0.7mA.
*/
/**************************************************************************/
void Adafruit_INA219_5A::enterPowerSave() 
{
       // We will go into Power down mode
       // INA219_CONFIG_MODE_MASK
       // INA219_CONFIG_MODE_POWERDOWN
       //wireWriteRegister(INA219_CONFIG_MODE_MASK, INA219_CONFIG_MODE_POWERDOWN); // This does not work

       // We want to adjust the last bits in there, and set that to INA219_CONFIG_MODE_POWERDOWN
       
       // Set Config register to take into account the settings we now want. This is too rough, but will leave for now.
       uint16_t config = INA219_CONFIG_BVOLTAGERANGE_16V |
                        INA219_CONFIG_GAIN_1_40MV |
                        INA219_CONFIG_BADCRES_12BIT |
                        INA219_CONFIG_SADCRES_12BIT_1S_532US |
                        INA219_CONFIG_MODE_POWERDOWN;
      wireWriteRegister(INA219_REG_CONFIG, config);

}
//jjj end Power Down mode

//jjj begin setCalibration_16V_5A
/**************************************************************************/
/*! jjj
    @brief  Configures INA219 to be able to measure up to 16V and 4.8A
            of current.  Each unit of current corresponds to 146uA, and
            each unit of power corresponds to 2.92mW. Counter overflow
            occurs at 4.8A.
			
    @note   These calculations assume a 0.00833 Ohm (0.1|0.1|0.01) resistor is present
*/
/**************************************************************************/
void Adafruit_INA219_5A::setCalibration_16V_5A(void)
{
  // We use the lower (16V) range for the input voltage,
  // which is the best range for a 12V SLA Battery
  // All of the calculations were tuned for a 100W solar panel
  // and a 8.333 milliOhm (1/120) shunt

  // VBUS_MAX = 16V             (Assumes 16V)
  // VSHUNT_MAX = 0.04          (Assumes Gain 1, 40mV)
  // RSHUNT = 0.008333           (Resistor value in ohms)
  
  // 1. Determine max possible current
  // MaxPossible_I = VSHUNT_MAX / RSHUNT
  // MaxPossible_I = 4.8A
  
  // 2. Determine max expected current
  // MaxExpected_I = 4.8A
  
  // 3. Calculate possible range of LSBs (Min = 15-bit, Max = 12-bit)
  // MinimumLSB = MaxExpected_I/32767
  // MinimumLSB = 0.000146              (146uA per bit)
  // MaximumLSB = MaxExpected_I/4096
  // MaximumLSB = 0,001172              (1172uA per bit)
  
  // 4. Choose an LSB between the min and max values
  //    (Preferrably a roundish number close to MinLSB)
  // CurrentLSB = 0.000146 (146uA per bit) 150?jjj
  
  // 5. Compute the calibration register
  // Cal = trunc (0.04096 / (Current_LSB * RSHUNT))
  // Cal = 33665 (0x8381)
  
  ina219_calValue = 33665;
  
  // 6. Calculate the power LSB
  // PowerLSB = 20 * CurrentLSB
  // PowerLSB = 0.00292 (2.92mW per bit) (why are we calculating this???)
  
  // 7. Compute the maximum current and shunt voltage values before overflow
  //
  // Max_Current = Current_LSB * 32767
  // Max_Current = 4.783982 A before overflow
  //
  // If Max_Current > Max_Possible_I then
  //    Max_Current_Before_Overflow = MaxPossible_I
  // Else
  //    Max_Current_Before_Overflow = Max_Current
  // End If
  //
  // Max_ShuntVoltage = Max_Current_Before_Overflow * RSHUNT
  // Max_ShuntVoltage = 0.0398V
  //
  // If Max_ShuntVoltage >= VSHUNT_MAX
  //    Max_ShuntVoltage_Before_Overflow = VSHUNT_MAX
  // Else
  //    Max_ShuntVoltage_Before_Overflow = Max_ShuntVoltage
  // End If
  
  // 8. Compute the Maximum Power
  // MaximumPower = Max_Current_Before_Overflow * VBUS_MAX
  // MaximumPower = 4.8 * 16V
  // MaximumPower = 76.8W
  
  // Set multipliers to convert raw current/power values
  ina219_currentDivider_mA = 7;  // Current LSB = 146uA per bit (1000/146 = 6.85)
  ina219_powerDivider_mW = 3;     // must check, is probably wrong.Power LSB = 2.92mW per bit (2/1)

  // Set Calibration register to 'Cal' calculated above	
  wireWriteRegister(INA219_REG_CALIBRATION, ina219_calValue);
  
  // Set Config register to take into account the settings above
  uint16_t config = INA219_CONFIG_BVOLTAGERANGE_16V |
                    INA219_CONFIG_GAIN_1_40MV |
                    INA219_CONFIG_BADCRES_12BIT |
                    INA219_CONFIG_SADCRES_12BIT_1S_532US |
                    INA219_CONFIG_MODE_SANDBVOLT_CONTINUOUS;
  wireWriteRegister(INA219_REG_CONFIG, config);
}
//jjj end setCalibration_16V_5A

//jjj begin setCalibration_32V_5A
/**************************************************************************/
/*! jjj
    @brief  Configures INA219 to be able to measure up to 32V and 4.8A
            of current.  Each unit of current corresponds to 146uA, and
            each unit of power corresponds to 2.92mW. Counter overflow
            occurs at 4.8A.
			
    @note   These calculations assume a 0.00833 Ohm (0.1|0.1|0.01) resistor is present
*/
/**************************************************************************/
void Adafruit_INA219_5A::setCalibration_32V_5A(void)
{
  // We use the full (32V) range for the input voltage,
  // which is the best range for a 19V max Solar Panel
  // All of the calculations were tuned for a 100W solar panel
  // and a 8.333 milliOhm shunt

  // VBUS_MAX = 32V             (Assumes 32V)
  // VSHUNT_MAX = 0.04          (Assumes Gain 1, 40mV)
  // RSHUNT = 0.008333          (Resistor value in ohms)
  
  // 1. Determine max possible current
  // MaxPossible_I = VSHUNT_MAX / RSHUNT
  // MaxPossible_I = 4.8A
  
  // 2. Determine max expected current
  // MaxExpected_I = 4.8A
  
  // 3. Calculate possible range of LSBs (Min = 15-bit, Max = 12-bit)
  // MinimumLSB = MaxExpected_I/32767
  // MinimumLSB = 0.000146              (146uA per bit)
  // MaximumLSB = MaxExpected_I/4096
  // MaximumLSB = 0,001172              (1172uA per bit)
  
  // 4. Choose an LSB between the min and max values
  //    (Preferrably a roundish number close to MinLSB)
  // CurrentLSB = 0.000146 (146uA per bit) 150?jjj
  
  // 5. Compute the calibration register
  // Cal = trunc (0.04096 / (Current_LSB * RSHUNT))
  // Cal = 33665 (0x8381)
  
  ina219_calValue = 33665;
  
  // 6. Calculate the power LSB
  // PowerLSB = 20 * CurrentLSB
  // PowerLSB = 0.00292 (2.92mW per bit) (why are we calculating this???)
  
  // 7. Compute the maximum current and shunt voltage values before overflow
  //
  // Max_Current = Current_LSB * 32767
  // Max_Current = 4.783982 A before overflow
  //
  // If Max_Current > Max_Possible_I then
  //    Max_Current_Before_Overflow = MaxPossible_I
  // Else
  //    Max_Current_Before_Overflow = Max_Current
  // End If
  //
  // Max_ShuntVoltage = Max_Current_Before_Overflow * RSHUNT
  // Max_ShuntVoltage = 0.0398V
  //
  // If Max_ShuntVoltage >= VSHUNT_MAX
  //    Max_ShuntVoltage_Before_Overflow = VSHUNT_MAX
  // Else
  //    Max_ShuntVoltage_Before_Overflow = Max_ShuntVoltage
  // End If
  
  // 8. Compute the Maximum Power
  // MaximumPower = Max_Current_Before_Overflow * VBUS_MAX
  // MaximumPower = 4.8 * 32V 
  // MaximumPower = 153.6W
  
  // Set multipliers to convert raw current/power values
  ina219_currentDivider_mA = 7;  // Current LSB = 146uA per bit (1000/146 = 6.85)
  ina219_powerDivider_mW = 3;     // must check, is probably wrong.Power LSB = 2.92mW per bit (2/1)

  // Set Calibration register to 'Cal' calculated above	
  wireWriteRegister(INA219_REG_CALIBRATION, ina219_calValue);
  
  // Set Config register to take into account the settings above
  uint16_t config = INA219_CONFIG_BVOLTAGERANGE_32V |
                    INA219_CONFIG_GAIN_1_40MV |
                    INA219_CONFIG_BADCRES_12BIT |
                    INA219_CONFIG_SADCRES_12BIT_1S_532US |
                    INA219_CONFIG_MODE_SANDBVOLT_CONTINUOUS;
  wireWriteRegister(INA219_REG_CONFIG, config);
}
//jjj end setCalibration_32V_5A

/**************************************************************************/
/*! 
    @brief  Configures to INA219 to be able to measure up to 32V and 2A
            of current.  Each unit of current corresponds to 100uA, and
            each unit of power corresponds to 2mW. Counter overflow
            occurs at 3.2A.
			
    @note   These calculations assume a 0.1 ohm resistor is present
*/
/**************************************************************************/
void Adafruit_INA219_5A::setCalibration_32V_2A(void)
{
  // By default we use a pretty huge range for the input voltage,
  // which probably isn't the most appropriate choice for system
  // that don't use a lot of power.  But all of the calculations
  // are shown below if you want to change the settings.  You will
  // also need to change any relevant register settings, such as
  // setting the VBUS_MAX to 16V instead of 32V, etc.

  // VBUS_MAX = 32V             (Assumes 32V, can also be set to 16V)
  // VSHUNT_MAX = 0.32          (Assumes Gain 8, 320mV, can also be 0.16, 0.08, 0.04)
  // RSHUNT = 0.1               (Resistor value in ohms)
  
  // 1. Determine max possible current
  // MaxPossible_I = VSHUNT_MAX / RSHUNT
  // MaxPossible_I = 3.2A
  
  // 2. Determine max expected current
  // MaxExpected_I = 2.0A
  
  // 3. Calculate possible range of LSBs (Min = 15-bit, Max = 12-bit)
  // MinimumLSB = MaxExpected_I/32767
  // MinimumLSB = 0.000061              (61uA per bit)
  // MaximumLSB = MaxExpected_I/4096
  // MaximumLSB = 0,000488              (488uA per bit)
  
  // 4. Choose an LSB between the min and max values
  //    (Preferrably a roundish number close to MinLSB)
  // CurrentLSB = 0.0001 (100uA per bit)
  
  // 5. Compute the calibration register
  // Cal = trunc (0.04096 / (Current_LSB * RSHUNT))
  // Cal = 4096 (0x1000)
  
  ina219_calValue = 4096;
  
  // 6. Calculate the power LSB
  // PowerLSB = 20 * CurrentLSB
  // PowerLSB = 0.002 (2mW per bit)
  
  // 7. Compute the maximum current and shunt voltage values before overflow
  //
  // Max_Current = Current_LSB * 32767
  // Max_Current = 3.2767A before overflow
  //
  // If Max_Current > Max_Possible_I then
  //    Max_Current_Before_Overflow = MaxPossible_I
  // Else
  //    Max_Current_Before_Overflow = Max_Current
  // End If
  //
  // Max_ShuntVoltage = Max_Current_Before_Overflow * RSHUNT
  // Max_ShuntVoltage = 0.32V
  //
  // If Max_ShuntVoltage >= VSHUNT_MAX
  //    Max_ShuntVoltage_Before_Overflow = VSHUNT_MAX
  // Else
  //    Max_ShuntVoltage_Before_Overflow = Max_ShuntVoltage
  // End If
  
  // 8. Compute the Maximum Power
  // MaximumPower = Max_Current_Before_Overflow * VBUS_MAX
  // MaximumPower = 3.2 * 32V
  // MaximumPower = 102.4W
  
  // Set multipliers to convert raw current/power values
  ina219_currentDivider_mA = 10;  // Current LSB = 100uA per bit (1000/100 = 10)
  ina219_powerDivider_mW = 2;     // Power LSB = 1mW per bit (2/1)

  // Set Calibration register to 'Cal' calculated above	
  wireWriteRegister(INA219_REG_CALIBRATION, ina219_calValue);
  
  // Set Config register to take into account the settings above
  uint16_t config = INA219_CONFIG_BVOLTAGERANGE_32V |
                    INA219_CONFIG_GAIN_8_320MV |
                    INA219_CONFIG_BADCRES_12BIT |
                    INA219_CONFIG_SADCRES_12BIT_1S_532US |
                    INA219_CONFIG_MODE_SANDBVOLT_CONTINUOUS;
  wireWriteRegister(INA219_REG_CONFIG, config);
}

/**************************************************************************/
/*! 
    @brief  Configures to INA219 to be able to measure up to 32V and 1A
            of current.  Each unit of current corresponds to 40uA, and each
            unit of power corresponds to 800�W. Counter overflow occurs at
            1.3A.
			
    @note   These calculations assume a 0.1 ohm resistor is present
*/
/**************************************************************************/
void Adafruit_INA219_5A::setCalibration_32V_1A(void)
{
  // By default we use a pretty huge range for the input voltage,
  // which probably isn't the most appropriate choice for system
  // that don't use a lot of power.  But all of the calculations
  // are shown below if you want to change the settings.  You will
  // also need to change any relevant register settings, such as
  // setting the VBUS_MAX to 16V instead of 32V, etc.

  // VBUS_MAX = 32V		(Assumes 32V, can also be set to 16V)
  // VSHUNT_MAX = 0.32	(Assumes Gain 8, 320mV, can also be 0.16, 0.08, 0.04)
  // RSHUNT = 0.1			(Resistor value in ohms)

  // 1. Determine max possible current
  // MaxPossible_I = VSHUNT_MAX / RSHUNT
  // MaxPossible_I = 3.2A

  // 2. Determine max expected current
  // MaxExpected_I = 1.0A

  // 3. Calculate possible range of LSBs (Min = 15-bit, Max = 12-bit)
  // MinimumLSB = MaxExpected_I/32767
  // MinimumLSB = 0.0000305             (30.5�A per bit)
  // MaximumLSB = MaxExpected_I/4096
  // MaximumLSB = 0.000244              (244�A per bit)

  // 4. Choose an LSB between the min and max values
  //    (Preferrably a roundish number close to MinLSB)
  // CurrentLSB = 0.0000400 (40�A per bit)

  // 5. Compute the calibration register
  // Cal = trunc (0.04096 / (Current_LSB * RSHUNT))
  // Cal = 10240 (0x2800)

  ina219_calValue = 10240;
  
  // 6. Calculate the power LSB
  // PowerLSB = 20 * CurrentLSB
  // PowerLSB = 0.0008 (800�W per bit)

  // 7. Compute the maximum current and shunt voltage values before overflow
  //
  // Max_Current = Current_LSB * 32767
  // Max_Current = 1.31068A before overflow
  //
  // If Max_Current > Max_Possible_I then
  //    Max_Current_Before_Overflow = MaxPossible_I
  // Else
  //    Max_Current_Before_Overflow = Max_Current
  // End If
  //
  // ... In this case, we're good though since Max_Current is less than MaxPossible_I
  //
  // Max_ShuntVoltage = Max_Current_Before_Overflow * RSHUNT
  // Max_ShuntVoltage = 0.131068V
  //
  // If Max_ShuntVoltage >= VSHUNT_MAX
  //    Max_ShuntVoltage_Before_Overflow = VSHUNT_MAX
  // Else
  //    Max_ShuntVoltage_Before_Overflow = Max_ShuntVoltage
  // End If

  // 8. Compute the Maximum Power
  // MaximumPower = Max_Current_Before_Overflow * VBUS_MAX
  // MaximumPower = 1.31068 * 32V
  // MaximumPower = 41.94176W

  // Set multipliers to convert raw current/power values
  ina219_currentDivider_mA = 25;      // Current LSB = 40uA per bit (1000/40 = 25)
  ina219_powerDivider_mW = 1;         // Power LSB = 800�W per bit

  // Set Calibration register to 'Cal' calculated above	
  wireWriteRegister(INA219_REG_CALIBRATION, ina219_calValue);

  // Set Config register to take into account the settings above
  uint16_t config = INA219_CONFIG_BVOLTAGERANGE_32V |
                    INA219_CONFIG_GAIN_8_320MV |
                    INA219_CONFIG_BADCRES_12BIT |
                    INA219_CONFIG_SADCRES_12BIT_1S_532US |
                    INA219_CONFIG_MODE_SANDBVOLT_CONTINUOUS;
  wireWriteRegister(INA219_REG_CONFIG, config);
}

void Adafruit_INA219_5A::setCalibration_16V_400mA(void) {
  
  // Calibration which uses the highest precision for 
  // current measurement (0.1mA), at the expense of 
  // only supporting 16V at 400mA max.

  // VBUS_MAX = 16V
  // VSHUNT_MAX = 0.04          (Assumes Gain 1, 40mV)
  // RSHUNT = 0.1               (Resistor value in ohms)
  
  // 1. Determine max possible current
  // MaxPossible_I = VSHUNT_MAX / RSHUNT
  // MaxPossible_I = 0.4A

  // 2. Determine max expected current
  // MaxExpected_I = 0.4A
  
  // 3. Calculate possible range of LSBs (Min = 15-bit, Max = 12-bit)
  // MinimumLSB = MaxExpected_I/32767
  // MinimumLSB = 0.0000122              (12uA per bit)
  // MaximumLSB = MaxExpected_I/4096
  // MaximumLSB = 0.0000977              (98uA per bit)
  
  // 4. Choose an LSB between the min and max values
  //    (Preferrably a roundish number close to MinLSB)
  // CurrentLSB = 0.00005 (50uA per bit)
  
  // 5. Compute the calibration register
  // Cal = trunc (0.04096 / (Current_LSB * RSHUNT))
  // Cal = 8192 (0x2000)

  ina219_calValue = 8192;

  // 6. Calculate the power LSB
  // PowerLSB = 20 * CurrentLSB
  // PowerLSB = 0.001 (1mW per bit)
  
  // 7. Compute the maximum current and shunt voltage values before overflow
  //
  // Max_Current = Current_LSB * 32767
  // Max_Current = 1.63835A before overflow
  //
  // If Max_Current > Max_Possible_I then
  //    Max_Current_Before_Overflow = MaxPossible_I
  // Else
  //    Max_Current_Before_Overflow = Max_Current
  // End If
  //
  // Max_Current_Before_Overflow = MaxPossible_I
  // Max_Current_Before_Overflow = 0.4
  //
  // Max_ShuntVoltage = Max_Current_Before_Overflow * RSHUNT
  // Max_ShuntVoltage = 0.04V
  //
  // If Max_ShuntVoltage >= VSHUNT_MAX
  //    Max_ShuntVoltage_Before_Overflow = VSHUNT_MAX
  // Else
  //    Max_ShuntVoltage_Before_Overflow = Max_ShuntVoltage
  // End If
  //
  // Max_ShuntVoltage_Before_Overflow = VSHUNT_MAX
  // Max_ShuntVoltage_Before_Overflow = 0.04V
  
  // 8. Compute the Maximum Power
  // MaximumPower = Max_Current_Before_Overflow * VBUS_MAX
  // MaximumPower = 0.4 * 16V
  // MaximumPower = 6.4W
  
  // Set multipliers to convert raw current/power values
  ina219_currentDivider_mA = 20;  // Current LSB = 50uA per bit (1000/50 = 20)
  ina219_powerDivider_mW = 1;     // Power LSB = 1mW per bit

  // Set Calibration register to 'Cal' calculated above 
  wireWriteRegister(INA219_REG_CALIBRATION, ina219_calValue);
  
  // Set Config register to take into account the settings above
  uint16_t config = INA219_CONFIG_BVOLTAGERANGE_16V |
                    INA219_CONFIG_GAIN_1_40MV |
                    INA219_CONFIG_BADCRES_12BIT |
                    INA219_CONFIG_SADCRES_12BIT_1S_532US |
                    INA219_CONFIG_MODE_SANDBVOLT_CONTINUOUS;
  wireWriteRegister(INA219_REG_CONFIG, config);
}

/**************************************************************************/
/*! 
    @brief  Instantiates a new INA219 class
*/
/**************************************************************************/
Adafruit_INA219_5A::Adafruit_INA219_5A(uint8_t addr) {
  ina219_i2caddr = addr;
  ina219_currentDivider_mA = 0;
  ina219_powerDivider_mW = 0;
}

/**************************************************************************/
/*! 
    @brief  Setups the HW (defaults to 32V and 2A for calibration values)
*/
/**************************************************************************/
void Adafruit_INA219_5A::begin(uint8_t addr) {
  ina219_i2caddr = addr;
  begin();
}

void Adafruit_INA219_5A::begin(void) {
  Wire.begin();    
  // Set chip to large range config values to start
  setCalibration_32V_2A();
}

/**************************************************************************/
/*! 
    @brief  Gets the raw bus voltage (16-bit signed integer, so +-32767)
*/
/**************************************************************************/
int16_t Adafruit_INA219_5A::getBusVoltage_raw() {
  uint16_t value;
  wireReadRegister(INA219_REG_BUSVOLTAGE, &value);

  // Shift to the right 3 to drop CNVR and OVF and multiply by LSB
  return (int16_t)((value >> 3) * 4);
}

/**************************************************************************/
/*! 
    @brief  Gets the raw shunt voltage (16-bit signed integer, so +-32767)
*/
/**************************************************************************/
int16_t Adafruit_INA219_5A::getShuntVoltage_raw() {
  uint16_t value;
  wireReadRegister(INA219_REG_SHUNTVOLTAGE, &value);
  return (int16_t)value;
}

/**************************************************************************/
/*! 
    @brief  Gets the raw current value (16-bit signed integer, so +-32767)
*/
/**************************************************************************/
int16_t Adafruit_INA219_5A::getCurrent_raw() {
  uint16_t value;

  // Sometimes a sharp load will reset the INA219, which will
  // reset the cal register, meaning CURRENT and POWER will
  // not be available ... avoid this by always setting a cal
  // value even if it's an unfortunate extra step
  wireWriteRegister(INA219_REG_CALIBRATION, ina219_calValue);

  // Now we can safely read the CURRENT register!
  wireReadRegister(INA219_REG_CURRENT, &value);
  
  return (int16_t)value;
}
 
/**************************************************************************/
/*! 
    @brief  Gets the shunt voltage in mV (so +-327mV)
*/
/**************************************************************************/
float Adafruit_INA219_5A::getShuntVoltage_mV() {
  int16_t value;
  value = getShuntVoltage_raw();
  return value * 0.01;
}

/**************************************************************************/
/*! 
    @brief  Gets the shunt voltage in volts
*/
/**************************************************************************/
float Adafruit_INA219_5A::getBusVoltage_V() {
  int16_t value = getBusVoltage_raw();
  return value * 0.001;
}

/**************************************************************************/
/*! 
    @brief  Gets the current value in mA, taking into account the
            config settings and current LSB
*/
/**************************************************************************/
float Adafruit_INA219_5A::getCurrent_mA() {
  float valueDec = getCurrent_raw();
  valueDec /= ina219_currentDivider_mA;
  return valueDec;
}


/**************************************************************************/
/*! 
    @brief  Change the config register so that the INA219 returns a current
            measurement value that is an average over 128 samples.
*/
/**************************************************************************/
void Adafruit_INA219_5A::setAmpAverage() {
  uint16_t value;

  // get the current configuration data
  wireReadRegister(INA219_REG_CONFIG, &value);

  // change out the bits to average 128 samples at 12 bits per sample
  value = value & ~INA219_CONFIG_SADCRES_MASK | INA219_CONFIG_SADCRES_12BIT_128S_69MS;

  // write the changed config value back again
  wireWriteRegister(INA219_REG_CONFIG, value);
}


/**************************************************************************/
/*! 
    @brief  Change the config register so that the INA219 returns a current
            measurement value that is an average over 128 samples.
*/
/**************************************************************************/
void Adafruit_INA219_5A::setVoltAverage() {
  uint16_t value;

  // get the current configuration data
  wireReadRegister(INA219_REG_CONFIG, &value);

  // change out the bits to average 128 samples at 12 bits per sample
  value = value & ~INA219_CONFIG_BADCRES_MASK | INA219_CONFIG_BADCRES_12BIT_128S_69MS ;

  // write the changed config value back again
  wireWriteRegister(INA219_REG_CONFIG, value);
}

