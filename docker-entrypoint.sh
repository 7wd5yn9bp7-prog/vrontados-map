#!/bin/sh
set -e

# Replace the GOOGLE_MAPS_API_KEY placeholder in index.html with the environment variable
# We use single quotes around the variable name to prevent shell expansion before envsubst sees it
envsubst '${GOOGLE_MAPS_API_KEY}' < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index.html.tmp && mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/index.html

# Execute the CMD passed to the docker container
exec "$@"
