# Hero – Callout

> [!info] Quick note
> A part of this hero changed. Please double-check:
>
> - **Hero card:** The card is now the smaller, compact card, with tighter spacing and smaller text
> - **Metadata:** The space between the metadata and the headline is now 8px (was 12px)

## What it is
The callout hero is the default hero, the banner at the top of most pages. It shows the page title and a short intro, with an optional card that highlights one thing, like a deadline or an upcoming event.

## When to use it
- Use it at the top of most pages, like a details page
- Use the card to point people to one timely next step, like "Applications close March 1"

## When not to use it
- Don't use it to introduce a person. Use Hero – Profile instead
- Don't use more than one hero on a page

## Variants

### Layout
- **Side by side:** Text on the left, card on the right. Use it in full-width pages
- **Stacked:** The card sits under the text. Use it in narrower content areas

### Breakpoint
- **Desktop:** Buttons sit side by side
- **Mobile:** Everything stacks, with buttons sized to their labels and the card last

### Optional parts
- **Metadata:** A short label above the headline, like the section name
- **Body:** One short paragraph of intro
- **Buttons:** Leave them out when the page has no clear next step
- **Second button:** Add it only when there's a real second action
- **Hero card:** Leave it out when there's nothing timely to feature

## Writing tips
- Keep headlines under 40 characters
- Keep the intro to one short paragraph
- Keep the card title under 78 characters, or 3 lines
- Keep the card description to one or two short sentences
- Start buttons with a verb, like "Apply now" or "Register"

---

## Developer spec checklist

Shared rules: Background `background/default`, with a 1px `border/default` line along the bottom of the content. Side by side is 1600px wide, Stacked 1200px, Mobile 375px. Primary button is `rvt-button` with `background/brand`; secondary has a 1px `border/accent` border. The card is `rvt-card-default`, Compact size, Raised style (`background/raised`, `shadow/sm`); see Card-default for its full spec. Headline max width 920px; body max width 800px.

| Element | Side by side | Stacked | Mobile |
| --- | --- | --- | --- |
| Outer padding | `spacing/96` top (96px), `spacing/80` left and right (80px), `spacing/96` bottom (96px) | `spacing/96` top and left (96px), `spacing/80` right (80px), `spacing/96` bottom (96px) | `spacing/40` top (32px), `spacing/24` left and right (24px), `spacing/48` bottom (36px) |
| Text to card | `spacing/64` gap (64px); card 440px wide, aligned to the bottom | `spacing/64` above the card (64px); card 700px wide | `spacing/48` above the card (36px); card full width |
| Metadata | `tag/md/caps` (14 / 20px), `text/brand`; `spacing/8` below (8px) | Same | Same |
| Headline | `display/lg/strong` (48 / 52px), `text/brand` | Same | `display/lg/strong` (29 / 32px) |
| Body | `body/base/regular` (18 / 28px), `text/default`; `spacing/20` above (20px) | Same | `body/base/regular` (16 / 24px); `spacing/24` above (24px) |
| Buttons | Side by side, `spacing/40` above (40px), `spacing/16` gap between buttons and between rows when they wrap (16px), `spacing/16` left and right padding (16px) | Same | Stacked, each button hugs its label, left aligned, `spacing/40` above (32px), `spacing/16` gap (16px) |
| Card padding | `spacing/16` all sides (16px) | Same | Same |
| Card eyebrow | `tag/sm/regular` (12 / 16px), `text/brand`, `spacing/4` below (4px) | Same | Same |
| Card title | `action/lg/strong` (16 / 24px), `text/strong`; `rvt-arrow-right-12` icon (12px), `spacing/16` from title | Same | Same |
| Card description | `body/xs/regular` (14 / 20px), `text/default`, `spacing/8` above (8px) | Same | Same |
