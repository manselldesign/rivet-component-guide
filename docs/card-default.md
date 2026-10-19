# Card

## What it is
A box that previews one item and links to its full page, like an event, a news story or a degree program. People click anywhere on the card to open it.

## When to use it
- Use it to list several items people can choose from, like upcoming events or program options
- Use it to preview news stories or blog posts on a landing page
- Use it to point to related pages at the end of an article

## When not to use it
- Don't use it for one important message. Use a callout instead
- Don't add extra links or buttons inside a card. The whole card is already the link
- Don't mix card layouts or styles in the same row

## Variants

### Layout
- **Image:** A photo on top or to the side. Use when a picture helps people choose, like an event or a building
- **Sticker:** An illustrated icon. Use when you don't have a good photo
- **Plain:** Text only. Use for simple lists, like policies or resources

### Style
- **Outlined:** A thin border. Use in most grids and lists
- **Raised:** A soft shadow. Use to lift cards off a colored or busy background

### Orientation
- **Vertical:** Picture above the text. Use in grids of two to four cards
- **Horizontal:** Picture beside the text. Use for single-column lists, like search results

### Size
- **Default:** Use in most places
- **Compact:** Tighter spacing and smaller text. Use in sidebars or long lists

### Device
- **Desktop:** Use on larger screens
- **Mobile:** Use on phones. Horizontal cards stack like vertical ones

## Writing tips
- Keep the title to one or two lines and make it say what's on the page
- Keep the description to one or two short sentences
- Use the small tag above the title for a category, like "Event" or "News"
- Use the Featured badge on one card at most
- Put dates and locations in the metadata line, like "Oct 24 · Franklin Hall"

---

## Developer spec checklist

### Size

| Element | Default | Compact |
| --- | --- | --- |
| Card padding | `spacing/32` all sides (24px on Mobile) | `spacing/16` all sides |
| Background | `background/raised` | `background/raised` |
| Image (Vertical) | 3:2, full width, `spacing/32` below (24px on Mobile) | 3:2, full width, `spacing/24` below |
| Image (Horizontal, Desktop) | 3:2 (240 × 160px), `spacing/32` to text | TBD |
| Sticker | 80px, `spacing/24` below | TBD |
| Featured badge | `rvt-badge` Default, Strong, `spacing/12` below | Same |
| Eyebrow (tag) | `tag/sm/regular` (12 / 12px), `text/brand`, `spacing/4` below | Same |
| Title | `action/xl/strong` (20 / 28px; 18 / 24px on Mobile), `text/strong` | `action/lg/strong` (16 / 24px), `text/strong` |
| Arrow icon | `rvt-arrow-right` 16px, `spacing/16` from title | Same |
| Description | `body/base/regular` (18 / 28px; 16 / 24px on Mobile), `text/default`, `spacing/16` above | `body/xs/regular` (14 / 20px), `spacing/8` above |
| List | `rvt-list` Medium, `body/sm/regular` (16 / 24px), `spacing/16` above | `rvt-list` Small, `body/xs/regular` (14 / 20px), `spacing/8` above |
| Footer block | `spacing/24` above, `spacing/16` between metadata and tags | `spacing/16` above, `spacing/16` between |
| Metadata | `tag/sm/regular` (12 / 12px), `text/default` | Same |
| Tags | `rvt-badge` Default, Subtle, `spacing/8` gap, wraps | Same |
| Optional parts | Featured badge, eyebrow, description, list, metadata, tags | Same |

### Style and state

| Element | Outlined | Raised |
| --- | --- | --- |
| Border | `border/default` (1px) | None |
| Shadow | None | `shadow/md` |
| Corner radius | 0 | 0 |
| Title, hover | `text/accent`, underlined | `text/accent`, underlined |
