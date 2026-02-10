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

## 2026-02-10 - Google Maps InfoWindow Flyweight Pattern
**Learning:** Initializing a separate `google.maps.InfoWindow` for each marker creates significant memory overhead (O(N)), which is wasteful when only one window is shown at a time.
**Action:** Use a single shared `InfoWindow` instance (Flyweight pattern). Update its content and position dynamically on marker click. This reduces memory usage to O(1) and simplifies "close other windows" logic.
