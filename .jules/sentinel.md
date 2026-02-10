## 2024-10-24 - Hardcoded API Key Remediation
**Vulnerability:** A Google Maps API key was hardcoded in `index.html`, exposing it to public scraping and misuse.
**Learning:** For static sites without a build step, injecting secrets is challenging. A `config.js` file loaded via `<script>` tag (and git-ignored) is a simple, effective pattern to separate configuration from code.
**Prevention:** Never hardcode API keys. Use a configuration loader pattern or build-time injection.
