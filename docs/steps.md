# Steps

## What it is
A numbered row of steps that shows readers where they are in a longer process and what comes next. Each step has a short label, and the current step stands out.

## When to use it
- Use it for a process with a clear order, like an online application with four sections
- Use it when readers benefit from knowing how much is left, like a scholarship form
- Use it to show the status of each step, like which parts of a registration are complete

## When not to use it
- Don't use it for content readers can read in any order. Use tabs or headings instead
- Don't use it for more than about seven steps. Group them or split the process
- Don't use it for pages in a series of articles. Use series nav instead
- Don't use it for one or two steps. Plain headings are enough

## Variants

### Type
- **Default:** Use it for most processes. Steps sit in a row with a line between them
- **Vertical:** Use it in narrow spaces or on phones, like a sidebar. Steps stack top to bottom

### Step status
- **Default:** A step the reader hasn't reached yet or that has nothing to report
- **Success:** A step that's complete
- **Warning:** A step that needs attention but won't block the reader
- **Danger:** A step with a problem the reader must fix, like a missing document

### Step style
- **Number:** Shows the step's number. Figma calls it Type=Default on the step item
- **Icon:** Shows an icon instead, like a check mark for a finished step

### Selected
- **Selected:** The step the reader is on now. Mark only one step at a time

## Writing tips
- Keep labels to four words or less, like "Contact details"
- Start labels with a noun or verb and keep the pattern the same across steps
- Don't rely on color alone. Pair status colors with an icon so everyone can tell them apart
- Tell screen reader users which step they're on, like "Step 2 of 5, current"

---

## Developer spec checklist

Shared rules: number circles have a full radius. The selected step's number and label use the strong weight. Default type connects steps with a 1px `border/default` line on both sides of the circle. Icons come from the Rivet icon library (`rvt-pencil`, `rvt-check`, `rvt-minus`, `rvt-exclamation-mark`). Sizes don't change on Mobile.

| Element | Default (row) | Vertical |
| --- | --- | --- |
| Gap, circle to label | `spacing/12` (12px), label below | `spacing/16` (16px), label to the right |
| Circle side padding | `spacing/4` (4px) left and right | `spacing/4` (4px) top and bottom |
| Label padding | `spacing/12` (12px) left and right | None |
| Number | `action/lg/regular` (16 / 24px); selected `action/lg/strong` | Same |
| Label | `action/sm/regular` (14 / 20px), `text/default`; selected `action/sm/strong`, `text/strong` | Same |

| Step status | Circle | Number or icon |
| --- | --- | --- |
| Default | `background/default` fill, 1px `border/default` | `text/strong` |
| Default, selected | `background/brand` fill, 1px `border/accent` | `text/inverse` |
| Success | `background/success-strong` | `color/base/ultra-light` |
| Warning | `background/warning-strong` | `color/base/main` |
| Danger | `background/danger-strong` | `color/base/ultra-light` |
