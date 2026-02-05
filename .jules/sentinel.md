## 2026-02-05 - Runtime Configuration for Static Sites
**Vulnerability:** Hardcoded API keys in `index.html`.
**Learning:** Static files cannot read environment variables directly.
**Prevention:** Use an entrypoint script (`docker-entrypoint.sh`) to generate a `config.js` file from environment variables at container startup.
