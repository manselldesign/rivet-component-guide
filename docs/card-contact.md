# Card-contact

## What it is
A contact card shows people how to reach an office, team or department. It puts the name, address, email, phone, website, hours and social links in one place.

## When to use it
- Use it on a department or office page so people can find contact details fast
- Use it on a "Contact us" page to list several offices side by side
- Use it to give a named contact for a program, like an advisor or coordinator

## When not to use it
- Don't use it for a full staff bio. Use the Profile card instead
- Don't use it for events or news. Use the Event or News card instead
- Don't use it to list dozens of people. Use a table or directory instead

## Variants

### Layout
- **Default:** Use it for an office or team. Shows an icon
- **Avatar:** Use it for a person or a team with a photo. Shows a round photo

### Orientation
- **Vertical:** Use it in a sidebar or a grid of two to three contacts
- **Horizontal:** Use it in the main page column when you have one main contact. It stacks to vertical on phones

### Optional parts
- Turn on only what you have: tag, address, email, phone, website, pronouns, hours, social links and buttons
- Add hours when people visit in person
- Use buttons only for real next steps, like "Schedule an appointment"

## How they work together

An admissions section might use every card:

| On this page | You show | Use |
| --- | --- | --- |
| Admissions landing page | Topics: Apply, Visit campus, Cost and aid | Feature |
| Visit campus page | Ways to visit: Campus tours, Virtual tour, Visit days | Default |
| Visit campus page | An upcoming fall open house | Event |
| Visit campus page | Admissions counselors by region | Profile |
| Visit campus page | The Office of Admissions' address, phone and hours | Contact |
| Visit campus page | A story about the new welcome center | News |

Department pages work the same way. Each one ends with a Contact card for its main office, and a "Contact us" page shows several Contact cards side by side.

## Writing tips
- Write the office name the way people search for it, like "Office of Admissions"
- Write out the full address, including the building and room
- Show the email and website as people would type them
- Keep button labels to a few words that start with a verb

---

## Developer spec checklist

### Layout and spacing

| Element | Desktop | Mobile |
| --- | --- | --- |
| Surface | `background/raised`, `shadow/md`, no border, no corner radius | Same |
| Card padding | `spacing/32` all sides (32px) | `spacing/24` all sides (24px) |
| Icon (Default) | 80×80 sticker, Crimson, contained | 64×64 |
| Photo (Avatar) | `rvt-avatar` Image, 80px, Crimson | 64px |
| Icon or photo, vertical | `spacing/24` below (24px) | `spacing/16` below (16px) |
| Icon or photo, horizontal | `spacing/24` gap to content | Stacks above content |
| Horizontal columns | Left: name and address, `spacing/24` right padding. Right: contact info, 1px `border/default` left divider, `spacing/24` left padding | Single column |
| Tag | `tag/sm/regular` (12 / 12px), `text/brand`, `spacing/4` below | Same |
| Title | `heading/md/strong` (20 / 24px), `text/default` | Same |
| Address | `body/base/regular` (18 / 28px; 16 / 24px on Mobile), `text/default`, `spacing/8` above | Same |
| Contact info group | `spacing/24` above, `spacing/12` between rows | Same |
| Contact info row | 16px icon, `spacing/8` gap; link `action/lg/regular` (16 / 24px), `text/accent`, underlined | Same |
| Pronouns row | `rvt-user` 16px, `spacing/4` gap; label `heading/sm/strong` (16 / 20px), `text/strong`; value `body/base/regular` (18 / 28px; 16 / 24px on Mobile) | Same |
| Social links | `spacing/24` above; label "Social:" `tag/sm/regular` (12 / 12px), `text/default`; `spacing/16` to icons; `rvt-button` Icon 24×24, `spacing/8` between | Same |
| Buttons | `spacing/24` above; `rvt-button` Form, Normal, Medium (32px), stacked, `spacing/8` between; label `action/sm/strong` (14 / 20px) | Full width |

### Hours (`_Hours`)

| Element | Spec |
| --- | --- |
| Closed | "Hours" toggle, `action/lg/strong` (16 / 24px), `text/accent`, `spacing/8` to chevron |
| Open: list | `spacing/8` left indent, each row `spacing/4` top, `spacing/16` left |
| Open: day | `heading/xs/strong` (14 / 20px), `text/strong` |
| Open: times | `body/xs/regular` (14 / 20px), `text/default` |
| Holiday note | `body/xs/italic` (14 / 20px), `text/default`; asterisk `body/xs/strong`, `text/required` |
