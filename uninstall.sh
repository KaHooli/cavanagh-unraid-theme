#!/bin/bash
set -eu

THEMER_FLASH="/boot/config/plugins/unraid.themer"
THEMER_WEB="/usr/local/emhttp/plugins/unraid.themer"

rm -f "$THEMER_FLASH/presets/cavanagh-family.css"
rm -f "$THEMER_WEB/presets/cavanagh-family.css"
rm -f "$THEMER_FLASH/cavanagh-assets/background-dark.webp"
rm -f "$THEMER_FLASH/cavanagh-assets/cavanagh-logo-dark.svg"
rmdir "$THEMER_FLASH/cavanagh-assets" 2>/dev/null || true

echo "Cavanagh Family preset files were removed."
echo "If it was active, select another preset in Unraid Themer and click Apply."
echo "Clear Background image and Logo there if you also want to remove the cached artwork."
