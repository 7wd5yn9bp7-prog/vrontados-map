## 2024-05-22 - [Dynamic Config for Static Sites]
**Vulnerability:** Hardcoded Google Maps API key in `index.html`.
**Learning:** Static sites often leak secrets because they lack a backend to proxy requests. Nginx images can inject env vars at runtime, but local dev requires a different approach.
**Prevention:** Use a `config.js` loader pattern:
1. `config.js` (gitignored) defines `window.ENV`.
2. `docker-entrypoint.sh` generates `config.js` from process ENV.
3. App loads `config.js` before main logic.
