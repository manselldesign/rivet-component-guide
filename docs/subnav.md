# Subnav

## What it is
A row of links that moves readers between the pages inside one section of a site. The page they're on is underlined so they always know where they are.

## When to use it
- Use it for a section with a handful of related pages, like a school's About, Faculty, Programs and Contact pages
- Use it below a section header so readers can jump between pages without going back to the main menu
- Use it when every page in the section is equally important

## When not to use it
- Don't use it for the whole site. Use the header instead
- Don't use it for deep sections with many levels. Use the side navigation instead
- Don't use it to switch views of the same content on one page. Use tabs instead
- Don't use it for steps in a process. Use steps instead

## Variants

### Breakpoint
- **Desktop:** Links sit side by side, each as wide as its text
- **Mobile:** Links keep their natural width and the row scrolls sideways, so readers can swipe to see more

### State
- **Default:** A link at rest
- **Hover:** The link gets a light cream background when a reader points at it. Desktop only
- **Selected:** The current page. Shows a thick red line under the link and stronger text. Mark only one link

## Writing tips
- Keep link names to one or two words, like "Faculty" or "Apply"
- Use the same words as the page titles they lead to
- Put the most visited pages first, since some links scroll out of view on phones
- Keep the list short. More than about eight links gets hard to scan

---

## Developer spec checklist

Shared rules: a 1px `border/default` line runs under the whole row. The selected link has a 4px `border/accent` line at the bottom and `action/sm/strong` (14 / 20px) text in `text/accent`. Other links use `action/sm/regular` (14 / 20px), `text/strong`. Hover fills the link with `background/tint`. Each link hugs its text, so its width comes from the label plus padding. On Mobile the row clips and scrolls horizontally.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Link height | 48px | 32px |
| Link padding | `spacing/24` (24px) left and right | `spacing/16` (16px) left and right |
