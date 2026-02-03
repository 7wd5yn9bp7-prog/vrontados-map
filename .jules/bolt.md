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

## 2024-05-22 - Manual DOM Manipulation Bottlenecks
**Learning:** In vanilla JS projects without frameworks, check loop-based `appendChild` calls. They often cause layout thrashing.
**Action:** Always refactor to use `DocumentFragment` for batch insertions.
