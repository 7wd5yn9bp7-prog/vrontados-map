#!/bin/sh
set -e

# Inject the Google Maps API Key into config.js
if [ -z "$GOOGLE_MAPS_API_KEY" ]; then
    echo "Warning: GOOGLE_MAPS_API_KEY environment variable is not set."
fi

echo "window.CONFIG = { GOOGLE_MAPS_API_KEY: '${GOOGLE_MAPS_API_KEY:-YOUR_API_KEY_HERE}' };" > /usr/share/nginx/html/config.js

# Execute the CMD
exec "$@"
