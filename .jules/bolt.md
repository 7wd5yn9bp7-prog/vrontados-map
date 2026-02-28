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

## 2026-02-28 - Optimize DOM insertions with DocumentFragment
**Learning:** Appending multiple elements sequentially to the DOM (like `placesList` and `galleryGrid`) causes multiple layout reflows and repaints, which can degrade performance, especially on mobile devices or with large datasets.
**Action:** Use `DocumentFragment` to batch DOM insertions. Append all new elements to the in-memory fragment first, then append the entire fragment to the DOM in a single operation to minimize reflows.
