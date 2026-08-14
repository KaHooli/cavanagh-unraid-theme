#!/bin/bash
set -eu

THEMER_FLASH="/boot/config/plugins/unraid.themer"
THEMER_WEB="/usr/local/emhttp/plugins/unraid.themer"
PACKAGE_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
PRESET_NAME="cavanagh-family.css"
ASSET_DIR="$THEMER_FLASH/cavanagh-assets"

if [ ! -d "$THEMER_WEB" ]; then
  echo "Unraid Themer is not installed. Install it first, then run this helper again." >&2
  exit 1
fi

mkdir -p "$THEMER_FLASH/presets" "$THEMER_WEB/presets" "$ASSET_DIR"
cp -f "$PACKAGE_DIR/$PRESET_NAME" "$THEMER_FLASH/presets/$PRESET_NAME"
cp -f "$PACKAGE_DIR/$PRESET_NAME" "$THEMER_WEB/presets/$PRESET_NAME"
cp -f "$PACKAGE_DIR/assets/background-dark.webp" "$ASSET_DIR/background-dark.webp"
cp -f "$PACKAGE_DIR/assets/cavanagh-logo-dark.svg" "$ASSET_DIR/cavanagh-logo-dark.svg"

echo "Cavanagh Family was added to Unraid Themer."
echo "Open Settings > Utilities > Unraid Themer and set:"
echo "  Enable: Yes"
echo "  Theme preset: Cavanagh Family"
echo "  Background image: $ASSET_DIR/background-dark.webp"
echo "  Dim: 40% (recommended)"
echo "  Logo: $ASSET_DIR/cavanagh-logo-dark.svg"
echo "Then click Apply and hard-refresh the browser."
