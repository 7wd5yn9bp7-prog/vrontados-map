# BOLT'S JOURNAL

## 2026-01-29 - DOM Batching for Static Lists
**Learning:** The application renders static lists via client-side JavaScript (`renderPlaceCards`) causing layout thrashing.
**Action:** Use `DocumentFragment` for any future list rendering to minimize reflows.
