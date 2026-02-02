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

## 2026-02-02 - Batch DOM Insertions
**Learning:** Even with small lists (7 items), appending elements one-by-one triggers multiple reflows. `DocumentFragment` batches these into a single reflow, which scales better if the list grows.
**Action:** Always use `DocumentFragment` when creating multiple DOM elements in a loop.
