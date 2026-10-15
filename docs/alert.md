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

## Writing tips

- Keep the title to a few words that sum up the message
- Keep the message to one or two short sentences
- Say what happened and what to do next
- Use a list only for short, related items, like missing documents
- Button labels should start with a verb ("Update payment"), not "Click here"
- Don't rely on color alone. Say "Error" or "Warning" in the words too

## Developer spec checklist

### Default and CTA

| Element | Desktop | Mobile |
| --- | --- | --- |
| Container padding | `spacing/24` (24px) all sides | `spacing/16` (16px) all sides |
| Container gap | `spacing/16` (16px) between title block, list and actions | `spacing/16` (16px) |
| Background | `background/{status}-subtle` | Same |
| Border | 1px `border/{status}` | Same |
| Title row layout | Icon and title side by side, `spacing/8` (8px) gap | Icon stacked above title, `spacing/4` (4px) gap |
| Status icon | 32px | 32px |
| Title | `heading/md/strong` (20 / 24px), `text/{status}`, `spacing/4` (4px) top padding, max width 850px | Same |
| Description | `body/base/regular` (18 / 28px; 16 / 24px on Mobile), `text/default`, `spacing/8` (8px) below title row, max width 850px | Same, no left indent |
| Description and list indent | `spacing/40` (40px) left, aligns with title | None (icon stacks above title instead) |
| List | `body/base/regular`, items `spacing/12` (12px) apart, bullet 6px `icon/default`, `spacing/8` (8px) bullet to text, max width 920px | Same |
| Close button | 16px icon, 16px from top and right (no token) | Same |
| Title colors | Info `text/info`, Success `text/success`, Warning `text/warning`, Danger `text/danger`, Default `text/brand` | Same |

### CTA actions row

| Element | Desktop | Mobile |
| --- | --- | --- |
| Actions row | `spacing/8` (8px) top padding, `spacing/40` (40px) left indent, `spacing/16` (16px) between buttons | `spacing/8` (8px) top padding, no indent, `spacing/16` (16px) between buttons |
| Buttons | `rvt-button` Form, Medium, no style overrides. Primary = Style Strong, Secondary = Style Normal | Same |
| Button height | 32px (`component/button/height-md`) | Same |
| Button padding | `spacing/12` (12px) left and right | Same |
| Button label | `action/sm/strong` (14 / 20px) | Same |
| Primary button | `component/button/form-background` (`#1f2528`), label `text/on-brand-alt` | Same |
| Secondary button | 1px `component/button/form-border` (`#1f2528`), label `component/button/form-text` | Same |

### Inline

| Element | Spec |
| --- | --- |
| Container padding | `spacing/4` (4px) all sides |
| Gap | `spacing/4` (4px) icon to text |
| Background | `background/{status}-subtle` |
| Border | 1px `border/{status}` |
| Icon | 20px circle, `background/{status}-strong`, `border-radius/full`, 12px glyph centered |
| Message | `body/xs/regular` (14 / 20px), `text/default`, max width 500px |
| Close button | 12px icon, 4px from top and right (no token) |
