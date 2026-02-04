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

## 2024-05-23 - DocumentFragment Batching
**Learning:** Vanilla JS `appendChild` in a loop causes N reflows. `DocumentFragment` reduces this to 1 reflow.
**Action:** Always check loop-based DOM insertions for batching opportunities.
