#!/bin/sh

# If GOOGLE_MAPS_API_KEY is provided, generate config.js
if [ ! -z "$GOOGLE_MAPS_API_KEY" ]; then
    echo "window.CONFIG = { GOOGLE_MAPS_API_KEY: '${GOOGLE_MAPS_API_KEY}' };" > /usr/share/nginx/html/config.js
else
    # If config.js doesn't exist (e.g., from volume mount) and no env var provided, warn
    if [ ! -f /usr/share/nginx/html/config.js ]; then
        echo "WARNING: GOOGLE_MAPS_API_KEY not set and config.js not found!"
    fi
fi

# Execute the main process (CMD in Dockerfile)
exec "$@"