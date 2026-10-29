# Stat group

## What it is
A row or grid of big numbers that each sum up one fact, like enrollment or job placement rates. It helps readers take in key figures at a glance.

## When to use it
- Use it to highlight a few standout figures, like "40,000 students" on an About IU page
- Use it on program pages to show outcomes, like graduation or job placement rates
- Use it to break up a long page with facts readers can scan

## When not to use it
- Don't use it for detailed data readers need to compare. Use a table instead
- Don't use it for one number. Put it in the text or use a callout instead
- Don't use it for numbers that need a lot of explaining. Write them into the page copy instead

## Variants

### Type
- **Default:** Four stats side by side. Use it for a quick overview across a wide page
- **Grid:** Four stats in two rows of two. Use it in the main column of a details page, or when the stats need longer descriptions

On phones, both types stack the stats in one column.

### Optional parts
- **Sticker:** A small illustration above each number. Pick one that matches the stat, like a graduation cap for degrees
- **Note:** A line under the group for the source or date, like "Statistics are current as of 2024"

## Writing tips
- Lead with the number and keep it short, like "94%" or "$2.1 billion"
- Keep each description to one short line that says what the number counts
- Round large numbers so they're easy to read
- Say how current the figures are in the note, and update them every year
- Use at least two stats

---

## Developer spec checklist

Shared rules: The group has a `background/default` fill and a 1px `border/default` border. Stats are separated by 1px `border/default` dividers. Each stat shows an optional 64px sticker, then `spacing/24` (24px) below it the number in `component/number/strong` (42 / 44px) and the description in `tag/lg/regular` (16 / 24px), both `text/brand`, with `spacing/16` (16px) between them. The optional note is `tag/sm/regular` (12 / 16px), `text/accent`, `spacing/16` (16px) below the stats and `spacing/16` (16px) from the bottom edge. Every stat stacks in one column on Mobile.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Stat padding | `spacing/64` top and bottom (64px), `spacing/32` left and right (32px) | `spacing/64` top and bottom (48px), `spacing/32` left and right (24px) |
| Side padding around the stats | `spacing/48` left and right (48px). With the stat padding, content sits 80px in from each side, matching the page margin on index pages and the content margin on details pages | None, stats run edge to edge so content lines up with the 24px margin |
| Note side padding | `spacing/80` left and right (80px) | `spacing/32` left and right (24px) |
