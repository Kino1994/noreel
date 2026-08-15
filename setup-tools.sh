#!/usr/bin/env bash
# Descarga las herramientas necesarias en ./tools (requiere Java 17+).
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p tools
dl() { [ -f "tools/$1" ] || curl -fL --retry 3 -o "tools/$1" "$2"; }
dl smali.jar           https://bitbucket.org/JesusFreke/smali/downloads/smali-2.5.2.jar
dl baksmali.jar        https://bitbucket.org/JesusFreke/smali/downloads/baksmali-2.5.2.jar
dl uber-apk-signer.jar https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar
dl APKEditor.jar      https://github.com/REAndroid/APKEditor/releases/download/V1.4.9/APKEditor-1.4.9.jar
echo "Herramientas listas en tools/"
