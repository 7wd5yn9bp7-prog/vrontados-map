#!/bin/sh

# Default to the example config if the environment variable is not set
if [ -z "$GOOGLE_MAPS_API_KEY" ]; then
    echo "Warning: GOOGLE_MAPS_API_KEY environment variable is not set."
    echo "Using default configuration from config.example.js."
    cp /usr/share/nginx/html/config.example.js /usr/share/nginx/html/config.js
else
    echo "Generating config.js from environment variable."
    echo "window.CONFIG = { GOOGLE_MAPS_API_KEY: '$GOOGLE_MAPS_API_KEY' };" > /usr/share/nginx/html/config.js
fi

exec "$@"
