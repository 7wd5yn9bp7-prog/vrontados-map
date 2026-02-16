# Sentinel's Journal

## 2024-05-23 - Hardcoded API Key Exposure
**Vulnerability:** A Google Maps API key was hardcoded directly in the `index.html` file, exposing it to anyone with access to the source code or the deployed application.
**Learning:** Hardcoding secrets in frontend code is a common mistake. While some API keys (like Google Maps) are intended to be public, they should still be managed via configuration to allow for different keys in different environments and to facilitate rotation without code changes. Restricting keys by HTTP referer is crucial, but not a replacement for proper secret management in the codebase.
**Prevention:** Always externalize configuration, especially secrets or sensitive keys, into a separate configuration file (e.g., `config.js`) that is not committed to version control. Use a template file (e.g., `config.example.js`) to guide developers.
