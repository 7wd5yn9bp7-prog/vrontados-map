#!/bin/sh
set -e

echo "window.GOOGLE_MAPS_API_KEY = '${GOOGLE_MAPS_API_KEY:-YOUR_API_KEY_HERE}';" > /usr/share/nginx/html/config.js

exec "$@"
