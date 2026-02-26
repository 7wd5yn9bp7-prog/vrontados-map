## 2026-02-26 - Hardcoded API Keys in Static Sites
**Vulnerability:** Found a Google Maps API key hardcoded in `index.html`.
**Learning:** Static sites served via Nginx in Docker cannot easily access environment variables at runtime without a custom entrypoint script.
**Prevention:** Use a `docker-entrypoint.sh` script to inject environment variables into a `config.js` file before starting the web server.
