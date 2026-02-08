## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2024-10-26 - Dynamic ARIA Label Sanitization
**Learning:** Injecting dynamic text (e.g., place names) into `aria-label` attributes without sanitization can break HTML syntax if the text contains double quotes.
**Action:** Always escape double quotes (e.g., `.replace(/"/g, '&quot;')`) when embedding dynamic strings into HTML attributes.
