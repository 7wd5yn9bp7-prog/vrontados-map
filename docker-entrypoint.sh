#!/bin/sh
set -e

# Generate config.js from environment variable if provided
if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
    echo "Generating config.js from environment variable..."
    echo "window.GOOGLE_MAPS_API_KEY = '$GOOGLE_MAPS_API_KEY';" > /usr/share/nginx/html/config.js
fi

# Execute the passed command (usually nginx)
exec "$@"
