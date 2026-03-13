#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -Eeuo pipefail

LOG_LEVEL=$(bashio::config 'log_level' 'info')

bashio::log.info "Starting BentoPDF (log_level=${LOG_LEVEL})"

mkdir -p /tmp/nginx/logs /tmp/nginx/tmp

exec nginx -g "daemon off;"
