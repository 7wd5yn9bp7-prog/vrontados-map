#!/bin/sh
set -e

if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
    echo "Injecting Google Maps API Key from environment variable..."
    echo "window.GOOGLE_MAPS_API_KEY = \"$GOOGLE_MAPS_API_KEY\";" > /usr/share/nginx/html/config.js
else
    echo "WARNING: GOOGLE_MAPS_API_KEY environment variable is not set."
fi

exec "$@"
