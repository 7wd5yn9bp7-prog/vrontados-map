# BOLT'S JOURNAL - CRITICAL LEARNINGS ONLY

This journal is for recording critical performance learnings.
Only add entries for:
- A performance bottleneck specific to this codebase's architecture
- An optimization that surprisingly DIDN'T work (and why)
- A rejected change with a valuable lesson
- A codebase-specific performance pattern or anti-pattern
- A surprising edge case in how this app handles performance

Format: `## YYYY-MM-DD - [Title]
**Learning:** [Insight]
**Action:** [How to apply next time]`

## 2024-02-11 - Google Maps InfoWindow Flyweight Pattern
**Learning:** Creating a new `google.maps.InfoWindow` instance for each marker significantly increases memory usage and DOM overhead, even for small datasets. The "Flyweight" pattern (using a single shared InfoWindow instance) is the standard optimization for Google Maps applications.
**Action:** Always refactor multiple `InfoWindow` creations into a single shared instance that updates its content and position dynamically.
