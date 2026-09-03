@echo off
setlocal
REM Upload the compiled firmware to the board via serial.
REM Usage: upload.bat [COMx]
REM   Defaults to COM3 if no port is given.
REM Mirrors compile.bat: resolves vendored libraries and requires the
REM submodules (vendored ./libraries) to be checked out.
SET "ROOT=%~dp0"
cd /d "%ROOT%"

git submodule update --init --recursive --force --checkout 2>nul
for %%L in (Time DS323RTC SdFat SparkFun_BME280 Adafruit_INA219) do (
    if not exist "%ROOT%libraries\%%L" (
        echo ERROR: missing vendored library "libraries\%%L".
        echo        Run: git submodule update --init --recursive
        exit /b 1
    )
)

set "PORT=%~1"
if "%PORT%"=="" set "PORT=COM3"

arduino-cli upload --fqbn arduino:avr:mega --port %PORT% .
exit /b %errorlevel%
