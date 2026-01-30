## 2026-01-30 - Hardcoded Google Maps API Key
**Vulnerability:** A valid Google Maps JavaScript API key was hardcoded in `index.html`.
**Learning:** Hardcoding secrets in client-side code committed to version control exposes them to unauthorized use and potential billing fraud. Even for client-side keys, best practice is to inject them during build/deployment to allow for rotation and environment separation.
**Prevention:** Use environment variables for injection at runtime (e.g., via Docker entrypoint) and load configuration from a separate file (`config.js`) that is ignored by git.
