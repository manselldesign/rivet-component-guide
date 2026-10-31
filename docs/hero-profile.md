# Hero – Profile

## What it is
A profile hero opens a person's page with their photo, name, credentials and job title. It tells visitors right away whose page they're on and how to reach them.

## When to use it
- Use it at the top of a faculty, staff or advisor profile page
- Use it on a leader's page, like a dean or department chair
- Use it when people come to the page to learn about or contact one person

## When not to use it
- Don't use it for an office or department. Use the Contact card instead
- Don't use it to list several people. Use Profile cards instead
- Don't use it for a news story about a person. Use the article layout instead

## Variants

### Layout
- **Default:** Photo, name, title and buttons. Use it when contact details appear further down the page
- **Contact:** Adds a grid of details under the header, like email, phone, office and areas of expertise

### Width
- **Full width:** Use it on pages with no sidebar
- **With sidebar:** A narrower version for pages with a side menu

### Optional parts
- **Photo:** Leave it out only when there's no approved headshot
- **Credentials:** Add degrees or certifications, like "Ph.D."
- **Job title:** Add the person's role, like "Associate Professor of Biology"
- **Buttons:** Add one or two next steps, like "Schedule a meeting"
- **Download icon:** Shows on the photo when people can download a high-resolution headshot

## Writing tips
- Write the name the way the person prefers to be addressed
- Keep the job title to one line, without the department if the page already says it
- Use a recent, approved headshot with the face centered
- Start button labels with a verb, like "Email Dr. Lee"

---

## Developer spec checklist

Shared rules: Background `background/default`. Text color `text/brand` for the tag, name and credentials; `text/default` for the job title. Primary button is `rvt-button` with `background/brand`; secondary button has a 1px `border/accent` border. Mobile stacks everything in one column; buttons stack, size to their labels and line up on the left.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Outer padding | `spacing/96` top (96px), `spacing/80` left and right (80px); with sidebar: `spacing/96` left, `spacing/80` right | `spacing/40` top (32px), `spacing/24` left and right (24px), `spacing/48` bottom (36px); Contact layout has no bottom padding, the details grid sits at the bottom |
| Photo and text | Side by side, `spacing/48` gap (48px); `spacing/96` below (96px), or `spacing/64` (64px) when the details grid follows | Stacked, photo first, `spacing/16` below the photo (16px) |
| Photo | `rvt-avatar`, 224 × 224px | `rvt-avatar`, 96 × 96px |
| Download icon | 32px circle on the photo, `background/default` with a 1px `border/default` border, 16px `rvt-download` icon | 28px circle, 12px icon |
| Tag | `tag/md/caps` (14 / 20px), `text/brand`; `spacing/8` below (8px) | Same |
| Name | `display/lg/strong` (48 / 52px) | `display/lg/strong` (29 / 32px) |
| Credentials | `display/xs/strong` (26 / 28px), `spacing/4` above (4px) | `heading/md/strong` (20 / 24px), no space above |
| Job title | `body/md/regular` (20 / 28px), `spacing/8` above (8px) | `body/md/regular` (18 / 24px), `spacing/4` above (4px) |
| Buttons | Side by side, `spacing/40` above (40px), `spacing/16` gap (16px), 48px tall | Stacked, each button hugs its label, left aligned, `spacing/40` above (32px), `spacing/16` gap (16px) |
| Details grid (Contact) | `_rvt-factoid`, two columns. Single 1px `color/brand/light` lines around and between cells, never doubled. Both cells in a row stretch to the taller one, so the divider always runs the full row height | One column, `spacing/48` above (36px). Single 1px line above each item and around the grid |
| Detail item | `spacing/20` top and bottom (20px), `spacing/24` left and right (24px). Label `tag/md/regular` (14 / 20px), `text/strong`, `spacing/4` below plus a `spacing/4` gap (8px total); value `body/sm/strong` (16 / 24px), `text/strong` | Same |
| Detail item types | Default (text), Tags (`rvt-badge` Subtle, `spacing/8` gap), Social (24px icon buttons, `spacing/8` gap) | Same |
