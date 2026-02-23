#!/bin/sh
# Generate config.js from environment variable if present
if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
    echo "window.CONFIG = { GOOGLE_MAPS_API_KEY: '$GOOGLE_MAPS_API_KEY' };" > /usr/share/nginx/html/config.js
# Otherwise, if config.js does not exist, copy the example
elif [ ! -f /usr/share/nginx/html/config.js ]; then
    cp /usr/share/nginx/html/config.example.js /usr/share/nginx/html/config.js
fi

# Execute the CMD
exec "$@"
