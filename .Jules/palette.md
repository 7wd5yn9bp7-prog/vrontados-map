## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2026-02-17 - Dynamic Content in ARIA Attributes
**Learning:** When injecting dynamic strings into `aria-label` or other HTML attributes via template literals, special characters like double quotes can break the attribute syntax.
**Action:** Always sanitize dynamic content using `.replace(/"/g, '&quot;')` before embedding it in HTML attributes.
