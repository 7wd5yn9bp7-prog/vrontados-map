## 2026-02-14 - Hardcoded API Key in Static Site
**Vulnerability:** A Google Maps API key was hardcoded directly into the `index.html` script tag.
**Learning:** In static site architectures without environment variable injection at build time, developers often default to embedding secrets. This exposes the key in public repositories.
**Prevention:** Implement a runtime configuration pattern (`window.CONFIG`) loaded via a separate, git-ignored `config.js` file. The Docker container should provide a safe default (`config.example.js`) to prevent runtime crashes while encouraging secure key provision.
