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

## 2025-02-09 - Flyweight Pattern for InfoWindows
**Learning:** Creating an `InfoWindow` for every marker in Google Maps consumes excessive memory and DOM resources, especially as the number of markers grows.
**Action:** Use a single shared `InfoWindow` instance and update its content/position dynamically on marker click. This significantly reduces initialization time and memory footprint.
