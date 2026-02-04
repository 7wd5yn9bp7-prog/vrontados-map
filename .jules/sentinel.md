## 2024-05-22 - Hardcoded Google Maps API Key
**Vulnerability:** A Google Maps API key was hardcoded in `index.html`, visible to anyone with access to the codebase or the deployed site's source code.
**Learning:** Hardcoding secrets in client-side code is a common mistake. While API keys for frontend services (like Maps) are often public, they should still be decoupled to allow for environment-specific configuration, rotation without code changes, and to prevent accidental exposure of keys with elevated privileges.
**Prevention:** Use a runtime configuration pattern (e.g., `config.js` generated at startup) to inject secrets into the frontend application.
