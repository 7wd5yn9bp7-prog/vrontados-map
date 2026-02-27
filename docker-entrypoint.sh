#!/bin/sh
set -e

# Replace the placeholder with the actual API key from the environment variable
if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
    sed -i "s|YOUR_API_KEY_HERE|$GOOGLE_MAPS_API_KEY|g" /usr/share/nginx/html/config.js
fi

# Execute the passed command
exec "$@"
