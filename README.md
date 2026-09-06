# ArduinoWeatherStation

Please check Wiki   
https://github.com/crestlinesoaring/ArduinoWeatherStation/wiki   

## Building with PlatformIO

This project is built with [PlatformIO](https://platformio.org) targeting the
Arduino Mega 2560 (`megaatmega2560`).

The third-party libraries are vendored directly under `libraries/` (no
submodules), so a fresh clone builds without any extra setup.

Build, upload, and monitor:

    pio run                 # build
    pio run -t upload       # upload to the board
    pio device monitor      # serial monitor (115200 baud)
    pio run -t upload -t monitor   # upload then monitor

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