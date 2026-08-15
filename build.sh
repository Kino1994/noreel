#!/usr/bin/env bash
# Uso: ./build.sh apks/<version>   -> genera out/<version>/instagram-noreel-<version>.apk firmado
set -euo pipefail
cd "$(dirname "$0")"
SRC=${1:?uso: ./build.sh apks/<version>}
OUT="out/$(basename "$SRC")"
if [ ! -f keystore/release.jks ]; then
  mkdir -p keystore
  openssl rand -hex 16 > keystore/pass.txt && chmod 600 keystore/pass.txt
  keytool -genkeypair -keystore keystore/release.jks -alias igsinreels -keyalg RSA -keysize 4096 \
    -validity 36500 -storepass "$(cat keystore/pass.txt)" -keypass "$(cat keystore/pass.txt)" -dname "CN=ig-sin-reels"
fi
KS_PASS=$(cat keystore/pass.txt) python3 patch.py "$SRC" "$OUT"
