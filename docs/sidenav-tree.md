# Sidenav – Tree

> [!warning] This may change
> The sidenav tree may change based on the navigation work that's in progress.

## What it is
A side menu that shows the pages in one section of a site as an expanding outline. Readers open a page's group to see the pages under it, so they can see the whole path to the page they're on.

## When to use it
- Showing where a page sits in the bigger picture
- Showing where readers are in a section
- Beside the page content, not instead of it

## When not to use it
- Small sites with a few pages: use header links
- Long, hard-to-scan outlines: use sidenav drilldown
- Pages read in order: use series nav

## Variants

### Levels
- **One to Five:** Shows how many levels are open. Open only the path to the current page, and keep the rest closed

### Item state
- **Default:** A page in this section
- **Selected:** The page the reader is on. It's bold and red so readers can see where they are
- **Hover:** The title underlines when a reader points at it, on both default and selected items
- **Open and closed:** The arrow points down when a group is closed and up when it's open

### Optional parts
- **Arrow:** Show it only on items that have pages under them. Leave it off for items that go straight to a page

## Writing tips
- Use the same titles as the pages they lead to
- Keep item titles short, ideally one line. Deeper levels have less room
- Put the section name at the top, like "In this section" or "Graduate programs"
- Mark only one item as selected

---

## Developer spec checklist

Shared rules: The menu has a `background/default` fill and `spacing/24` padding above (24px). The section title is `tag/md/caps` (14 / 20px), `text/brand`, with `spacing/12` (12px) before the first item. Items stack so neighboring borders overlap into one 1px `border/default` line (-1px gap). An open item keeps its top border only; the items in its group have no borders, and the last one closes the group with a 1px bottom border. Selected items have no border of their own. The arrow is a 24px `background/strong` button with a 12px `icon/strong` chevron, pointing down when closed and up when open. Each level indents one spacing step further, so the indents shrink with the spacing tokens on Mobile; everything else stays the same size.

| Element | Default | Hover | Selected | Selected hover |
| --- | --- | --- | --- | --- |
| Title | `action/sm/regular` (14 / 20px), `text/default` | `action/sm/regular` (14 / 20px), `text/strong`, underline | `action/sm/strong` (14 / 20px), `text/accent` | `action/sm/strong` (14 / 20px), `text/accent`, underline |
| Title to arrow | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/4` (4px) | `spacing/4` (4px) |

| Element | Top-level or open item | Item inside an open group |
| --- | --- | --- |
| Padding | `spacing/12` top and bottom (12px), `spacing/8` right (8px) | `spacing/8` top and bottom (8px), `spacing/8` right (8px) |
| Minimum height | 48px (no token) | 40px (no token) |

| Level | Left padding (indent) |
| --- | --- |
| One | `spacing/16` (16px) |
| Two | `spacing/32` (32px, 24px on Mobile) |
| Three | `spacing/48` (48px, 36px on Mobile) |
| Four | `spacing/64` (64px, 48px on Mobile) |
| Five | `spacing/80` (80px, 60px on Mobile) |
