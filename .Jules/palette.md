## 2024-10-24 - Interactive List Accessibility
**Learning:** Custom interactive lists (like place cards) often lack keyboard accessibility (tabindex, role, key handlers), excluding keyboard-only users.
**Action:** Always add `tabindex="0"`, `role="button"`, and `keydown` handlers (Enter/Space) to clickable `div` elements, and ensure visible `:focus-visible` styles.
