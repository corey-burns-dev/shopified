#!/usr/bin/env bash
set -euo pipefail

STORE=${SHOPIFY_FLAG_STORE:-}
THEME_DIR=${1:-/workspace/theme-dev/my-first-theme}

if [ -z "$STORE" ]; then
  echo "SHOPIFY_FLAG_STORE is not set. Update .env and re-run."
  exit 1
fi

if [ ! -d "$THEME_DIR" ]; then
  echo "Theme directory not found: $THEME_DIR"
  exit 1
fi

cd "$THEME_DIR"
shopify theme dev --store "$STORE"
