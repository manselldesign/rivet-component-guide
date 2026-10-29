# Hero – Split

## What it is
A split hero is the large banner at the top of a page, with the headline and intro on one side and a photo on the other. It tells people right away what the page is about and where to go next.

## When to use it
- Use it at the top of a landing page, like a school, department or program home page
- Use it when you have a strong photo that supports the page's main message

## When not to use it
- Don't use it more than once on a page
- Don't use it on detail pages, like a news story or event. Start with a simple page title instead
- Don't use it without a good photo. Use a hero without an image instead

## Variants

### List hub
- **With list hub:** Adds a short list of links under the intro, like "On this page". Use it when people need to jump to a few key sections, like Admissions, Tuition and Visit
- **Without list hub:** Headline, intro and buttons only. Use it when the page has one main path

### Device
- **Desktop:** Text on the left, photo on the right
- **Mobile:** Everything stacks: text, buttons, photo, then the list hub

### Optional parts
- **Metadata:** A short label above the headline, like the school or section name
- **Body:** One or two sentences of intro
- **Buttons:** Leave them out when the list hub already covers the next steps
- **Second button:** Add it only when there's a real second action

## Writing tips
- Keep headlines under 40 characters
- Keep the intro to one short paragraph
- Use no more than 5 links in the list hub
- Keep list hub links to a few words each, like "Tuition and aid"
- Start buttons with a verb, like "Apply now" or "Schedule a visit"
- Pick a photo that still works when it's cropped on mobile

---

## Developer spec checklist

Shared rules: Background `background/default`. Desktop is 1600 × 900px. Primary button is `rvt-button` (Type CTA, Style Strong, Size Extra-large); secondary is Style Normal with a `border/accent` border. Buttons put the Strong button first on Desktop (left) and Mobile (top), the marketing exception to the Button order rule. Mobile stacks everything in one column with full-width buttons. The list hub is `rvt-list-hub` (Layout Single List Hub, Size Compact).

| Element | Desktop | Mobile |
| --- | --- | --- |
| Outer padding | `spacing/80` left (80px); `spacing/48` gap between text and photo (48px) | `spacing/40` top and bottom (32px); `spacing/24` left and right on each block (24px) |
| Text column | 672px wide. With list hub: `spacing/96` top (96px), `spacing/32` bottom (32px), `spacing/64` above the list hub (64px). Without list hub: `spacing/48` top and bottom (48px), centered | Full width |
| Metadata | `tag/lg/caps` (16 / 24px), `text/brand`; `spacing/12` below (12px) | Same |
| Headline | `display/xl/caps` (54 / 56px), `text/brand` | `display/xl/caps` (36 / 36px) |
| Body | `body/base/regular` (18 / 28px), `text/default`; `spacing/24` above (24px) | `body/base/regular` (16 / 24px); `spacing/20` above (20px) |
| Buttons | Side by side, `spacing/48` above (48px), `spacing/16` gap (16px) | Stacked full width, `spacing/40` above (32px), `spacing/16` gap (16px) |
| Photo | `spacing/40` top and bottom (40px), `spacing/80` right (80px), `spacing/64` left (64px) | `spacing/32` above (24px) |
| List hub | Below the text, `spacing/64` above (64px) | Below the photo, `spacing/8` gap plus `spacing/32` top padding (32px total) |
