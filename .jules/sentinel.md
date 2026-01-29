## 2024-05-22 - Static Site Secret Management
**Vulnerability:** Hardcoded Google Maps API Key in `index.html`.
**Learning:** Static sites served via Docker often struggle with secrets because environment variables are not natively substituted into HTML files by Nginx.
**Prevention:** Use a startup script (`docker-entrypoint.sh`) with `envsubst` to replace placeholders in static files with environment variables at runtime. Ensure `gettext` is installed in the container image.
