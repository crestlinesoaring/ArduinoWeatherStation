# ArduinoWeatherStation

Please check Wiki   
https://github.com/crestlinesoaring/ArduinoWeatherStation/wiki   

## Building with PlatformIO

This project is built with [PlatformIO](https://platformio.org) targeting the
Arduino Mega 2560 (`megaatmega2560`).

The third-party libraries are vendored directly under `libraries/` (no
submodules), so a fresh clone builds without any extra setup.

Build, upload, and monitor:

    pio run                  # build the mega firmware
    pio run -t upload        # upload to the board
    pio device monitor       # serial monitor (115200 baud)
    pio run -t upload -t monitor

A single `mega` env is defined in `platformio.ini`. Feature flags are
commented/uncommented in its `build_flags`:

    ANEMO_WS85                       WS85 ultrasonic anemometer on Serial1 (on by default)
    DONT_SLEEP                     skip night-time power save (on by default)
    BENCH_MODE                     stay awake, upload over Ethernet every 5 minutes
    ENABLE_HARDWARE_SIMULATION     enables the SIMULATE_* sensor fakes

The individual simulation `SIMULATE_RTC`, `SIMULATE_WIND_SPEED`,
`SIMULATE_WIND_DIRECTION`, `SIMULATE_INA219A_SOLAR_VOLTS`,
`SIMULATE_INA219A_SOLAR_MA`, `SIMULATE_INA219B_BATTERY_VOLTS`, and
`SIMULATE_INA219B_BATTERY_MA` defines are uncommented in the
HARDWARE SIMULATION SETTINGS block of `ArduinoWeatherStation.ino` (their
values describe the fake sensor readings: RTC Unix timestamp, wind speed in
mph, wind direction in ADC counts with 920 = North, solar/battery volts and mA).

These flags were formerly set inside the sketch (`#define` in pins.h and
ArduinoWeatherStation.ino); the feature toggles are now controlled from
`platformio.ini` build flags.

Pick the upload port explicitly with `--upload-port` when auto-detection fails:

    pio run -t upload --upload-port /dev/tty.usbmodem1101   # macOS
    pio run -t upload --upload-port COM3                    # Windows

PlatformIO merges the `.ino` files in `src/` into one sketch exactly like the
Arduino IDE (main file first, remaining files in alphabetical order), so all
globals and functions remain visible across files.

## Project layout

    src/            sketch sources (ArduinoWeatherStation.ino + tabs, pins.h, Marshall.h)
    libraries/      vendored third-party libraries, committed directly in the repo
    platformio.ini  build configuration (board, framework, library paths)