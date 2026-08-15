#!/usr/bin/env bash
# Extrae el APK original de Instagram (base + splits) del movil conectado por adb.
set -euo pipefail
cd "$(dirname "$0")"
PKG=com.instagram.android
VER=$(adb shell dumpsys package $PKG | grep -m1 versionName | cut -d= -f2 | tr -d '\r')
DIR="apks/$VER"
mkdir -p "$DIR"
for p in $(adb shell pm path $PKG | sed 's/package://' | tr -d '\r'); do
  adb pull "$p" "$DIR/" >/dev/null && echo "  $(basename "$p")"
done
echo "APK $VER extraido en $DIR"
