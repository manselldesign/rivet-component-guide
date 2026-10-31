# Dialog

## What it is
A dialog is a small window that opens over the page to ask for a decision or a few details, like confirming a deletion or saving changes before leaving a form. People respond to it before going back to the page.

## When to use it
- Use it to confirm an action that's hard to undo, like deleting a saved application
- Use it to warn about unsaved changes before someone leaves a form
- Use it to collect a few quick details without leaving the page, like a room booking note

## When not to use it
- Don't use it for a message people can read and move past. Use an alert instead
- Don't use it for long forms or long content. Give it its own page instead
- Don't open a dialog people didn't ask for, like a newsletter pop-up

## Variants

### Type
- **Default:** The dialog by itself
- **Modal:** The same dialog over a dimmed page. People can't use the page until they respond

### Variant
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

---

## Developer spec checklist

Shared rules: `background/raised` fill, `shadow/lg`, no radius. Modal adds a full-screen `background/inverse-strong` overlay behind the dialog. Close button: 16px `rvt-close`, pinned top right.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Title bar (Default, Form) | `spacing/24` top and bottom (24px), `spacing/40` sides (40px); `background/brand-subtle` fill, `border/brand` bottom border | `spacing/40` sides (32px) |
| Title area (confirmations) | `spacing/40` all sides (40px), `spacing/16` gap; fill and bottom border `background/success-subtle` + `border/success`, `background/warning-subtle` + `border/warning`, or `background/danger-subtle` + `border/danger` | `spacing/40` all sides (32px) |
| Status sticker | 80px `check`, `minus-circle` or `x` | 64px |
| Title | `heading/md/strong` (20 / 24px); `text/brand`, `text/success`, `text/warning` or `text/danger` | Same |
| Content | `spacing/40` all sides (40px), `spacing/32` gap (32px) | 32px all sides, 24px gap |
| Body text | `body/base/regular` (18 / 28px), `text/default` | `body/base/regular` (16 / 24px) |
| Buttons | Side by side, secondary then primary, `spacing/16` gap, `spacing/8` above | Stacked, primary on top, each button hugs its label, `spacing/8` gap |
| Form fields | `rvt-select-input`, `rvt-textarea`, `rvt-checkbox`, `spacing/32` between | `spacing/32` between (24px) |
