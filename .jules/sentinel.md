## 2026-02-27 - Hardcoded Google Maps API Key
**Vulnerability:** A valid Google Maps API key was hardcoded directly in `index.html`, making it visible in public repositories.
**Learning:** Hardcoding secrets in frontend code is a common anti-pattern, but moving them to environment variables requires careful handling in static site deployments (like Nginx) where the "environment" is build-time, not run-time.
**Prevention:** Use a `config.js` pattern injected at runtime via an entrypoint script. This allows the container to be built once (generic) and configured at runtime (specific) with secrets injected via environment variables.
