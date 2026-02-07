## 2025-02-07 - Secure Configuration Injection for Static Sites
**Vulnerability:** Hardcoded API keys in client-side code committed to version control.
**Learning:** Static sites served via Nginx in Docker require a runtime mechanism to inject environment variables, as they cannot access `process.env` directly.
**Prevention:** Use a `docker-entrypoint.sh` script to generate a `config.js` file from environment variables at container startup, and load this configuration before the main application logic.
