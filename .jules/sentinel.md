## 2024-05-23 - Hardcoded Google Maps API Key
**Vulnerability:** A Google Maps API key was hardcoded directly in `index.html`.
**Learning:** Static frontend applications often struggle with environment variables because they are served as static files. Build-time injection (like `import.meta.env`) bakes the key into the artifact, which is fine for public keys but problematic if the artifact is public. Runtime injection via a `config.js` file generated at container startup is a robust pattern for Dockerized frontends.
**Prevention:** Use a `config.js` file loaded before the main application logic. In local development, use a `config.js.example` template. In Docker, generate `config.js` from environment variables using an entrypoint script.
