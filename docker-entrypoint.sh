#!/bin/sh
set -e

# Generate config.js from environment variables
cat <<EOF > /usr/share/nginx/html/config.js
window.CONFIG = {
  GOOGLE_MAPS_API_KEY: "${GOOGLE_MAPS_API_KEY}"
};
EOF

exec "$@"
