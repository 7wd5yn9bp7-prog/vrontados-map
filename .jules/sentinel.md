# Sentinel Security Journal

## 2024-05-23 - Hardcoded Secrets in Static Sites
**Vulnerability:** Hardcoded Google Maps API key found directly in `index.html` script tag.
**Learning:** In simple static sites without build pipelines, developers often hardcode secrets for convenience.
**Prevention:** Use a `config.js` pattern:
1. Load a git-ignored `config.js` defining `window.CONFIG` before main scripts.
2. Provide a `config.example.js` template.
3. Add runtime checks to validate configuration presence.
