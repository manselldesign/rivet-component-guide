# Alert

## What it is

An alert is a colored box that tells readers something important about the page or a task, like a deadline change or a problem with a form. It stands out from the rest of the content so people don't miss it.

## When to use it

- Use it to share time-sensitive news, like a closed office or an extended application deadline
- Use it to confirm something worked, like "Your registration was submitted"
- Use it to warn people before they make a mistake or miss a step
- Use it to explain an error and how to fix it

## When not to use it

- Don't use it for general page content or marketing. Use regular text or a callout instead
- Don't stack several alerts on one page. Combine them or pick the most important one
- Don't use it for messages that never change. If it's always there, it's just content

## Variants

### Status

- **Info:** Use for helpful news that isn't urgent, like new advising hours
- **Success:** Use to confirm something worked, like a submitted form
- **Warning:** Use when something could go wrong, like a deadline that's coming up soon
- **Danger:** Use when something went wrong or needs action now, like a failed payment
- **Default:** Use for general notices that don't fit a status, like a campus-wide announcement

### Type

- **Default:** A title, a short message, and an optional bulleted list
- **CTA:** Adds one or two buttons when you want people to act, like "Register now"
- **Inline:** One short line with no title. Use it next to a form field or section it's about

### Optional parts

- **Close button:** Only Info and Success alerts have one, so readers can dismiss news they've read. Warning, Danger and Default alerts stay until the issue is fixed or the notice ends

## Writing tips

- Keep the title to a few words that sum up the message
- Keep the message to one or two short sentences
- Say what happened and what to do next
- Use a list only for short, related items, like missing documents
- Button labels should start with a verb ("Update payment"), not "Click here"
- Don't rely on color alone. Say "Error" or "Warning" in the words too

## Developer spec checklist

### Default and CTA

Shared rules: icon and title sit side by side on Desktop and Mobile. Description, list and buttons all start 36px in (28px icon + 8px gap), flush with the title text. All spacing is on a 4px grid.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Container padding | `spacing/24` (24px) all sides | `spacing/16` (16px) all sides |
| Container gap | `spacing/16` (16px) between title block, list and actions | Same |
| Background | `background/{status}-subtle` | Same |
| Border | 1px `border/{status}`, drawn inside the box (`box-sizing: border-box`), so it doesn't add to the width | Same |
| Title row | Icon and title side by side, `spacing/8` (8px) gap, top-aligned | Same |
| Status icon | 28px circle, `background/{status}-strong`, 16px glyph centered | Same |
| Title | `heading/md/strong` (20 / 24px), `text/{status}`, 2px top padding so the first line centers on the 28px icon | Same |
| Description | `body/sm/regular` (16 / 24px), `text/default`, `spacing/8` (8px) below title row, max width 850px | Same |
| Description and list indent | 36px left (28px icon + `spacing/8`), flush with the title text | Same |
| List | `body/sm/regular` (16 / 24px), `text/default`, items `spacing/8` (8px) apart, each item 24px tall, bullet 6px `icon/default` centered in a 24px slot, `spacing/8` (8px) bullet to text, max width 920px | Same |
| Height with title, description and 3 list items | 212px (268px with buttons) | 244px (348px with buttons, stacked) at 327px wide |
| Close button | 16px icon, 16px from top and right (no token). On Info and Success only | Same |
| Title colors | Info `text/info`, Success `text/success`, Warning `text/warning`, Danger `text/danger`, Default `text/brand` | Same |

### CTA actions row

| Element | Desktop | Mobile |
| --- | --- | --- |
| Actions row | `spacing/8` (8px) top padding, 36px left indent (flush with the title text), `spacing/16` (16px) between buttons | `spacing/8` (8px) top padding, 36px left indent, buttons stacked, `spacing/16` (16px) apart |
| Buttons | `rvt-button` Form, Medium, no style overrides. Primary = Style Strong, Secondary = Style Normal | Same |
| Button height | 32px (`component/button/height-md`) | Same |
| Button padding | `spacing/12` (12px) left and right | Same |
| Button label | `action/sm/strong` (14 / 20px) | Same |
| Primary button | `component/button/form-background` (`#1f2528`), label `text/on-brand-alt` | Same |
| Secondary button | 1px `component/button/form-border` (`#1f2528`), label `component/button/form-text` | Same |

### Inline

| Element | Desktop | Mobile |
| --- | --- | --- |
| Container padding | `spacing/4` (4px) top and bottom, `spacing/8` (8px) left and right | `spacing/4` (4px) all sides |
| Gap | `spacing/8` (8px) icon to text. Icon and text top-aligned | Same |
| Background | `background/{status}-subtle` | Same |
| Border | 1px `border/{status}`, drawn inside the box (`box-sizing: border-box`), so it doesn't add to the width | Same |
| Icon | 24px circle, `background/{status}-strong`, `border-radius/full`, 12px glyph centered, in a 24 × 24px slot. Top-aligned; it stays on the first line when the message wraps | Same |
| Message | `body/xs/regular` (14 / 20px), `text/default`, 2px top padding so the first line centers on the 24px icon, hugs its text, max width 500px | `body/xs/regular` (14 / 20px), fills the width and wraps. With a close button, max width 280px so the text clears the button |
| Close button | 12px icon, sits inside the message row, 4px from top and right (no token). On Info and Success only | Same |
