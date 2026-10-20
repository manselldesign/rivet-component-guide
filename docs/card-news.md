# Card-news

## What it is
A news card previews one story, like a research discovery, a faculty award or a campus update. It shows the headline and a category, and links to the full story. People click anywhere on the card to open it.

## When to use it
- Use it to list recent stories on a school or department home page
- Use it in a news feed or an "In the news" section
- Use it to point to related stories at the end of an article

## When not to use it
- Don't use it for an upcoming event. Use the Event card instead
- Don't use it for a resource, service or program. Use the Default card instead
- Don't add extra links or buttons inside a card. The whole card is already the link

## Variants

### Layout
- **Image:** Use it when the story has a strong photo
- **Sticker:** An illustrated icon. Use it when there's no photo but a sticker fits the topic
- **Plain:** Text only. Use it in long feeds or sidebars

### Style
- **Outlined:** A thin border. Use it on white or light pages
- **Raised:** A soft shadow. Use it to lift cards off a colored or busy background

### Orientation
- **Vertical:** Use it in grids of two to four cards across
- **Horizontal:** Picture beside the text. Use it in a single-column list of stories. It stacks to vertical on phones

### Optional parts
- Turn on only what you have: badge, top category, arrow, bottom details and tags
- Use the badge for one short label, like "Featured"
- Use the bottom line for the date, like "Oct 14, 2026"

## How they work together

A research section might use every card:

| On this page | You show | Use |
| --- | --- | --- |
| Research landing page | Topics: Health sciences, Climate, Data science | Feature |
| Health sciences page | Labs and centers: Cancer Center, Brain Health Lab, Core facilities | Default |
| Health sciences page | An upcoming research symposium | Event |
| Health sciences page | Lead researchers and their projects | Profile |
| Health sciences page | The research office's address, phone and hours | Contact |
| Health sciences page | A story about a new grant for Alzheimer's research | News |

A school news page works the same way. It lists News cards, newest first.

## Writing tips
- Keep headlines short, about three lines
- Write the headline as the news, not a label: "Biology team maps a new gene", not "Research update"
- Use one category per card, like "Research" or "Awards"
- Write dates the same way on every card

---

## Developer spec checklist

Shared rules: Outlined = 1px `border/default` border, no shadow, no radius. Raised = `shadow/md`, no border. Both use `background/raised` fill. Hover: title turns `text/accent` with underline. Horizontal cards stack like Vertical on Mobile.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Card padding | `spacing/32` all sides (32px) | `spacing/24` all sides (24px) |
| Image (Vertical) | Full width, 3:2, `spacing/32` below | Full width, 3:2, `spacing/24` below |
| Image (Horizontal) | 180 × 180px, `spacing/32` gap to text column | Stacks like Vertical |
| Sticker (Vertical) | 80px sticker, `spacing/24` below (24px) | 64px sticker, `spacing/16` below (16px) |
| Sticker (Horizontal) | 80px sticker, `spacing/24` gap to text column | Stacks like Vertical |
| Text column (Horizontal) | `spacing/4` top | — |
| Top badge | Strong badge, `spacing/12` below | Same |
| Top metadata | `tag/sm/regular` (12 / 12px), `text/brand`, `spacing/4` below | Same |
| Title | `editorial/sm/regular` (23 / 28px), `text/strong` | `editorial/sm/regular` (20 / 24px) |
| Arrow icon | 16px `rvt-arrow-right`, `spacing/16` gap from title, 7px from top | Same |
| Bottom group | Own toggle. `spacing/24` above, `spacing/16` gap | Same |
| Bottom metadata | `tag/sm/regular` (12 / 12px), `text/default` | Same |
| Tags row | Own toggle. Subtle badges, `spacing/8` gap, wraps | Same |
