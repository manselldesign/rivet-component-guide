# Series nav

## What it is
A pair of links at the end of a page that take readers to the previous or next page in a series. Each link shows the direction and the title of the page it leads to.

## When to use it
- Use it on pages that belong to an ordered set, like the chapters of an online orientation guide
- Use it for a news story told in several parts
- Place it at the bottom of the page, after the main content

## When not to use it
- Don't use it to move through search results or a long list. Use pagination instead
- Don't use it to suggest related pages, like other stories from the same department. Use cards instead
- Don't use it as the main way around a site. Use the header or breadcrumbs instead
- Don't use it for steps in a form. Use the form's own buttons instead

## Variants

### Device
- **Desktop:** Previous and Next sit side by side
- **Mobile:** Previous stacks above Next

### State
- **Default:** The link at rest
- **Hover:** The background tints when a reader points at a link. Desktop only, since phones don't hover

### Optional parts
- **Previous and Next links:** Show only Next on the first page of a series and only Previous on the last. The remaining link stretches to fill the space

## Writing tips
- Use the real page title so readers know where they'll land, like "Part 2: Finding your advisor"
- Keep titles to three lines or less. Longer titles get cut off
- Keep the labels "Previous" and "Next" so readers recognize them across the site

---

## Developer spec checklist

Shared rules: Each link is a `_rvt-series-nav-item` with a `background/default` fill and a 1px `border/default` border, no radius. The two links share a border (-1px gap) over `background/muted`. Hover changes the fill to `background/tint` on Desktop. The label is `tag/md/strong` (14 / 18px), `text/accent`, with a 12px `icon/accent` arrow and a `spacing/4` gap (4px); the arrow sits before Previous and after Next. The title is `action/xl/strong-fixed` (20 / 24px), `text/default`, left-aligned, three lines max, then cut off with an ellipsis. When one link is hidden, the other fills the full width.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Layout | Side by side, equal widths | Stacked, Previous on top |
| Link padding | `spacing/24` top and bottom (24px), `spacing/32` left and right (32px) | `spacing/32` all sides (24px) |
| Label to title | `spacing/12` (12px) | `spacing/8` (8px) |
