#!/bin/sh
set -e

if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
    echo "window.CONFIG = { GOOGLE_MAPS_API_KEY: '$GOOGLE_MAPS_API_KEY' };" > /usr/share/nginx/html/config.js
fi

exec "$@"
