# Card-contact

## What it is
A contact card shows people how to reach an office, team or department. It puts the name, address, email, phone, website, hours and social links in one place.

- Office and department pages
- A "Contact us" page listing several offices
- A program page naming its advisor or coordinator
- Help or support pages in a web app

## When to use it
- Use it on a department or office page so people can find contact details fast
- Use it on a "Contact us" page to list several offices side by side
- Use it to give a named contact for a program, like an advisor or coordinator

## When not to use it
- Don't use it for a full staff bio. Use the Profile card instead
- Don't use it for events or news. Use the Event or News card instead
- Don't use it to list dozens of people. Use a table or directory instead

## Default or Avatar?
**Is the contact an office or a person?**

| Behind the card | Examples | Use |
| --- | --- | --- |
| An office people call or visit | Office of Admissions, Office of the Bursar | Default |
| A department's main office | Department of Biology main office | Default |
| A help desk or support line | UITS Support Center | Default |
| A named person people meet with | An admissions counselor for central Indiana | Avatar |
| A program's advisor or coordinator | The Informatics undergraduate advisor | Avatar |
| A small team with a group photo | The New Student Orientation team | Avatar |

## Types

### Layout
- **Default:** Use it for an office or team. Shows a sticker
- **Avatar:** Use it for a person or a team with a photo. Shows a round photo

### Orientation
- **Vertical:** Use it in a sidebar or a grid of two to three contacts
- **Horizontal:** Use it in the main page column when you have one main contact. It stacks to vertical on phones

### Optional parts
- Include only the details you have: tag, address, email, phone, website, pronouns, hours, social links and buttons
- Add hours when people visit in person
- Use buttons only for real next steps that go somewhere, like "Schedule an appointment" or "Get directions". They are Links, Large

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
| Sticker (Default) | 80×80 sticker, Crimson, contained | 64×64 |
| Photo (Avatar) | `rvt-avatar` Image, 80px, Crimson | 64px |
| Sticker or photo, vertical | `spacing/24` below (24px) | `spacing/16` below (16px) |
| Sticker or photo, horizontal | `spacing/24` gap to content | Stacks above content |
| Horizontal columns | Left: name and address, `spacing/24` right padding. Right: contact info, 1px `border/default` left divider, `spacing/24` left padding | Single column |
| Tag | `tag/sm/regular` (12 / 16px), `text/brand`, `spacing/4` below | Same |
| Title | `heading/md/strong` (20 / 24px), `text/default` | Same |
| Address | `body/sm/regular` (16 / 24px), `text/default`, `spacing/4` above (4px) | Same |
| Contact info group | `spacing/24` above, `spacing/12` between rows | Same |
| Contact info row | 16px icon (`icon/strong`), `spacing/8` gap; link `action/lg/regular` (16 / 24px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `text/accent`, 1px underline, 3px below the text; hover `text/brand-strong` and the underline thickens to 2px; focus 2px `border/accent-strong`, no offset | Same |
| Pronouns row | `rvt-user` 16px (`icon/default`), `spacing/4` gap; label `heading/sm/strong` (16 / 20px), `text/strong`; value `body/sm/regular` (16 / 24px) | Same |
| Social links | `spacing/24` above; label "Social:" `tag/sm/regular` (12 / 16px), `text/default`; `spacing/16` to icons; `rvt-link` Social, Small: 24×24, 1px `border/accent` drawn inside, 12px `icon/accent` glyph, `spacing/8` between; hover `border/accent-strong` + `icon/accent-strong`; focus 2px `border/accent-strong`, no offset | Same |
| Buttons | `spacing/24` above; `rvt-link` Normal, Large (`component/button/height-lg`, 40px), arrow by link type (Internal for a scheduling page, External for a map); stacked, `spacing/8` between, each hugging its label; label `action/lg/strong` (16 / 24px, weight 600, width 110%); hover `border/accent-strong`, `text/brand-strong`, `icon/accent-strong`; focus 2px `border/accent-strong`, no offset | Same: each button hugs its label, left aligned |

### Hours (`_rvt-card-contact-hours`)

| Element | Spec |
| --- | --- |
| Closed | "Hours" toggle button, 16px clock in `icon/strong` (like the other contact icons) and chevron in `icon/accent`, `action/lg/strong` (16 / 24px, weight 600, width 110%), `text/accent`, `spacing/8` between; focus 2px `border/accent-strong`, no offset |
| Opening | `spacing/8` below the toggle; the list opens with height and opacity, 220ms ease-out (none with reduced motion); the chevron swaps to chevron-up (no rotation) |
| Open: list | `spacing/8` left indent, each row `spacing/4` top, `spacing/16` left |
| Open: day | `heading/xs/strong` (14 / 20px), `text/strong` |
| Open: times | `body/xs/regular` (14 / 20px), `text/default` |
| Holiday note | `body/xs/italic` (14 / 20px, weight 350, width 110%), `text/default`, slanted with the font's `slnt` axis: `font-style: oblique 10deg` plus `font-variation-settings: "slnt" var(--rvt-font-slant-standard)` (-10), not the browser's own italic; asterisk `body/xs/strong`, `text/required` |
