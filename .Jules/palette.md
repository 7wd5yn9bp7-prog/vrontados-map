## 2024-05-22 - Dynamic ARIA Labels in Lists
**Learning:** Repetitive buttons like "Street View" or "Show on Map" in a list or grid create a confusing experience for screen reader users as they lack context.
**Action:** Always include the item name in the button's ARIA label (e.g., "Street View for [Place Name]"). Ensure dynamic values are sanitized (e.g., escaping double quotes) to prevent HTML attribute breakage.
