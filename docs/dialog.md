# Dialog

## What it is
A dialog is a small window that opens over the page to ask for a decision or a few details, like confirming a deletion or saving changes before leaving a form. People respond to it before going back to the page.

- Confirm deleting a saved application
- Warn about unsaved changes before leaving a form
- Collect a short note, like a room booking detail
- Confirm signing out of a web app

## When to use it
- Use it to confirm an action that's hard to undo, like deleting a saved application
- Use it to warn about unsaved changes before someone leaves a form
- Use it to collect a few quick details without leaving the page, like a room booking note

## When not to use it
- Don't use it for a message people can read and move past. Use an alert instead
- Don't use it for long forms or long content. Give it its own page instead
- Don't open a dialog people didn't ask for, like a newsletter pop-up

## Types

### Type
- **Default:** The dialog by itself
- **Modal:** The same dialog over a dimmed page. People can't use the page until they respond

### Purpose
- **Default:** A title, a short message and buttons. Use it for general questions
- **Success Confirmation:** Confirms something worked, like "Changes saved"
- **Warning Confirmation:** Asks people to stop and check, like unsaved changes
- **Destructive Confirmation:** Confirms something that can't be undone, like deleting a project. It has no close button, so people must choose
- **Form:** Collects a few details with fields and checkboxes

### Optional parts
- Leave out the close button only when people must pick one of the buttons

## Writing tips
- Write the title as the question or the result, like "Delete project?" or "Changes saved"
- Keep the message to one or two short sentences
- Label buttons with the action, like "Delete project" and "Keep editing", not "Yes" and "No"
- Say what happens next, like "This can't be undone"

## Accessibility checklist
Check these before the page goes live. Each one names who owns it.

- **Design:** Text and borders pass contrast in Light, Dark and Crimson
- **Content:** The title and buttons say exactly what will happen
- **Content:** Readers are told what happens to unsaved work
- **Developer:** Focus moves into the dialog and returns to where readers were
- **Developer:** Tab stays inside the dialog while it's open
- **Developer:** Escape closes it, unless readers must choose
- **Developer:** It never closes on its own. Readers decide when

---

## Developer spec checklist

Shared rules: `background/raised` fill, `shadow/md`, no radius. Modal adds a full-screen `color/base/ultra-dark` overlay at 85% behind the dialog, the same in every theme. Close button: 16px `rvt-close` in `icon/strong`, `spacing/16` from the top and right edges.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Title bar (Default, Form) | `spacing/24` top and bottom (24px), `spacing/40` sides (40px); `background/brand-subtle` fill, `border/brand` bottom border | `spacing/40` sides (32px) |
| Title area (confirmations) | `spacing/40` all sides (40px), `spacing/16` gap; fill and bottom border `background/success-subtle` + `border/success`, `background/warning-subtle` + `border/warning`, or `background/danger-subtle` + `border/danger` | `spacing/40` all sides (32px) |
| Status sticker | 80px `check`, `minus-circle` or `x` | 64px |
| Title | `heading/md/strong` (20 / 24px, weight 700, width 110% `--rvt-font-width-semi-expanded`); `text/brand`, `text/success`, `text/warning` or `text/danger`. Centered under the sticker in confirmations | Same |
| Content | `spacing/40` all sides (40px), `spacing/32` gap (32px) | 32px all sides, 24px gap |
| Body text | `body/base/regular` (18 / 28px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `text/default` | `body/base/regular` (16 / 24px) |
| Buttons | `rvt-button` Form, Large (`component/button/height-lg`, 40px tall). Side by side, secondary then primary, `spacing/16` gap, `spacing/8` above. Centered; left-aligned in Form | Same height (40px). Stacked full width, secondary then primary, `spacing/8` gap |
| Form fields | `rvt-select-input` Large (`component/input/height-lg`, 48px tall), `rvt-textarea`, `rvt-checkbox`, `spacing/32` between. Every field label is `heading/sm/strong` (16 / 20px, weight 700, width 110% `--rvt-font-width-semi-expanded`) | `spacing/32` between (24px) |
| Modal position | Centered on the screen, `spacing/48` from the edges (48px). A dialog taller than the screen scrolls inside | `spacing/24` from the edges (24px) |
| Focus | 2px `border/accent-strong` outline; 2px offset on the close button, no offset on buttons and fields | Same |
| Keyboard (Modal) | Focus moves into the dialog when it opens (to Cancel in Destructive Confirmation). Tab and Shift+Tab stay inside. Escape closes it, except Destructive Confirmation. Clicking the overlay doesn't close it. Focus returns to the button that opened it | Same |
| Motion (Modal) | Dialog and overlay fade in, 180ms ease-out. No movement or scaling. Off when reduced motion is on | Same |
