# Empty state

## What it is
An empty state fills a space that has nothing in it yet, like a file upload area before anyone adds a file. It says what's missing and gives people a clear next step.

## When to use it
- Use it where people upload files, like transcripts on an application
- Use it to confirm what's been added before people submit, like "You've added 2 files"
- Use it where a list will fill up later, like saved programs or upcoming appointments

## When not to use it
- Don't use it for an error, like a failed upload. Use an alert instead
- Don't use it for a page that's still loading. Show a loading state instead
- Don't fill it with long instructions. Link to them instead

## Variants

### Files Added
- **False:** Nothing added yet. It explains what goes here and offers a way to add it
- **True:** Shows what's been added, as removable file chips, with a way to add more or finish

### Optional parts
- Turn on only what you have: sticker, body text, buttons, second button
- Use a sticker that matches the state, like a bell when empty and a check when files are added
- Keep at least one button so people always have a next step

### Button order
- On desktop, the main button goes on the right
- On phones, the buttons stack and the main button goes on top

## Writing tips
- Write the title as what's happening, like "You haven't added any files"
- Use the body to say what to do next, like "Drag and drop or browse files to add"
- Label buttons with the action, like "Browse files" or "Upload files", not "OK" or "More info"
- Tell people about limits before they hit them, like file types and sizes

---

## Developer spec checklist

Shared rules: `background/strong` fill, 2px dashed `border/default` border, no radius. Content centered. Main (Strong) button last on Desktop, first on Mobile.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Padding | `spacing/64` all sides (64px) | `spacing/48` top and bottom (36px), `spacing/24` sides (24px) |
| Sticker | 80px (`bell` empty, `check` files added), `spacing/16` below | Same |
| Content | `spacing/40` between text and buttons (40px) | `spacing/40` (32px) |
| Title | `heading/md/strong` (20 / 24px), `text/strong` | Same |
| Body | `body/base/regular` (18 / 28px), `text/default`, `spacing/8` below the title | `body/base/regular` (16 / 24px) |
| File chips | `rvt-badge` with remove icon, 1px `component/button/form-border` border, `spacing/16` above, `spacing/12` gap | Same |
| Buttons | `rvt-button` Form, Extra-large (48px), side by side, `spacing/16` gap | Stacked full width, `spacing/12` gap |
