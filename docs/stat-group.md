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
- **Grid:** Four stats in two rows of two. Use it when the stats need longer descriptions or the space is narrower

On phones, both types stack the stats in one column.

### Optional parts
- **Icon:** A small illustration above each number. Pick one that matches the stat, like a graduation cap for degrees
- **Note:** A line under the group for the source or date, like "Statistics are current as of 2024"

## Writing tips
- Lead with the number and keep it short, like "94%" or "$2.1 billion"
- Keep each description to one short line that says what the number counts
- Round large numbers so they're easy to read
- Say how current the figures are in the note, and update them every year
- Use four stats, so rows stay even

---

## Developer spec checklist

Shared rules: The group has a `background/default` fill and a 1px `border/default` border. Stats are separated by 1px `border/default` dividers. Each stat shows an optional 64px icon, then `spacing/24` (24px) below it the number in `component/number/strong` (42 / 44px) and the description in `tag/lg/regular` (16 / 20px), both `text/brand`, with `spacing/16` (16px) between them. The optional note is `tag/sm/regular` (12 / 16px), `text/accent`, `spacing/16` (16px) below the stats and `spacing/16` (16px) from the bottom edge. Every stat stacks in one column on Mobile.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Stat padding | `spacing/64` top and bottom (64px), `spacing/32` right (32px), 52px left (no token) | `spacing/64` top and bottom (48px), `spacing/32` right (24px), 52px left (no token) |
| Default row side padding | 84px left and right (no token) | Stacked, none |
| Note side padding | `spacing/80` left and right (80px) | `spacing/32` left and right (24px) |
