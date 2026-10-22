# Card-event

## What it is
An event card previews one event, like a lecture, open house or performance. It shows the title, date, time and place, and links to the full event page. People click anywhere on the card to open it.

## When to use it
- Use it to list upcoming events, like on a department or calendar page
- Use it when each event has its own page with full details
- Use it when people need the date, time and place at a glance

## When not to use it
- Don't use it for a resource, service or program. Use the Default card instead
- Don't use it for a news story about an event that already happened. Use the News card instead
- Don't use it for a deadline with no time or place, like an application due date
- Don't add extra links or buttons inside a card. The whole card is already the link

## Variants

### Layout
- **Image:** Use it when you have a good photo of the event, speaker or venue
- **Date:** Use it when there's no photo. A large calendar tile shows the month, day and year
- **Plain:** Use it in long lists, like a weekly events feed, where images would slow people down

### Style
- Use Outlined as the main style. Save Raised for cards that need to stand out
- **Outlined:** A thin border. Use it for most cards, in grids and lists
- **Raised:** A soft shadow. Use it for a featured item, or to lift a card off a colored or busy background

### Orientation
- **Vertical:** Use it in grids of two to four cards across
- **Horizontal:** Use it in a single-column list of events. It stacks to vertical on phones

### Optional parts
- Include only the details you have: badge, tag, date, time, location and tags
- Leave out a detail you don't know yet instead of writing "TBD"
- Use the badge for one short label, like "Featured" or "Free"

## How they work together

A performing arts section might use every card:

| On this page | You show | Use |
| --- | --- | --- |
| Arts landing page | Topics: Concerts, Theater, Exhibitions | Feature |
| Concerts page | Venues and ticket info: Auer Hall, Musical Arts Center, Student tickets | Default |
| Concerts page | An upcoming symphony orchestra concert | Event |
| Concerts page | Guest conductors and faculty performers | Profile |
| Concerts page | The box office's address, phone and hours | Contact |
| Concerts page | A story about last season's opera premiere | News |

An events calendar page works the same way. It lists Event cards, often in Horizontal orientation, sorted by date.

## Writing tips
- Keep titles under 78 characters, about three lines
- Put the event name in the title, not the date. The date has its own line
- Write dates the same way on every card, like "Jun 21, 2025"
- Include the building and campus in the location, like "Indianapolis Campus Center"

---

## Developer spec checklist

Shared rules: Outlined = 1px `border/default` border, no radius. Raised = `shadow/md`, no border. Both use `background/raised` fill. Hover: title turns `text/accent` with underline. Title truncates with an ellipsis. Horizontal cards stack like Vertical on Mobile.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Card padding | `spacing/32` all sides (32px) | `spacing/24` all sides (24px) |
| Image (Vertical) | Full width, 3:2, `spacing/32` below | Full width, 3:2, `spacing/24` below |
| Image (Horizontal) | 180 × 180px, `spacing/32` gap to text column | Stacks like Vertical |
| Date tile (Vertical) | `rvt-calendar-tile` centered on a 3:2 `color/brand/extra-light` block, `spacing/32` below | Same, `spacing/24` below |
| Date tile (Horizontal) | `rvt-calendar-tile` 128 × 128px, `spacing/24` gap to text column | Stacks like Vertical |
| Text column (Horizontal) | `spacing/4` top | — |
| Top badge | Strong badge, `heading/xs/strong` (14 / 20px), `spacing/12` below | Same |
| Top metadata | `tag/sm/regular` (12 / 12px), `text/brand`, `spacing/4` below | Same |
| Title | `action/xl/strong` (20 / 28px), `text/strong` | `action/xl/strong` (18 / 24px) |
| Arrow icon | 16px `rvt-arrow-right`, `spacing/16` gap from title | Same |
| Details group | 24px above (`spacing/12` + `spacing/12`), `spacing/12` between rows | Same |
| Detail row | 16px icon (calendar, clock, map pin) centered in a box as tall as one text line (`type/line-height/28`, 28px), `spacing/8` gap; text `body/base/regular` (18 / 28px), `text/default` | Icon box 24px; text `body/base/regular` (16 / 24px) |
| Bottom group | Label and tags show and hide together. `spacing/24` above, `spacing/16` gap | Same |
| Bottom label | "Tags:" `tag/sm/regular` (12 / 12px), `text/default` | Same |
| Tags row | Subtle badges, `spacing/8` gap, wraps | Same |
