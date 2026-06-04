#!/bin/zsh
set -euo pipefail

if [[ -n "${KIRO_HOME:-}" ]]; then
  KIRO_HOME_RESOLVED="${KIRO_HOME/#\~/$HOME}"
else
  KIRO_HOME_RESOLVED="$HOME/.kiro"
fi

STEERING_DIR="$KIRO_HOME_RESOLVED/steering"

mkdir -p "$STEERING_DIR"
echo "$STEERING_DIR"
open "$STEERING_DIR"
