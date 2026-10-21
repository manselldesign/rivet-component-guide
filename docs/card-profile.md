# Card-profile

## What it is
A profile card introduces one person, like a faculty member, advisor or staff contact. It shows their name, title and ways to reach them, and links to their full profile. People click anywhere on the card to open it.

## When to use it
- Use it in a faculty or staff directory
- Use it to show who leads a program, lab or office
- Use it to list speakers or advisors on a program page

## When not to use it
- Don't use it for an office or department. Use the Contact card instead
- Don't use it for a story about a person. Use the News card instead
- Don't add extra links or buttons inside a card. The whole card is already the link

## Variants

### Layout
- **Image:** Use it when you have a current headshot
- **No Image:** A placeholder avatar instead of a photo. Use it when some people in the list have no headshot
- **Plain:** No avatar. Use it in long directories where photos would slow people down

### Style
- **Outlined:** A thin border. Use it on white or light pages
- **Raised:** A soft shadow. Use it to lift cards off a colored or busy background

### Orientation
- **Vertical:** Use it in grids of two to four cards across
- **Horizontal:** Avatar beside the text. Use it in a single-column list. It stacks to vertical on phones

### Optional parts
- Turn on only what you have: department, email, phone, website, pronouns, areas of expertise
- The name always shows
- Only show pronouns the person has chosen to share

## How they work together

A school of nursing section might use every card:

| On this page | You show | Use |
| --- | --- | --- |
| Nursing landing page | Topics: Degrees, Clinical placements, Research | Feature |
| Degrees page | Programs: BSN, RN to BSN, Doctor of Nursing Practice | Default |
| Degrees page | An upcoming information session | Event |
| Degrees page | Program directors and academic advisors | Profile |
| Degrees page | The student services office's address, phone and hours | Contact |
| Degrees page | A story about this year's pinning ceremony | News |

A faculty directory works the same way. It lists Profile cards, often in Horizontal orientation, sorted by last name.

## Writing tips
- Write the name the way the person uses it, like "Maria Lopez, PhD" only if they use the title
- Keep the job title short, like "Associate Professor of Nursing"
- Use a campus email address, not a personal one
- List two to four areas of expertise in plain words

---

## Developer spec checklist

Shared rules: Outlined = 1px `border/default` border, no shadow, no radius. Raised = `shadow/md`, no border. Both use `background/raised` fill. Hover: name turns `text/accent` with underline. Horizontal cards stack like Vertical on Mobile.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Card padding | `spacing/32` all sides (32px) | `spacing/24` all sides (24px) |
| Avatar (Vertical) | `rvt-avatar` 96px, `spacing/24` below (24px) | 64px, `spacing/16` below (16px) |
| Avatar (Horizontal) | `rvt-avatar` 128px; gap to text `spacing/32` (Image) or `spacing/24` (No Image) | Stacks like Vertical |
| Top metadata | `tag/md/regular` (14 / 14px), `text/brand`, `spacing/4` below | Same |
| Name | `action/xl/strong` (20 / 28px), `text/strong` | `action/xl/strong` (18 / 24px) |
| Arrow icon | 16px `rvt-arrow-right`, `spacing/16` gap from name | Same |
| Job title | `body/base/regular` (18 / 28px), `text/default`, `spacing/4` above | `body/base/regular` (16 / 24px) |
| Details group | `collapse-guard` 12px + `spacing/12` gap (24px above), `spacing/12` between rows | Guard 8px + `spacing/12` (20px above) |
| Detail row | 16px icon (envelope, phone, device), `spacing/8` gap; link `body/base/regular` (18 / 28px), `text/accent`, underline | Link 16 / 24px |
| Pronouns row | 16px `rvt-user`, `spacing/4` gap; label `body/sm/strong` (16 / 24px), value `body/base/regular`, `text/default` | Same |
| Bottom group | `spacing/24` above, `spacing/16` gap | Same |
| Bottom label | "Area(s) of expertise:" `tag/sm/regular` (12 / 12px), `text/default` | Same |
| Tags row | Subtle badges, `spacing/8` gap, wraps | Same |
