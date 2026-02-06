## 2024-05-23 - Hardcoded Google Maps API Key
**Vulnerability:** A Google Maps API key was hardcoded directly in `index.html`, exposing it to anyone viewing the source code.
**Learning:** Static sites often tempt developers to hardcode secrets because there is no backend to serve them securely. However, secrets should never be committed to version control.
**Prevention:** Use a configuration file (like `config.js`) that is git-ignored for local development, and generate this configuration file from environment variables at runtime (e.g., using a Docker entrypoint script) for production deployments.
