## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2024-10-24 - Dynamic ARIA Label Sanitization
**Learning:** When injecting dynamic content (like `place.name`) into HTML attributes such as `aria-label`, quotes must be sanitized to prevent attribute breakage.
**Action:** Always use `.replace(/"/g, '&quot;')` or similar escaping mechanisms when embedding dynamic strings into HTML attributes.
