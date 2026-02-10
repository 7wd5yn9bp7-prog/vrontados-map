## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2024-10-24 - Localized ARIA Labels for Dynamic Buttons
**Learning:** Generic button text like "Street View" in a list context is ambiguous for screen reader users.
**Action:** Always append the specific item name to the `aria-label` (e.g., "Street View for [Place Name]") to provide context, and ensure the name is sanitized (quotes escaped) to prevent attribute breakage.
