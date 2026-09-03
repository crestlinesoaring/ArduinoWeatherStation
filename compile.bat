@echo off
setlocal
REM Compile against .\libraries, not Arduino sketchbook/arduino15 copies.
REM Mirrors compile.sh for Windows. Run from anywhere; this script cd's to its own folder.
REM Always forces the vendored libraries via --library -- deterministic and
REM independent of sketch.yaml / --profile handling.
SET "ROOT=%~dp0"
cd /d "%ROOT%"

REM Ensure git submodules (vendored libraries) are checked out, then verify
REM each vendored folder actually exists -- otherwise arduino-cli silently
REM falls back to the Arduino sketchbook / arduino15 libraries.
git submodule update --init --recursive 2>nul
for %%L in (Time DS323RTC SdFat SparkFun_BME280 Adafruit_INA219) do (
    if not exist "%ROOT%libraries\%%L" (
        echo ERROR: missing vendored library "libraries\%%L".
        echo        Run: git submodule update --init --recursive
        exit /b 1
    )
)

set "moved="
if exist "sketch.yaml" (
    ren "sketch.yaml" "sketch.yaml.off"
    set "moved=1"
)

arduino-cli compile --fqbn arduino:avr:mega ^
    --library "%ROOT%libraries\Time" ^
    --library "%ROOT%libraries\DS323RTC" ^
    --library "%ROOT%libraries\SdFat" ^
    --library "%ROOT%libraries\SparkFun_BME280" ^
    --library "%ROOT%libraries\Adafruit_INA219" ^
    %*
set "rc=%errorlevel%"

if defined moved (
    if exist "sketch.yaml.off" ren "sketch.yaml.off" "sketch.yaml"
)
exit /b %rc%
