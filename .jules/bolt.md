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

## 2026-02-22 - Flyweight Pattern for Google Maps InfoWindows
**Learning:** Instantiating `google.maps.InfoWindow` for every marker scales linearly with marker count (O(n)), consuming memory and DOM nodes.
**Action:** Use a single shared `InfoWindow` instance (Flyweight pattern) and update its content/position dynamically upon marker interaction. This reduces memory usage to O(1) for InfoWindows.
