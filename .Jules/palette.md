## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2026-02-05 - Dynamic ARIA Labels
**Learning:** Repeated action buttons (like "Street View") lose context when navigated via screen reader.
**Action:** Always inject the target entity's name into the `aria-label` (e.g., `aria-label="Street View για ${place.name}"`) to ensure users know exactly what they are interacting with.
