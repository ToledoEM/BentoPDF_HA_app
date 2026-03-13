#!/usr/bin/with-contenv bash
# shellcheck shell=bash
set -Eeuo pipefail

OPTIONS_JSON="/data/options.json"

log() {
  echo "[bentopdf-addon] $*"
}

die() {
  echo "[bentopdf-addon] ERROR: $*" >&2
  exit 1
}

read_opt() {
  local key="$1"
  jq -er --arg k "$key" '.[$k]' "$OPTIONS_JSON" 2>/dev/null || true
}

LOG_LEVEL="info"
if [[ -f "$OPTIONS_JSON" ]]; then
  LOG_LEVEL="$(read_opt log_level)"; LOG_LEVEL="${LOG_LEVEL:-info}"
fi

log "Starting BentoPDF (log_level=${LOG_LEVEL})"

mkdir -p /etc/nginx/tmp

exec nginx -g "daemon off;"
