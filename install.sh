#!/usr/bin/env bash
# Uso: ./install.sh out/<version>
set -euo pipefail
adb install -r --user 0 "${1:?uso: ./install.sh out/<version>}"/instagram-noreel-*.apk
