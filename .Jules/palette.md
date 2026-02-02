## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2024-10-24 - Contextual Labels for Dynamic Buttons
**Learning:** Generic action buttons (e.g., "Street View") inside lists need specific ARIA labels to provide context for screen readers.
**Action:** Always append the item name to the `aria-label` (e.g., `aria-label="Street View for ${place.name}"`) in dynamic templates.
