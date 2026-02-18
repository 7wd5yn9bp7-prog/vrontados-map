## 2024-10-24 - Static Site Configuration Injection
**Vulnerability:** Hardcoded Google Maps API key in `index.html`.
**Learning:** Static sites served via Nginx without a build step cannot use build-time environment variables. Configuration must be injected at runtime via a separate JS file.
**Prevention:** Use a `config.js` file (git-ignored) loaded before the main application logic. Provide a `config.example.js` and use `COPY` in Docker to ensure a default (safe) state.
