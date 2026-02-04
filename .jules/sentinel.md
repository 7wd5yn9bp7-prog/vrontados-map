## 2026-02-04 - Hardcoded Secrets in Static Sites
**Vulnerability:** Google Maps API key was hardcoded in `index.html`.
**Learning:** Static sites make it difficult to manage secrets. Developers often commit keys to avoid setup complexity.
**Prevention:** Implement a "loader pattern" where `index.html` reads configuration from a separate `config.js` file (git-ignored) or runtime environment injection.
