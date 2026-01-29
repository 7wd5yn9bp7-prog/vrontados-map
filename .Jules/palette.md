# Palette's Journal

## 2024-05-22 - [Keyboard Accessibility for Interactive Divs]
**Learning:** Interactive elements implemented as `div`s are invisible to keyboard users and screen readers unless explicitly handled.
**Action:** Always add `tabindex="0"`, `role="button"`, and `keydown` handlers for Enter/Space when creating non-native interactive elements.
