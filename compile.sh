#!/bin/bash
# Compile against ./libraries, not Arduino sketchbook copies.
# Arduino CLI 1.3+ uses sketch.yaml (default_profile: mega).
# 0.35.x panics on `dir:` entries, so those CLIs compile with --library instead.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

cli_ver="$(arduino-cli version 2>/dev/null | sed -n 's/.*Version: \([^ ]*\).*/\1/p')"
use_profile=0
if [[ "$cli_ver" =~ ^([0-9]+)\.([0-9]+) ]]; then
  major="${BASH_REMATCH[1]}"
  minor="${BASH_REMATCH[2]}"
  if (( major > 1 || (major == 1 && minor >= 3) )); then
    use_profile=1
  fi
fi

if (( use_profile )); then
  arduino-cli compile --profile mega "$@"
else
  profile_moved=0
  if [[ -f sketch.yaml ]]; then
    mv sketch.yaml sketch.yaml.off
    profile_moved=1
    trap 'if (( profile_moved )) && [[ -f sketch.yaml.off ]]; then mv sketch.yaml.off sketch.yaml; fi' EXIT
  fi
  arduino-cli compile --fqbn arduino:avr:mega \
    --library "$ROOT/libraries/Time" \
    --library "$ROOT/libraries/DS323RTC" \
    --library "$ROOT/libraries/SdFat" \
    --library "$ROOT/libraries/SparkFun_BME280" \
    --library "$ROOT/libraries/Adafruit_INA219" \
    "$@"
fi
