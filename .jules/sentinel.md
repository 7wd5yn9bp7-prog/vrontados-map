## 2024-05-23 - Hardcoded Google Maps API Key
**Vulnerability:** The Google Maps API key was hardcoded directly in the `src` attribute of the `<script>` tag in `index.html`.
**Learning:** Even in static HTML files, secrets must not be committed. The lack of a build process doesn't excuse security lapses; a runtime configuration file (`config.js`) is a valid alternative.
**Prevention:** Use a `config.js` file (ignored by git) to load environment-specific variables, and provide a `config.example.js` template.
