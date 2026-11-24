# Dropdown

> [!warning] This may change
> The dropdown may change based on the navigation work that's in progress.

## What it is
A dropdown is a short menu that opens from a button or a header link, like an account menu with "My profile" and "Sign out". It keeps a few related links or actions out of the way until people need them.

- An account menu in a student portal
- A "Resources" menu in a site header
- Row actions in a staff tool
- Sharing or export options in a web app

## When to use it
- Use it to group a few related links under one button, like "Resources" in a department header
- Use it for an account or settings menu in a web app, like a student portal
- Use it when the options are links or actions, not form answers

## When not to use it
- Don't use it to pick an answer in a form. Use a select input or radio buttons instead
- Don't hide the main way around your site in it. Show important links on the page
- Don't put more than about 10 items in one menu. Split them into groups or a separate page

## Types

### Type
- **App:** Comes with its own button. Use it in web apps and tools, like an account menu
- **Header:** Just the menu. It opens from the small arrow button beside a link in the site header. The link itself still goes to its page

### Alignment
- **Left:** The menu lines up with the left edge of its button. Use it for buttons on the left of the page
- **Right:** The menu lines up with the right edge. Use it for buttons near the right edge, so it doesn't run off the screen

### Open
- **Closed and Open:** App dropdowns show just the button when closed. Header dropdowns only come Open

### Optional parts
- Include only the groups you need: a profile header, link groups with or without a group title, and action buttons
- Hide the button only when something else on the page opens the menu

## Writing tips
- Label the button with what's inside, like "Resources" or your name, not "Menu"
- Keep item labels to two or three words, like "My courses"
- Put the most-used items first
- Put actions like "Sign out" last, in their own group

## Accessibility checklist
Check these before the page goes live. Each one names who owns it.

- **Design:** Text and borders pass contrast in Light, Dark and Crimson
- **Content:** The button names what's inside, not "Menu"
- **Content:** Items stay in the same order on every page
- **Developer:** It opens on click or keyboard, never only on hover
- **Developer:** Arrow keys move through items and Escape closes it
- **Developer:** Screen readers hear whether the menu is open or closed
- **Developer:** Focus returns to the button when the menu closes

---

## Developer spec checklist

Shared rules: Menus use `background/raised` fill, no radius, and sit `spacing/8` below what opens them. Hover, in every menu: `action/sm/regular`, `text/accent` (crimson on Light), underline. Selected item: `action/sm/strong`, `text/accent`, underline, sized so the bold doesn't shift the item. The selected item is always bold, in every state (default, hover and focus); every other item stays regular. The same values apply on Desktop and Mobile.

Motion: opening fades in and moves 6px down into place in 300ms on `cubic-bezier(0.32, 0.08, 0.24, 1)`; closing is instant. Keep the menu on its own layer (`will-change: opacity, transform`) so the text doesn't flicker when the motion starts and ends. With reduced motion the menu just appears. The arrow swaps between down and up, it doesn't spin.

Keyboard: Enter, Space or the down arrow on the button opens the menu and moves focus to the first item. Up and down arrows, Home and End move through the items. Escape closes it and returns focus to the button. Tabbing out or clicking outside closes it. Focus on an item shows a 2px `border/accent-strong` outline, no offset. The button carries `aria-expanded` and `aria-controls`.

| Element | App | Header |
| --- | --- | --- |
| Button | `rvt-button` (form, Strong, Extra-large), `spacing/8` above the menu | 20px square arrow button, `spacing/4` after the header link: 12px `rvt-chevron-down-12` (`rvt-chevron-up-12` when open), `icon/strong`, 1px `border/default` drawn inside; `background/tint` on hover and when open; focus 2px `border/accent-strong`, 2px offset |
| Menu | `shadow/md`; `spacing/12` between groups, `spacing/12` top padding, `spacing/8` bottom padding | `shadow/sm`, no border; `spacing/16` sides, 18px top and bottom, so there is `spacing/24` around the text on every side; hugs its longest item; item text lines up with the header link above it |
| Profile header | `spacing/16` sides; 64px `rvt-avatar`, `spacing/8` below it; name `heading/sm/strong` (16 / 20px, weight 700, width 110% `--rvt-font-width-semi-expanded`, heading axes), `spacing/4` below it; subtitle `body/sm/regular` (16 / 24px, weight 350, width 110% `--rvt-font-width-semi-expanded`); both `text/strong` | — |
| Group title | 32px tall, `spacing/16` sides; `heading/sm/strong` (16 / 20px, weight 700, width 110% `--rvt-font-width-semi-expanded`, heading axes), `text/strong` | — |
| Item | 28px tall, `spacing/16` sides; `action/sm/regular` (14 / 20px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `text/strong`, `background/default` | 32px tall, `spacing/8` sides; `action/sm/regular` (14 / 20px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `text/strong` |
| Item hover | `action/sm/regular`, `text/accent`, underline | Same |
| Selected item | `action/sm/strong` (14 / 20px, weight 600, width 110% `--rvt-font-width-semi-expanded`), `text/accent`, underline | Same |
| Action item | 32px tall, `spacing/16` sides, 16px icon, `spacing/4` gap; `action/sm/regular` (14 / 20px, weight 350, width 110% `--rvt-font-width-semi-expanded`), always underlined. Text and icon are always the same color: `text/strong` + `icon/strong`; on hover `text/accent` + `icon/accent` | — |
