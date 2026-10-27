# Section intro – Default

## What it is
A heading block that opens a section of a page, with an optional tag, short introduction and button. It can also introduce an image or a grid of cards that sits below it.

## When to use it
- Use it to start a new topic on a long page, like "Student life" on a campus home page
- Use it to introduce a group of cards, like upcoming events or recent news
- Use it to point readers to a page with more, like "See all programs"

## When not to use it
- Don't use it at the top of a page. Use a hero instead
- Don't use it for a small heading inside text. Use a regular heading instead
- Don't stack two section intros with nothing between them

## Variants

### Layout
- **Plain:** Use it when the heading and introduction are enough, like a short section on a department page
- **Image:** Use it when one large image or video sets the scene, like a campus tour
- **Featured card grid:** Use it to show three highlights side by side, like featured programs. Figma calls it Featured (Card) Grid
- **Default card grid:** Use it for one main event plus recent news, like a college news section. Figma calls it Default (Card) Grid

### Alignment
- **Left:** Use it for most sections. The button sits to the right of the text on desktop
- **Centered:** Use it for short, high-level sections, like a page's closing call to action

### Optional parts
- **Meta:** a short tag above the title, like "Admissions"
- **Title:** the section heading. Keep it on in almost every case
- **Body:** one or two sentences of introduction
- **Button:** one link to see more
- Turn on only what you have

## Writing tips
- Keep titles under 40 characters
- Keep the introduction to two short sentences
- Write button labels that say where they go, like "See all events"
- Use one button only. Put extra links in the content below
- Don't repeat the page title in the section title

---

## Developer spec checklist

Shared rules: the section uses a `background/default` fill. On Mobile, everything stacks and the button sits below the text. Cards use `rvt-card-feature`, `rvt-card-event` and `rvt-card-news`. Images use `rvt-media-hub`. The button is `rvt-button`, sized to its label on Desktop and Mobile.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Section padding, top | `spacing/160` (160px) | `spacing/64` (48px) |
| Section padding, bottom | `spacing/160` (160px). Image layout: `spacing/80` (80px) | `spacing/64` (48px). Image layout: `spacing/32` (24px) |
| Section padding, sides | `spacing/80` (80px) | `spacing/24` (24px) |
| Gap, intro to image or cards | `spacing/48` (48px) | `spacing/32` (24px) |
| Gap, text to button | Left: `spacing/64` (64px), side by side. Centered: `spacing/40` (40px), stacked | `spacing/32` (24px), stacked |
| Meta | `tag/sm/caps` (12 / 16px), `text/brand`, `spacing/12` (12px) below | Same |
| Title | `display/md/strong` (36 / 40px), `text/brand` | `display/md/strong` (23 / 28px), `text/brand` |
| Body | `body/md/regular` (20 / 28px), `text/default`, `spacing/24` (24px) above | `body/md/regular` (18 / 24px), `text/default`, `spacing/20` (20px) above |
| Gap between cards, default grid | `spacing/40` (40px) | `spacing/24` (24px) |
| Gap between cards, featured grid | `spacing/40` (40px) | `spacing/16` (16px) |
