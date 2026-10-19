# Callout

## What it is
A highlighted box that draws attention to one thing on a page, like an upcoming deadline, a featured program or a person to contact. It pairs a short title and description with a picture and up to two links.

## When to use it
- Use it to point readers to one important next step, like registering for orientation
- Use it to feature a person, like a department contact or a faculty spotlight
- Use it to break up a long page with one key message

## When not to use it
- Don't use it for urgent warnings or errors. Use an alert instead
- Don't stack several callouts in a row. Pick the one that matters most
- Don't use it for a list of items. Use cards or a list instead

## Variants

### Tone
- **Strong:** Filled cream background. Use for the most important message on the page
- **Normal:** White background with a thin border. Use for supporting messages

### Layout
- **Sticker:** An illustrated icon. Use for general messages, like "Applications are open"
- **Avatar:** A person's photo. Use when the message is about someone, like "Meet your advisor"
- **Image:** A photo. Use when it adds meaning, like a campus building for a tour

### Orientation
- **Left:** Picture beside the text. Use in wide areas of the page
- **Top:** Picture above the text. Use in narrower columns

### Device
- **Desktop:** Use on larger screens
- **Mobile:** Use on phones. Everything stacks and the buttons stretch full width

## Writing tips
- Keep the title under 40 characters
- Keep the description to one or two short sentences
- Use the small tag above the title for a category, like "Admissions" or "Event"
- Make link text say where it goes, like "View the schedule". Avoid "Learn more"
- Describe photos in alt text unless they're only decorative

---

## Developer spec checklist

### Layout by device

| Element | Desktop | Mobile |
| --- | --- | --- |
| Container padding | `spacing/80` (80px) all sides | `spacing/32` (24px) top and sides, `spacing/40` (32px) bottom |
| Media-to-text gap, Sticker and Avatar | Left: `spacing/32` (32px). Top: `spacing/24` (24px) | `spacing/20` (20px) |
| Media-to-text gap, Image | Left: `spacing/40` (40px). Top: `spacing/32` (32px) | `spacing/32` (24px on Mobile) |
| Text column offset (Left only) | `spacing/8` above | None |
| Sticker | 80px, Crimson, with container | 80px, Crimson, with container |
| Avatar | `rvt-avatar` 96px (Left), 80px (Top) | `rvt-avatar` 64px |
| Image | 3:2 ratio (350 × 233px) | 3:2 ratio, full width (279 × 186px) |
| Eyebrow (tag) | `tag/sm/caps` (12 / 12px), `font/tracking/lg` (2px), `spacing/8` below | Same |
| Title | `display/sm/strong` (29 / 32px) | Same |
| Description | `body/base/regular` (18 / 28px), `spacing/16` above | `body/base/regular` (16 / 24px), `spacing/24` above |
| Button row | `spacing/32` (32px) above | `spacing/32` (24px on Mobile) above |
| Buttons | `rvt-button` CTA, Normal, Extra-large, side by side, `spacing/16` gap | Stacked, full width, `spacing/16` gap |
| Optional parts | Eyebrow, description, primary and secondary button can each be hidden | Same |

### Color by tone

| Element | Strong | Normal |
| --- | --- | --- |
| Background | `background/strong` | `background/default` |
| Border | None | `border/default` (1px) |
| Eyebrow and title | `text/brand` | `text/brand` |
| Description | `text/brand` | `text/default` |
| Corner radius | 0 | 0 |
