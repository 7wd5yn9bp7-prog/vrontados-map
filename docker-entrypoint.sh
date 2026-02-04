#!/bin/sh
set -e

if [ -z "$GOOGLE_MAPS_API_KEY" ]; then
    echo "Warning: GOOGLE_MAPS_API_KEY environment variable is not set."
    echo "window.CONFIG = { GOOGLE_MAPS_API_KEY: '' };" > /usr/share/nginx/html/config.js
else
    echo "Creating config.js from environment variable."
    echo "window.CONFIG = { GOOGLE_MAPS_API_KEY: '$GOOGLE_MAPS_API_KEY' };" > /usr/share/nginx/html/config.js
fi

exec "$@"
