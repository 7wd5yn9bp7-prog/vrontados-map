## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2026-02-18 - Localized ARIA Labels for Dynamic Buttons
**Learning:** Repetitive buttons like "Street View" or "Show on Map" in lists or grids provide poor context for screen reader users when multiple instances exist.
**Action:** Always include the item name in the `aria-label` (e.g., `aria-label="Street View for [Place Name]"`) and ensure dynamic strings are sanitized (e.g., escaping quotes) to prevent attribute breakage.
