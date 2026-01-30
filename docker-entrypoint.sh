#!/bin/sh
set -e

if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
    echo "Generating config.js from environment variable..."
    echo "window.CONFIG = { GOOGLE_MAPS_API_KEY: '$GOOGLE_MAPS_API_KEY' };" > /usr/share/nginx/html/config.js
else
    echo "WARNING: GOOGLE_MAPS_API_KEY environment variable not set."
    if [ ! -f /usr/share/nginx/html/config.js ]; then
        echo "Creating default config.js with placeholder..."
        echo "window.CONFIG = { GOOGLE_MAPS_API_KEY: 'YOUR_API_KEY_HERE' };" > /usr/share/nginx/html/config.js
    fi
fi

exec "$@"
