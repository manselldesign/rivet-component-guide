# Card-feature

## What it is
A feature card is a large doorway to a topic, like "Types of financial aid" or "Mental health support". Clicking it opens a page with more cards about that topic.

## When to use it
- Use it on a landing page to show the main topics in a section
- Use it when each topic leads to its own page of options
- Use it to give a few key topics more weight than a list of links

## When not to use it
- Don't use it for one item, like a single scholarship or service. Use the Default card instead
- Don't use it for events, news, people or offices. Use the Event, News, Profile or Contact card instead
- Don't mix Feature and Default cards in the same row. They sit on different levels

## Variants

### Layout
- **Image:** Use it when a photo helps people recognize the topic, like a residence hall for housing
- **Sticker:** Use it when you don't have a good photo. An illustration sits on a light block
- **Plain:** Use it for simple topic lists where pictures would slow people down

### Orientation
- **Vertical:** Use it in grids of two to three cards across
- **Horizontal:** Use it for one or two big topics in the main column. It stacks to vertical on phones

### Optional parts
- **Badge:** One short label, like "New"
- **Eyebrow:** A small tag above the title, like the section name
- **Description:** One or two sentences on what people will find
- **Arrow:** Shows the card leads somewhere. Keep it on unless the design calls for a quieter card

## How they work together

A financial aid section might use every card:

| On this page | You show | Use |
| --- | --- | --- |
| Financial aid landing page | Topics: Scholarships, Grants, Loans, Work-study | Feature |
| Scholarships page | Scholarships: Hoosier Promise, 21st Century Scholars, Departmental awards | Default |
| Scholarships page | An upcoming FAFSA help session | Event |
| Scholarships page | Financial aid advisors by campus | Profile |
| Scholarships page | The Office of Student Financial Services' address, phone and hours | Contact |
| Scholarships page | A story about this year's scholarship recipients | News |

Program sections work the same way. "Health sciences" is a Feature card, and each program inside it is a Default card.

## Writing tips
- Name the topic, not the action: "Scholarships", not "Find scholarships"
- Keep titles to a few words so they fit on one or two lines
- Write the description from the reader's side: what they'll find on the next page

---

## Developer spec checklist

Shared rules: 1px `border/default` border, `background/raised` fill, no radius, no shadow. The whole card is the link. Hover: title turns `text/accent` with underline. Horizontal cards stack like Vertical on Mobile. Images and sticker blocks run edge to edge, outside the content padding.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Image (Vertical) | Full width, 3:2, at the top | Same |
| Image (Horizontal) | 650 × 467px, on the left | Stacks like Vertical |
| Sticker block (Vertical) | Full width, 3:2, `color/brand/extra-light`, 148px sticker centered | Same, 118px sticker |
| Sticker block (Horizontal) | 466 × 311px, `color/brand/extra-light`, 154px sticker centered | Stacks like Vertical |
| Content padding (Vertical) | `spacing/48` top and sides (48px), `spacing/64` bottom (64px) | `spacing/32` top and sides (24px), `spacing/64` bottom (48px) |
| Content padding (Horizontal) | `spacing/64` all sides (64px) | Same as Vertical |
| Top badge | Strong badge, `spacing/16` below | Same |
| Eyebrow | `tag/md/caps` (14 / 18px), `text/brand`, `spacing/8` below | `tag/sm/caps` (12 / 16px), `spacing/4` below |
| Title | `display/xs/strong` (26 / 28px), `text/brand` | `display/xs/strong` (20 / 24px) |
| Description | `body/base/regular` (18 / 28px), `text/default`, `spacing/24` above | `body/base/regular` (16 / 24px), `spacing/20` above |
| Arrow box | 48 × 48px in the bottom-right corner, 1px `border/default` on top and left, 16px `rvt-arrow-right` centered | 32 × 32px |
