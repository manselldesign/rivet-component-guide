# Card-default

> [!info|dark] Quick note
> A few parts of this card changed. Please double-check:
>
> - **Compact version:** A new, smaller card size was added
> - **Tags:** Tag buttons are now badges

## What it is
A clickable box that previews one page, like a resource, service or degree program, and links to it. People click anywhere on the card to open it. For events and news stories, use the Event or News card instead.

## Which card should I use?

Start with one question: what does the card lead to?

- **A group of things:** Use a Feature card. It's a doorway to a topic, like "Mental health support" or "Types of financial aid". Clicking it opens a page with more cards
- **One thing:** Use the card that matches what it is
  - **An event** with a date, time and place: Event card
  - **A news story** or announcement: News card
  - **A person**, like a faculty member or advisor: Profile card
  - **An office or department** people need to reach: Contact card
  - **Anything else**, like a resource, degree program, service or page: Default card

### How they work together

A mental health section might use every card:

| On this page | You show | Use |
| --- | --- | --- |
| Mental health landing page | Topics: Counseling, Crisis support, Wellness workshops | Feature |
| Counseling page | Services: Individual counseling, Group therapy, After-hours support | Default |
| Counseling page | An upcoming stress management workshop | Event |
| Counseling page | Counselors and their specialties | Profile |
| Counseling page | The counseling center's address, phone and hours | Contact |
| Counseling page | A story about the new wellness space | News |

Degree programs work the same way. "Arts and Humanities" is a Feature card, and each degree inside it, like "BA in English", is a Default card.

### Rules of thumb

- If clicking the card opens a list of more cards, it's a Feature card
- Don't mix Feature and Default cards in the same row. They sit on different levels
- When an item has a date, a person or contact details, use the matching card. That information then shows in the same place every time, so people can scan a list quickly

## When to use it
- Use it to list several items people can choose from, like upcoming events or program options
- Use it to preview news stories or blog posts on a landing page
- Use it to point to related pages at the end of an article

## When not to use it
- Don't use it for a topic that leads to more cards. Use a Feature card instead
- Don't use it for one important message. Use a callout instead
- Don't add extra links or buttons inside a card. The whole card is already the link
- Don't mix card layouts or styles in the same row

## Variants

### Layout
- **Image:** A photo on top or to the side. Use when a picture helps people choose, like an event or a building
- **Sticker:** An illustrated icon. Use when you don't have a good photo
- **Plain:** Text only. Use for simple lists, like policies or resources

### Style
- Use Outlined as the main style. Save Raised for cards that need to stand out
- **Outlined:** A thin border. Use it for most cards, in grids and lists
- **Raised:** A soft shadow. Use it for a featured item, or to lift a card off a colored or busy background

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
| Image (Horizontal, Desktop) | 3:2 (240 × 160px), `spacing/32` to text | Same |
| Sticker (Vertical) | 80px, `spacing/24` below (24px); 64px, `spacing/16` below (16px) on Mobile | 48px, `spacing/8` below (8px) |
| Sticker (Horizontal, Desktop) | 80px, `spacing/24` to text (24px) | 48px, `spacing/8` to text (8px) |
| Featured badge | `rvt-badge` Default, Strong, `spacing/12` below | Same |
| Eyebrow (tag) | `tag/sm/regular` (12 / 16px), `text/brand`, `spacing/4` below | Same |
| Title | `action/xl/strong` (20 / 28px; 18 / 24px on Mobile), `text/strong` | `action/lg/strong` (16 / 24px), `text/strong` |
| Arrow icon | `rvt-arrow-right` 16px, `spacing/16` from title | `rvt-arrow-right-12` 12px, `spacing/16` from title; sits in a 24px box with 0.5px top padding so the line is 12.25px from the top of the first title line |
| Description | `body/base/regular` (18 / 28px; 16 / 24px on Mobile), `text/default`, `spacing/16` above | `body/xs/regular` (14 / 20px), `spacing/8` above |
| List | `rvt-list` Medium, `body/sm/regular` (16 / 24px), `spacing/16` above | `rvt-list` Small, `body/xs/regular` (14 / 20px), `spacing/8` above |
| Footer block | `spacing/24` above, `spacing/16` between metadata and tags | `spacing/16` above, `spacing/16` between |
| Metadata | `tag/sm/regular` (12 / 16px), `text/default` | Same |
| Tags | `rvt-badge` Default, Subtle, `spacing/8` gap, wraps | Same |
| Optional parts | Featured badge, eyebrow, description, list, metadata, tags | Same |

### Style and state

| Element | Outlined | Raised |
| --- | --- | --- |
| Border | `border/default` (1px) | None |
| Shadow | None | `shadow/sm` |
| Corner radius | 0 | 0 |
| Title, hover | `text/accent`, underlined | `text/accent`, underlined |
