# Section intro – Feature

## What it is
A large, centered marketing statement that sums up why a page matters. It gives one big message room to breathe, with an optional tag, introduction, button and image.

## When to use it
- Use it for the page's one key marketing message, like "Why IU" on an admissions page
- Use it to make a bold promise or value statement, like what makes a program different
- Use it to lead into a campaign or big announcement, like a new school opening

## When not to use it
- Don't use it more than once on a page. A second one competes with the first
- Don't use it for everyday sections or to switch topics. Use Section intro – Default instead
- Don't use it for instructions or facts, like deadlines. Keep it to a marketing message
- Don't use it at the very top of a page. Use a hero instead

## Variants

### Layout
- **Plain:** Use it when the words carry the message on their own
- **Image:** Use it when a photo or video adds meaning below the text, like students on campus

### Optional parts
- **Trident:** the IU mark above the text. Use it on official university messages
- **Meta:** a short tag above the title, like "Research"
- **Line:** a short divider under the title
- **Body:** one or two short paragraphs
- **Button:** one link to learn more
- **Image:** the photo or video below, in the Image layout
- Turn on only what you have

## Writing tips
- Keep titles under 40 characters so they stay big and readable
- Keep the body to two short paragraphs
- Write button labels that say where they go, like "Explore research"
- Use one button only
- Give images alt text that describes what matters in the photo

---

## Developer spec checklist

Shared rules: everything is centered and stacked, on a `background/default` fill. Title, tag and body text use `text/brand`. The button is `rvt-button`, sized to its label. Images use `rvt-media-hub` and sit below the text.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Section padding, top | `spacing/128` (128px) | `spacing/48` (36px) |
| Section padding, bottom | `spacing/128` (128px). Image layout: `spacing/80` (80px) | `spacing/48` (36px). Image layout: `spacing/32` (24px) |
| Section padding, sides | `spacing/80` (80px) | `spacing/24` (24px) |
| Gap, text to image | `spacing/48` (48px) | `spacing/48` (36px) |
| Trident | `icon/brand`, `spacing/24` (24px) below | Same |
| Meta | `tag/sm/caps` (12 / 16px), `spacing/12` (12px) below | Same |
| Title | `display/xl/strong` (54 / 56px) | `display/xl/strong` (36 / 36px) |
| Line | 4px `border/brand-alt`, `spacing/32` (32px) above | 4px `border/brand-alt`, `spacing/24` (24px) above |
| Body | `body/xl/regular` (26 / 36px), `spacing/32` (32px) above | `body/md/regular` (18 / 24px), `spacing/24` (24px) above |
| Button, space above | `spacing/64` (64px) | `spacing/40` (32px) |
