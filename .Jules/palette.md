## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2024-05-22 - Dynamic ARIA Labels in Lists
**Learning:** Repeated action buttons (e.g., "Street View") in list items lack context for screen readers, making navigation confusing.
**Action:** Always include dynamic context in `aria-label` (e.g., "Street View for ${name}") for repeated elements, and sanitize dynamic strings (e.g., `.replace(/"/g, '&quot;')`) to prevent HTML attribute breakage.
