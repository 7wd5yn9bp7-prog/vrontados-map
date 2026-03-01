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
## 2026-03-01 - DocumentFragment Optimization
**Learning:** Using `DocumentFragment` inside loops for rendering multiple DOM elements (like `renderGalleryCards` and `renderPlaceCards`) significantly reduces layout thrashing, repaints, and reflows. Batching DOM insertions minimizes the O(N) append operations to an O(1) single append operation into the parent container.
**Action:** When dynamically generating multiple child elements, initialize a `DocumentFragment`, append each child to the fragment within the loop, and append the complete fragment to the target DOM node outside the loop.
