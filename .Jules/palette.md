## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2024-10-24 - Unified Focus States
**Learning:** Standardizing focus states across both native buttons and custom interactive elements creates a more cohesive and accessible experience.
**Action:** Apply the standard `:focus-visible` style (`box-shadow: 0 0 0 3px rgba(26, 115, 232, 0.4)`) to all interactive elements (`button`, `a`, `[role="button"]`) to ensure consistent keyboard navigation feedback.
