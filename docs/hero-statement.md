# Hero – Statement

## What it is
A statement hero opens a page with a bold headline and one to three large photos. It sets the tone with a strong visual first impression, and can add a card that highlights one thing, like an upcoming deadline.

## When to use it
- Use it at the top of landing pages that need a strong visual opening, like a school home page or a campaign page
- Use it when you have great photos that show the people and places behind the message

## When not to use it
- Don't use it on most everyday pages. Use Hero – Callout instead
- Don't use it to introduce a person. Use Hero – Profile instead
- Don't use it without strong photos
- Don't use more than one hero on a page

## Variants

### Layout
- **Single image:** One wide photo. Use it when one image tells the story, like a campus landmark
- **Double image:** Two square photos side by side. Use it to pair two related moments, like a lab and a classroom
- **Triple image:** Three square photos. Use it to show range, like students, faculty and campus

### Device
- **Desktop:** Photos sit in a row below the text, and the card overlaps their bottom right corner
- **Mobile:** Everything stacks, with full-width buttons and the card below the photos

### Optional parts
- **Metadata:** A short label above the headline, like the school or campaign name
- **Body:** One short paragraph of intro
- **Buttons:** Leave them out when the page has no clear next step
- **Second button:** Add it only when there's a real second action
- **Card:** Leave it out when there's nothing timely to feature

## Writing tips
- Keep the headline short and bold, a few words that state the big idea
- Keep the intro to one or two sentences
- Start buttons with a verb, like "Explore programs" or "Give now"
- Pick photos that still work when cropped to a square on mobile
- Write alt text that says what the photo shows, not "image of"

---

## Developer spec checklist

Shared rules: Background `background/default`. Desktop is 1600px wide, Mobile 375px. Primary button is `rvt-button` with `background/brand`; secondary has a 1px `border/accent` border. The card is `rvt-card-hero` (`component/hero/background`, `shadow/sm`). Photos are fixed-aspect image slots with `spacing/8` between them (8px).

| Element | Desktop | Mobile |
| --- | --- | --- |
| Outer padding | `spacing/80` left and right (80px), `spacing/40` bottom (40px) | `spacing/40` top and bottom (32px); `spacing/24` left and right on each block (24px) |
| Text block | `spacing/128` top (128px), `spacing/48` bottom (48px) | Starts at the top padding |
| Metadata | `tag/md/caps` (14 / 18px), `text/brand`; `spacing/16` below (16px) | `tag/md/caps` (14 / 18px); `spacing/12` below (12px) |
| Headline | `display/xl/caps` (54 / 56px), `text/brand` | `display/xl/caps` (36 / 36px) |
| Body | `body/md/regular` (20 / 28px), `text/default`; `spacing/24` above (24px) | `body/md/regular` (18 / 24px); `spacing/20` above (20px) |
| Buttons | Side by side, `spacing/48` above (48px), `spacing/16` gap (16px) | Stacked full width, `spacing/40` above (32px), `spacing/16` gap (16px) |
| Photos, Single | One 1440 × 720px (2:1) | One 327 × 200px; `spacing/32` above (24px) |
| Photos, Double | Two 716px squares | Two 160px squares side by side; `spacing/32` above (24px) |
| Photos, Triple | Three 475px squares | Two 160px squares side by side, then one below; `spacing/32` above (24px) |
| Card | 1200px wide, overlapping the photos, lined up with their right and bottom edges; `spacing/32` padding all sides (32px) | Full width below the photos, `spacing/8` above (8px); `spacing/32` padding all sides (24px) |
