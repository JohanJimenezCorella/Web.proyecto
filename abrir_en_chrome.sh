#!/bin/bash
# Script para abrir PetPals en Google Chrome

DIR="$(cd "$(dirname "$0")" && pwd)"
FILE="$DIR/index.html"

# macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    open -a "Google Chrome" "$FILE"
# Linux
elif command -v google-chrome &> /dev/null; then
    google-chrome "$FILE"
elif command -v google-chrome-stable &> /dev/null; then
    google-chrome-stable "$FILE"
elif command -v chromium-browser &> /dev/null; then
    chromium-browser "$FILE"
else
    echo "Chrome no encontrado. Abriendo con el navegador por defecto..."
    xdg-open "$FILE"
fi
