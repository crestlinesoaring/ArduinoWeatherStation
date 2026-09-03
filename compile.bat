@echo off
setlocal enabledelayedexpansion
REM Compile against .\libraries, not Arduino sketchbook/arduino15 copies.
REM Mirrors compile.sh for Windows. Run from anywhere; this script cd's to its own folder.
SET "ROOT=%~dp0"
cd /d "%ROOT%"

REM Expect: "arduino-cli  Version: x.y.z Commit: ..."
set "cli_ver="
for /f "tokens=2" %%v in ('arduino-cli version 2^>nul ^| findstr /i /c:"Version"') do set "cli_ver=%%v"
if "%cli_ver%"=="" set "cli_ver=0.0"
set "major=0" & set "minor=0"
for /f "tokens=1 delims=." %%a in ("%cli_ver%") do set "major=%%a"
for /f "tokens=2 delims=." %%b in ("%cli_ver%") do set "minor=%%b"

REM Use profile for CLI >= 1.3 (profiles / dir: entries supported).
set "use_profile=0"
if %major% GTR 1 set "use_profile=1"
if %major% EQU 1 if %minor% GEQ 3 set "use_profile=1"

if "%use_profile%"=="1" (
    arduino-cli compile --profile mega %*
    exit /b %errorlevel%
)

REM Old CLI (< 1.3): sketch.yaml dir: entries unsupported / may panic.
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
set "rc=!errorlevel!"

if defined moved (
    if exist "sketch.yaml.off" ren "sketch.yaml.off" "sketch.yaml"
)
exit /b %rc%
