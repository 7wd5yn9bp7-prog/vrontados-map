## 2024-05-23 - Hardcoded API Key in Static Site

**Vulnerability:** A Google Maps API key was hardcoded in `index.html`.
**Learning:** Static sites served via Docker often lack a build-time configuration injection step, leading developers to commit secrets directly.
**Prevention:** Use a startup script in the Docker container to generate a configuration file (like `config.js`) from environment variables at runtime.
