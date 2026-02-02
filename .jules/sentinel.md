## 2024-10-27 - Hardcoded API Key in Frontend
**Vulnerability:** Found a Google Maps API key hardcoded directly in `index.html`.
**Learning:** Static sites often fall into the trap of embedding secrets because they lack a backend for injection.
**Prevention:** Use a runtime configuration pattern (e.g., `config.js` generated at startup) to inject environment variables into the static frontend.
