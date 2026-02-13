# BOLT'S JOURNAL - CRITICAL LEARNINGS ONLY

## 2024-05-22 - Shared InfoWindow Pattern
**Learning:** Instantiating a new `google.maps.InfoWindow` for every marker creates significant memory overhead (O(N)) and DOM complexity. The Google Maps API handles moving an open InfoWindow to a new anchor automatically.
**Action:** Always use a single, shared `InfoWindow` instance for map markers unless simultaneous open windows are strictly required. Update its content and position dynamically on click.
