# Empty state

## What it is
An empty state fills a space that has nothing in it yet, like a file upload area before anyone adds a file. It says what's missing and gives people a clear next step.

## When to use it
- Where people upload files
- Confirming what's been added before submitting
- Lists that fill up later, like saved programs

## When not to use it
- Errors, like a failed upload: use an alert
- Pages still loading: show a loading state
- Long instructions: link to them

## Variants

### Before and after files are added
- **Empty:** Nothing has been added yet. It explains what goes here and offers a way to add it
- **With files:** Shows what's been added as file chips people can remove, with a way to add more or finish

### Optional parts
- Include only the parts you need: a sticker, body text, and one or two buttons
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
| Buttons | `rvt-button` Form, Large (`component/button/height-lg`, 40px tall), side by side, `spacing/16` gap | Same height (40px), stacked and centered, each button hugs its label, `spacing/8` gap |
