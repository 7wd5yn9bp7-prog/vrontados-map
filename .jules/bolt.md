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

## 2026-02-20 - Google Maps InfoWindow Optimization
**Learning:** Instantiating a `google.maps.InfoWindow` for every marker is a memory anti-pattern, especially as the number of markers grows. The Google Maps API handles content updates efficiently.
**Action:** Use the Flyweight pattern: Create a single shared `InfoWindow` instance and update its content and position dynamically upon marker interaction.
