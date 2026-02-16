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

## 2024-05-23 - Google Maps InfoWindow Scalability
**Learning:** Creating a new `google.maps.InfoWindow` instance for every marker is a memory anti-pattern that scales linearly O(N) with the number of places.
**Action:** Use a single shared `InfoWindow` instance (Flyweight pattern) and update its content/position dynamically to maintain O(1) memory usage for the info window UI.
