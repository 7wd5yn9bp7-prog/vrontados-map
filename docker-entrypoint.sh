#!/bin/sh
set -e

# If GOOGLE_MAPS_API_KEY is set, generate config.js
if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
    echo "window.GOOGLE_MAPS_API_KEY = '$GOOGLE_MAPS_API_KEY';" > /usr/share/nginx/html/config.js
else
    # Fallback if not set (optional, or just leave as is if mounted)
    # If config.js doesn't exist, create a dummy one or copy example
    if [ ! -f /usr/share/nginx/html/config.js ]; then
        echo "window.GOOGLE_MAPS_API_KEY = 'YOUR_API_KEY_HERE';" > /usr/share/nginx/html/config.js
    fi
fi

# Execute the CMD from Dockerfile
exec "$@"
