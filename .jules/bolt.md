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

## 2024-05-23 - [Google Maps InfoWindow Instantiation]
**Learning:** The application was creating a new `google.maps.InfoWindow` instance for every marker, which scales linearly (O(n)) with the number of places.
**Action:** Implemented the Flyweight pattern by using a single shared `InfoWindow` instance and updating its content dynamically. This reduces memory usage to O(1) regardless of the number of markers.
