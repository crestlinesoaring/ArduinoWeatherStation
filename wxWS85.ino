/*
 * WS85 ultrasonic anemometer — serial wind speed & direction input.
 * Connect WS85 TX to Mega Serial1 RX (pin 19). Common GND required.
 */

#ifdef USE_WS85

#define WS85_SERIAL Serial1

// ~30 samples at 2 s/frame ≈ 60 s smoothing window (WIND_SPEED_AVG_SIZE in main sketch)
static int ws85Dir = 0;
static float ws85SpeedMps = 0;
static float ws85GustMps = 0;
static float ws85TempCelsius = 0;
static float ws85RainMillimeters = 0;
static float ws85CapVolts = 0;
static float ws85BatVolts = 0;
static bool ws85Valid = false;
static unsigned long ws85LastMs = 0;
static bool ws85HaveDir = false;
static bool ws85HaveSpeed = false;
static bool ws85HaveGust = false;
static bool ws85HaveTemp = false;
static bool ws85HaveRain = false;
static bool ws85HaveCapV = false;
static bool ws85HaveBatV = false;
static bool ws85FrameReady = false;

static float ws85ParseVolts(const String &val) {
  String s = val;
  s.trim();
  if (s.endsWith("V") || s.endsWith("v")) {
    s.remove(s.length() - 1);
    s.trim();
  }
  return s.toFloat();
}

static void ws85ResetFrame() {
  ws85HaveDir = false;
  ws85HaveSpeed = false;
  ws85HaveGust = false;
  ws85HaveTemp = false;
  ws85HaveRain = false;
  ws85HaveCapV = false;
  ws85HaveBatV = false;
}

static void ws85PrintReading() {
  if (!ws85HaveDir || !ws85HaveSpeed) return;

  Serial.print(F("WS85 rx: dir="));
  Serial.print(ws85Dir);
  Serial.print(F(" deg  speed="));
  Serial.print(ws85SpeedMps, 1);
  Serial.print(F(" m/s ("));
  Serial.print(ws85SpeedMps * 2.23694f, 1);
  Serial.print(F(" mph)"));
  Serial.print(F("  gust="));
  if (ws85HaveGust) {
    Serial.print(ws85GustMps, 1);
    Serial.print(F(" m/s ("));
    Serial.print(ws85GustMps * 2.23694f, 1);
    Serial.print(F(" mph)"));
  } else {
    Serial.print(F("n/a"));
  }
  if (ws85HaveTemp) {
    Serial.print(F("  temp="));
    Serial.print(ws85TempCelsius, 1);
    Serial.print(F(" C"));
  }
  if (ws85HaveRain) {
    Serial.print(F("  rain="));
    Serial.print(ws85RainMillimeters, 1);
    Serial.print(F(" mm"));
  }
  if (ws85HaveCapV) {
    Serial.print(F("  cap="));
    Serial.print(ws85CapVolts, 2);
    Serial.print(F(" V"));
  }
  if (ws85HaveBatV) {
    Serial.print(F("  bat="));
    Serial.print(ws85BatVolts, 2);
    Serial.print(F(" V"));
  }
  Serial.println();

  ws85FrameReady = true;
}

static void ws85ParseLine(const String &line) {
  if (line.startsWith("==========")) {
    if (line.indexOf("WS85") >= 0) {
      ws85ResetFrame();
    } else {
      ws85PrintReading();
    }
    return;
  }

  int eq = line.indexOf('=');
  if (eq < 0) return;

  String key = line.substring(0, eq);
  key.trim();
  String val = line.substring(eq + 1);
  val.trim();

  if (key == "WindDir") {
    ws85Dir = val.toInt();
    ws85Valid = true;
    ws85LastMs = millis();
    ws85HaveDir = true;
  } else if (key == "WindSpeed") {
    ws85SpeedMps = val.toFloat();
    ws85HaveSpeed = true;
  } else if (key == "WindGust") {
    ws85GustMps = val.toFloat();
    ws85HaveGust = true;
  } else if (key == "GXTS04Temp") {
    ws85TempCelsius = val.toFloat();
    ws85HaveTemp = true;
  } else if (key == "Rain") {
    ws85RainMillimeters = val.toFloat();
    ws85HaveRain = true;
  } else if (key == "CapVoltage") {
    ws85CapVolts = ws85ParseVolts(val);
    ws85HaveCapV = true;
  } else if (key == "BatVoltage") {
    ws85BatVolts = ws85ParseVolts(val);
    ws85HaveBatV = true;
  }
}

void ws85Init() {
  WS85_SERIAL.begin(WS85_BAUD);
}

void ws85Poll() {
  static String line;

  while (WS85_SERIAL.available()) {
    char c = WS85_SERIAL.read();
    if (c == '\r') continue;

    if (c == '\n') {
      if (line.length() > 0) {
        ws85ParseLine(line);
      }
      line = "";
    } else if (line.length() < 80) {
      line += c;
    }
  }
}

bool ws85Fresh(unsigned long maxAgeMs) {
  return ws85Valid && ((millis() - ws85LastMs) < maxAgeMs);
}

bool ws85ConsumeFrame() {
  if (!ws85FrameReady) return false;
  ws85FrameReady = false;
  return true;
}

float ws85SpeedMph() {
  return ws85SpeedMps * 2.23694f;
}

float ws85GustMph() {
  if (ws85HaveGust) {
    return ws85GustMps * 2.23694f;
  }
  return ws85SpeedMph();
}

int ws85Direction() {
  return ws85Dir;
}

float ws85TempC() {
  return ws85TempCelsius;
}

float ws85RainMm() {
  return ws85RainMillimeters;
}

float ws85CapVoltage() {
  return ws85CapVolts;
}

float ws85BatVoltage() {
  return ws85BatVolts;
}

#endif
