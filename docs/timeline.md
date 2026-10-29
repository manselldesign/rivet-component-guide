# Timeline

## What it is
A vertical line of steps or events in order, so readers can see what happens first, next and last. Each step is a card with a short label, a title and optional details, dates and links.

## When to use it
- Use it for steps in a process, like applying to a graduate program
- Use it for milestones, like the phases of a campus building project
- Use it for a chronology, like the history of a school or program

## When not to use it
- Don't use it for topics or resources with no order. Use a list hub or cards instead
- Don't use it for one or two items. A short paragraph is enough

## Variants

### Type
- **Default:** Use it for most timelines. Cards sit to one side of the line
- **Centered:** Use it on wide pages with short steps. Cards alternate left and right of a center line. Phones show the Default layout

### Optional parts
- Turn on only what you have: description, bullet list, important dates (up to three) and up to two buttons
- If one step has dates, give every step dates, so the pattern stays the same

## Writing tips
- Use the label for the step's place in order, like "Step one" or "Fall 2027"
- Keep titles short and specific, like "Submit your transcripts"
- Keep descriptions to one to three sentences
- Write dates in full, like "January 10, 2026", so screen readers read them clearly
- Start button text with a verb, like "Apply now" or "Register today"

---

## Developer spec checklist

Shared rules: the timeline is an ordered list. Cards use a `background/default` fill and `shadow/md`. The line is 1px `border/default`. Each step's marker is a ring (1px `border/default`) with a `background/brand` dot. Steps run in a single column on Mobile. Buttons are the Link style, Extra-large size, and fit their text. They sit side by side on Desktop and stack on Mobile, left aligned.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Marker | 32px ring, 16px dot, beside the card | 24px ring, 12px dot, above the card |
| Gap, marker to card | `spacing/24` (24px) | Marker sits in a 48px row above the card |
| Space between steps | `spacing/48` (48px) below each card | Marker row only (48px) |
| Label bar | `background/brand`; `spacing/24` (24px) top and bottom, `spacing/40` (40px) left | `background/brand`; `spacing/16` (16px) all sides |
| Label | `tag/md/caps` (14 / 20px), `text/on-brand-alt` | Same |
| Card body padding | `spacing/40` (40px) left, right and bottom | `spacing/24` (24px) left, right and bottom |
| Title | `heading/md/strong` (20 / 24px), `text/default`; `spacing/40` (40px) above | Same style; `spacing/24` (24px) above |
| Description | `body/sm/regular` (16 / 24px), `text/default`; `spacing/16` (16px) above | Same |
| Bullet list | `spacing/16` (16px) above, `spacing/8` (8px) between items | Same |
| Dates section | `spacing/24` (24px) above | `spacing/32` (24px) above |
| Dates heading | 16px `rvt-calendar` icon in a 32px `background/strong` circle; `spacing/8` (8px) gap; "Important dates:" in `body/sm/strong` (16 / 24px), `text/accent` | Same |
| Date lines | 12px below the heading (`spacing/4` + `spacing/8`), `spacing/8` (8px) between lines; name in `body/sm/strong`, date in `body/sm/regular` (16 / 24px), both `text/default` | Same |
| Buttons | `spacing/32` (32px) above, `spacing/16` (16px) gap, side by side | `spacing/32` (24px) above, `spacing/16` (16px) gap, stacked |
| Centered type | Cards alternate sides of a center line and overlap their neighbors by 32px vertically | Not used |
