#!/bin/sh

if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
    echo "window.GOOGLE_MAPS_API_KEY = '$GOOGLE_MAPS_API_KEY';" > /usr/share/nginx/html/config.js
fi

exec "$@"
