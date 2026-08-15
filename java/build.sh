#!/usr/bin/env bash
# Compila java/src a smali (smali/com/igsinreels/{BlockScreen,Gate,Settings}*.smali).
# Requiere JDK 17 y Android SDK (platforms/android-34, build-tools/34.0.0).
set -euo pipefail
cd "$(dirname "$0")/.."
SDK=${ANDROID_HOME:-$HOME/Android/Sdk}
JAR=$SDK/platforms/android-34/android.jar
D8=$SDK/build-tools/34.0.0/d8
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
javac --release 11 -encoding UTF-8 -cp "$JAR" -d "$T/stubs" $(find java/stubs -name '*.java')
javac --release 11 -encoding UTF-8 -cp "$JAR:$T/stubs" -d "$T/classes" $(find java/src -name '*.java')
"$D8" --min-api 28 --release --lib "$JAR" --classpath "$T/stubs" --output "$T" $(find "$T/classes" -name '*.class')
java -jar tools/baksmali.jar d "$T/classes.dex" -o "$T/smali"
# Blocker.smali y BlockedFragment.smali estan escritos a mano (usan nombres ofuscados).
rm -f smali/com/igsinreels/{BlockScreen,Gate,Settings}*.smali
cp "$T"/smali/com/igsinreels/*.smali smali/com/igsinreels/
ls smali/com/igsinreels/
