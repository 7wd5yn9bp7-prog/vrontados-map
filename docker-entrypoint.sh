#!/bin/sh

# Inject environment variables into config.js
cat <<EOF > /usr/share/nginx/html/config.js
window.CONFIG = {
  GOOGLE_MAPS_API_KEY: '${GOOGLE_MAPS_API_KEY:-YOUR_API_KEY_HERE}'
};
EOF

# Execute the CMD
exec "$@"