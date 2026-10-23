# Hero – Callout

## What it is
A callout hero is the large banner at the top of a page, with the headline and intro next to a small card that highlights one thing. It tells people what the page is about and points them to the most timely next step.

## When to use it
- Use it at the top of a landing page that needs to feature one item, like an application deadline or an upcoming open house
- Use it when you don't have a strong photo but still want a clear starting point

## When not to use it
- Don't use it more than once on a page
- Don't use it on detail pages, like a news story or event. Start with a simple page title instead
- Don't use it when a strong photo tells the story. Use Hero – Split instead
- Don't use it to introduce a person. Use Hero – Profile instead

## Variants

### Layout
- **Side by side:** Text on the left, card on the right. Use it on wide pages. Figma calls it Column(s) 1
- **Stacked:** Card sits under the text. Use it on narrower content areas. Figma calls it Column(s) 2

### Device
- **Desktop:** Buttons sit side by side
- **Mobile:** Everything stacks, with full-width buttons and the card last

### Optional parts
- Turn on only what you have:
- **Metadata:** A short label above the headline, like the school or section name
- **Body:** One short paragraph of intro
- **Buttons:** Leave them out when the card already covers the next step
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

Shared rules: Background `background/default`, with a 1px `border/default` line along the bottom of the content. Side by side is 1600px wide, Stacked 1200px, Mobile 375px. Primary button is `rvt-button` with `background/brand`; secondary has a 1px `border/accent` border. The card is `rvt-card-default` (`background/raised`, `shadow/sm`). Headline max width 920px; body max width 800px.

| Element | Side by side | Stacked | Mobile |
| --- | --- | --- | --- |
| Outer padding | `spacing/96` top (96px), `spacing/80` left and right (80px), `spacing/96` bottom (96px) | `spacing/96` top and left (96px), `spacing/80` right (80px), `spacing/96` bottom (96px) | `spacing/40` top (32px), `spacing/24` left and right (24px), `spacing/48` bottom (36px) |
| Text to card | `spacing/64` gap (64px); card 440px wide, aligned to the bottom | `spacing/64` above the card (64px); card 700px wide | `spacing/48` above the card (36px); card full width |
| Metadata | `tag/md/caps` (14 / 14px), `text/brand`; `spacing/12` below (12px) | Same | Same |
| Headline | `display/lg/strong` (48 / 52px), `text/brand` | Same | `display/lg/strong` (29 / 32px) |
| Body | `body/base/regular` (18 / 28px), `text/default`; `spacing/20` above (20px) | Same | `body/base/regular` (16 / 24px); `spacing/24` above (24px) |
| Buttons | Side by side, `spacing/40` above (40px), `spacing/16` gap (16px), `spacing/16` left and right padding (16px) | Same | Stacked full width, `spacing/40` above (32px), `spacing/16` gap (16px) |
| Card padding | `spacing/32` all sides (32px) | Same | `spacing/32` all sides (24px) |
