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

## 2025-02-21 - Google Maps InfoWindow Optimization
**Learning:** Creating a new `google.maps.InfoWindow` instance for every marker is a memory anti-pattern. While impact is negligible for 7 markers, this scales linearly O(N) with dataset size.
**Action:** Use the Flyweight pattern: instantiate a single `sharedInfoWindow` and update its content/position dynamically on marker clicks.
