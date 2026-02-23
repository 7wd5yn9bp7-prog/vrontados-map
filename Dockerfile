FROM nginx:alpine

# Copy the static files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY config.example.js /usr/share/nginx/html/

# Copy entrypoint script and make it executable
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

# Copy custom nginx config for Cloud Run (uses PORT env variable)
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080 (Cloud Run default)
EXPOSE 8080

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
