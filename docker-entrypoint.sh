#!/bin/sh
set -e

# Generate config.js from environment variable
if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
    echo "Generating config.js from environment variable..."
    echo "window.GOOGLE_MAPS_API_KEY = '$GOOGLE_MAPS_API_KEY';" > /usr/share/nginx/html/config.js
else
    echo "WARNING: GOOGLE_MAPS_API_KEY environment variable is not set."
    # Check if config.js already exists (e.g. from volume mount or build)
    if [ ! -f /usr/share/nginx/html/config.js ]; then
        echo "Creating empty config.js..."
        echo "window.GOOGLE_MAPS_API_KEY = '';" > /usr/share/nginx/html/config.js
    fi
fi

# Execute the CMD from the Dockerfile
exec "$@"
