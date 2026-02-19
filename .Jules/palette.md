## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2025-01-28 - Dynamic ARIA Label Sanitization
**Learning:** Place names containing quotes (e.g., "Άγιος Αγαπητός") break HTML attributes when injected via template literals in `aria-label`.
**Action:** Always sanitize dynamic strings used in attributes: `const safeName = place.name.replace(/"/g, '&quot;');`.
