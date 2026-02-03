#!/usr/bin/env bash
set -euo pipefail

THEME_NAME=${1:-my-first-theme}

mkdir -p /workspace/theme-dev
cd /workspace/theme-dev

shopify theme init "$THEME_NAME"

echo "Theme created at /workspace/theme-dev/$THEME_NAME"
