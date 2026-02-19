## 2026-02-19 - Static Site Configuration Security
**Vulnerability:** Hardcoded Google Maps API key in `index.html`.
**Learning:** Static sites often lack a build process for environment variables, leading developers to hardcode secrets.
**Prevention:** Use a git-ignored `config.js` loaded before the main script, and provide a `config.example.js` template.
