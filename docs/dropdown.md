# Dropdown

## What it is
A dropdown is a short menu that opens from a button or a header link, like an account menu with "My profile" and "Sign out". It keeps a few related links or actions out of the way until people need them.

## When to use it
- Use it to group a few related links under one button, like "Resources" in a department header
- Use it for an account or settings menu in a web app, like a student portal
- Use it when the options are links or actions, not form answers

## When not to use it
- Don't use it to pick an answer in a form. Use a select input or radio buttons instead
- Don't hide the main way around your site in it. Show important links on the page
- Don't put more than about 10 items in one menu. Split them into groups or a separate page

## Variants

### Type
- **App:** Comes with its own button. Use it in web apps and tools, like an account menu
- **Header:** Just the menu. It opens from a link in the site header, which acts as its button

### Alignment
- **Left:** The menu lines up with the left edge of its button. Use it for buttons on the left of the page
- **Right:** The menu lines up with the right edge. Use it for buttons near the right edge, so it doesn't run off the screen

### Open
- **Closed and Open:** App dropdowns show just the button when closed. Header dropdowns only come Open

### Optional parts
- Turn on only the groups you need: a profile header, link groups with or without a group title, and action buttons
- Hide the button only when something else on the page opens the menu

## Writing tips
- Label the button with what's inside, like "Resources" or your name, not "Menu"
- Keep item labels to two or three words, like "My courses"
- Put the most-used items first
- Put actions like "Sign out" last, in their own group

---

## Developer spec checklist

Shared rules: Menus use `background/raised` fill and `shadow/md`, no radius. Selected item: `action/sm/strong`, `text/accent`, underline. The same values apply on Desktop and Mobile.

| Element | App | Header |
| --- | --- | --- |
| Button | `rvt-button` (form), `spacing/8` above the menu | None, the header link opens it |
| Menu | `spacing/8` between groups, `spacing/8` bottom padding | `spacing/12` top and bottom, `spacing/16` sides, 1px `border/default` border |
| Item | 32px tall, `spacing/12` top and bottom, `spacing/16` sides; `action/sm/regular` (14 / 20px), `text/strong`, `background/default` | 32px tall, `spacing/8` sides; `action/sm/regular` (14 / 20px), `text/strong` |
| Item hover | `action/sm/strong`, `text/strong`, underline | `action/sm/regular`, `text/brand`, underline |
| Group title | `_Title Item`: 32px tall, `spacing/16` sides; `body/sm/strong` (16 / 24px), `text/strong` | — |
| Action item | `_Button Item`: 32px tall, `spacing/16` sides, 16px icon, `spacing/4` gap; `action/sm/regular` (14 / 20px), `text/strong` | — |
| Profile header | 64px `rvt-avatar`, `spacing/8` gap, name `body/sm/strong` (16 / 24px), `spacing/16` sides | — |
