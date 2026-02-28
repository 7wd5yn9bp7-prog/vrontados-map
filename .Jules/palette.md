## 2024-10-24 - Interactive Cards Accessibility
**Learning:** The application uses `div` elements for interactive "cards" (like `.place-card`) without native button semantics.
**Action:** When creating or modifying such cards, always enforce `role="button"`, `tabindex="0"`, `aria-label`, and `keydown` listeners for Enter/Space to ensure keyboard accessibility.

## 2024-10-25 - Contextual ARIA labels for Dynamic Buttons
**Learning:** Generic button text like "Street View" or "Δείτε στον Χάρτη" lacks context when read by screen readers, particularly in loops creating identical buttons for different places. Dynamic variables injected into template literal HTML attributes can break if they contain unescaped quotes.
**Action:** Always provide context-rich `aria-label` attributes to dynamic buttons (e.g., `aria-label="Street View για ${safeName}"`). Always sanitize dynamic variables (e.g., `const safeName = place.name.replace(/"/g, '&quot;')`) before injecting them into HTML attributes.
