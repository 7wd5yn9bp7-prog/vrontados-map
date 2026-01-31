## 2024-05-22 - Static Site Configuration Injection
**Vulnerability:** Hardcoded Google Maps API Key in `index.html`.
**Learning:** Static sites served via Nginx in Docker often lack a native way to inject runtime environment variables, leading developers to hardcode secrets.
**Prevention:** Use a startup script (`docker-entrypoint.sh`) to generate a `config.js` file from environment variables at container runtime, and load this configuration in the client-side code.
