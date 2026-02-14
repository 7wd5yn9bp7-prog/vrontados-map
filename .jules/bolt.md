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

## 2025-02-09 - [Google Maps InfoWindow Reuse]
**Learning:** Initializing a `google.maps.InfoWindow` instance per marker consumes significant memory, even if they are closed.
**Action:** Use a single shared `InfoWindow` instance for the entire map, dynamically updating its content via `setContent()` and moving it via `open(map, marker)`. This reduces memory overhead from O(N) to O(1) for info windows.
