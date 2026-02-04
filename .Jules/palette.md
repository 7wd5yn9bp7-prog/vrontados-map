## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2024-10-26 - Localized ARIA Labels
**Learning:** Icon-only or generic text buttons (like "Street View") in a list context are confusing for screen reader users without specific context.
**Action:** Always append the item name to the `aria-label` (e.g., `aria-label="Street View για ${place.name}"`) to provide context.
