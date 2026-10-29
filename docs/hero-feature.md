# Hero – Feature

## What it is
A feature hero is the large banner at the top of a page, with a wide headline and intro above a large photo. It sets the tone for the page and points people to their next step.

## When to use it
- Use it at the top of a major landing page, like a campus, school or campaign home page
- Use it when the photo is as important as the message, like a campus scene for a visit page
- Use it when you have a wide photo that still reads well when cropped

## When not to use it
- Don't use it more than once on a page
- Don't use it on detail pages, like a news story or event. Start with a simple page title instead
- Don't use it when the photo is small or only supporting. Use Hero – Split instead
- Don't use it without a strong photo. Use a hero without an image instead

## Variants

### List hub
- **With list hub:** Adds a short list of links beside the photo, like "On this page". Use it when people need to jump to a few key sections, like Admissions, Tuition and Visit
- **Without list hub:** The photo runs the full width. Use it when the page has one main path

### Device
- **Desktop:** Headline and intro on the left, buttons on the right, photo below
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
- Start buttons with a verb, like "Plan a visit" or "Apply now"
- Write alt text that says what the photo shows, like "Students crossing Dunn Meadow in fall"

---

## Developer spec checklist

Shared rules: background `background/default`. Primary button is `rvt-button` (Type Link, Style Strong, Size Extra-large); secondary is Style Normal with a `border/accent` border. The Strong button comes first. Photos keep their shape at any width: 2:1 on Desktop, 3:2 on Mobile. Mobile stacks everything in one column with full-width buttons. The list hub is `rvt-list-hub` (Layout Single List Hub, Size Compact, Device matching the hero).

| Element | Desktop | Mobile |
| --- | --- | --- |
| Outer padding | `spacing/40` bottom (40px) | `spacing/40` top and bottom (32px) |
| Text row padding | `spacing/128` top (128px), `spacing/80` left and right (80px), `spacing/48` bottom (48px) | `spacing/24` left and right on each block (24px) |
| Text row layout | Text fills the row; buttons sit on the right, aligned to the bottom of the text | Stacked |
| Metadata | `tag/md/caps` (14 / 18px), `text/brand`; `spacing/12` below (12px) | Same |
| Headline | `display/xl/caps` (54 / 56px), `text/brand` | `display/xl/caps` (36 / 36px) |
| Body | `body/base/regular` (18 / 28px), `text/default`; `spacing/24` above (24px) | `body/base/regular` (16 / 24px); `spacing/20` above (20px) |
| Buttons | Side by side, `spacing/48` above (48px), `spacing/16` gap (16px) | Stacked full width, `spacing/40` above (32px), `spacing/16` gap (16px) |
| Photo, without list hub | Full width inside `spacing/80` left and right (80px), 2:1 | `spacing/32` above (24px), full width, 3:2 |
| Photo, with list hub | Right side, `spacing/80` right (80px), 2:1 | Same as without |
| List hub | Left of the photo, aligned to its bottom; `spacing/80` left (80px), `spacing/40` right (40px) | Below the photo, `spacing/8` gap plus `spacing/32` top padding (32px total) |
