# Card-feature

## What it is
A feature card is a large doorway to a topic, like "Types of financial aid" or "Mental health support". Clicking it opens a page with more cards about that topic.

- Top-level topics on a landing page
- Student support areas, like health and wellness
- Types of financial aid or scholarships
- Colleges or schools on a campus home page

## When to use it
- Use it on a landing page to show the main topics in a section
- Use it when each topic leads to its own page of options
- Use it to give a few key topics more weight than a list of links

## When not to use it
- Don't use it for one item, like a single scholarship or service. Use the Default card instead
- Don't use it for events, news, people or offices. Use the Event, News, Profile or Contact card instead
- Don't mix Feature and Default cards in the same row. They sit on different levels

## Types

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

Shared rules: 1px `border/default` border drawn inside, on top of the picture, `background/raised` fill, no radius, no shadow. The whole card is one link. Horizontal cards stack like Vertical on Mobile. Images and sticker blocks run edge to edge, outside the content padding.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Image (Vertical) | Full width, 3:2, at the top | Same |
| Image (Horizontal) | 650 × 467px, on the left, text column centered beside it | Stacks like Vertical |
| Sticker block (Vertical) | Full width, 3:2, `component/card/sticker-background`, 148px sticker in `color/brand/main` centered. Same in every theme | Same, 118px sticker |
| Sticker block (Horizontal) | 466 × 311px, as tall as the card, `component/card/sticker-background`, 154px sticker centered | Stacks like Vertical |
| Content padding | `spacing/32` all sides (32px), Vertical and Horizontal | `spacing/32` top and sides (24px), `spacing/64` bottom (48px) |
| Top badge | Strong badge, `heading/xs/strong` (14 / 20px), `spacing/16` below | Same |
| Eyebrow | `tag/sm/caps` (12 / 16px, weight 350, uppercase, 2px tracking `--rvt-font-tracking-xl`), `text/brand`, `spacing/8` below | `tag/sm/caps` (12 / 16px), `spacing/4` below |
| Title | `display/xs/strong` (26 / 32px, weight 700, width 100% `--rvt-font-width-normal`), `text/brand` | `display/xs/strong` (20 / 24px) |
| Title (Horizontal, tablet) | Fluid, following the card's own width: 26 / 32px when the card is 1024px or wider, shrinking in a straight line to 20 / 24px at 640px. Size is always a whole pixel; line height moves in 4px steps (24, 28, 32px) | Stacks like Vertical |
| Description | `body/sm/regular` (16 / 24px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `text/default`, `spacing/16` (16px) above | Same as Desktop |
| Description (Horizontal) | Up to 750px wide | Stacks like Vertical |
| Arrow box | `spacing/40` (40 × 40px) in the bottom-right corner, outside the text flow, 1px `border/default` on top and left, 16px `rvt-arrow-right` in `icon/brand` centered. Decorative | 32 × 32px |
| Arrow box clearance | The last text block (description, or the title if there is none) stops `spacing/8` before the arrow box: 16px in from the right padding edge. Long words wrap | Not needed: the bottom padding is taller than the arrow box |
| Hover | Only when the pointer is on the title text or the arrow box: title turns `text/accent` with the browser's default underline and the arrow box fills with `background/tint` on Light, `background/default` on Dark and Crimson (the two fills the accordion uses). Instant, no transition. The arrow color and the borders stay as they are | Same |
| Focus | 2px `border/accent-strong` ring right outside the card, no gap | Same |
