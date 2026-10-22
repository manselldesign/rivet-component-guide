# Button

## What it is
A button lets people take an action or move to the next step. There are two main kinds, and the difference is what happens after the click:

- **Action buttons** do something right here, on this page, like submitting a form, saving a change or filtering a list of events
- **Link buttons** take people somewhere else, like "Apply now" going to the application page. They always show an arrow that tells people where they're headed

## When to use it
- Use it for the main action on a page, like "Register for orientation"
- Use it to submit or save information in a form
- Use it to point readers to a key next step, like a program's application page

## When not to use it
- Don't use it for links inside a sentence. Use a regular text link instead
- Don't put more than one Strong button in the same section
- Don't use a button just to make text stand out

## Variants

### Type
- **Action:** Use when the click does something on the page, like "Submit" or "Filter events"
- **Link:** Use when the click takes people somewhere. The arrow shows where: down for this page, right for another IU page, angled for an outside site
- **Icon only:** Use for small, familiar actions, like "Add" or "Close"
- **Social:** Use to link to IU's social media accounts

### Style
- **Strong:** Use for the single most important action in a section
- **Normal:** Use for secondary actions, like "View all events"
- **Subtle:** Use for low-priority actions, like "Cancel"

### Size
- **Extra-large (48px):** Use where one action is the focus, like a login page, site search or a single sign-up field
- **Large (40px):** Use on standard pages and forms, like settings pages, multi-step applications or "Create new event" forms
- **Medium (32px):** Use in busy, information-heavy areas, like tables, sidebars and filter bars
- **Small (24px):** Use in the tightest spots, like inside a table row or next to a short list item

## Button order
- Use one Strong button per group. It's the main action
- On wider screens, put the main button last, on the right. Put the secondary button to its left
- On phones, stack the buttons full width with the main button on top
- Keep this order everywhere, in dialogs, forms and empty states, so people always know where to look
- Put a cancel or back button on the left, next to the main button, not on its own
- **Marketing components:** In heroes, billboards and other marketing sections, put the Strong button first on Desktop (left) and Mobile (top) so the main call to action is seen first

## Writing tips
- Start with a verb: "Apply now," "Download the guide"
- Keep it to one to four words
- Say exactly what happens. Avoid "Click here" or "Learn more"
- Icon-only buttons need a hidden text label for screen readers

---

## Developer spec checklist

Button groups: Desktop places buttons side by side with the Strong button last (right), `spacing/16` gap. Mobile stacks them full width with the Strong button first (top), `spacing/8` gap.

Marketing components (heroes, billboards): Strong button first on Desktop and Mobile.

### Size (Action, Link, Icon only)

| Element | Extra-large | Large | Medium | Small |
| --- | --- | --- | --- | --- |
| Height | `component/button/height-lg` (48px) | `spacing/40` (40px; 32px on Mobile) | `component/button/height-md` (32px) | TBD (24px, no token) |
| Padding left/right (Strong, Normal) | `spacing/16` | `spacing/16` | `spacing/12` | `spacing/8` |
| Padding (Subtle) | 0, hugs text | 0, fixed 40px height | 0, hugs text | 0, hugs text |
| Icon-to-text gap | `spacing/8` | `spacing/8` | `spacing/8` | `spacing/4` |
| Label | `action/lg/strong` (16 / 24px) | `action/lg/strong` (16 / 24px) | `action/sm/strong` (14 / 20px) | `action/sm/strong` (14 / 20px) |
| Action leading icon | 16px | 16px | 12px | 12px |
| Link arrow icon | 16px, after label | 16px, after label | 16px, after label | 16px, after label |
| Icon only (square) | `component/button/height-lg` (48 × 48px) | `spacing/40` (40 × 40px; 32px on Mobile) | `component/button/height-md` (32 × 32px) | TBD (24 × 24px) |
| Corner radius | 0 | 0 | 0 | 0 |

### Color by style (Action and Icon only)

| Element | Strong | Normal | Subtle |
| --- | --- | --- | --- |
| Background | `component/button/form-background` | none | none |
| Background, hover | `component/button/form-background-hover` | none | none |
| Background, pressed | `component/button/form-background-hover` | `background/strong` | `background/strong` |
| Border | none | `component/button/form-border` (1px inside) | none |
| Border, hover | none | `component/button/form-border-hover` | none |
| Text and icon | `text/on-brand-alt` | `component/button/form-text` | `component/button/form-text-subtle` |
| Text and icon, hover | `text/on-brand-alt` | `component/button/form-text-hover` | `component/button/form-text-hover` |
| Pressed ring | 2px `border/on-brand-alt` outer, 2px `component/button/form-border-hover` inner | same | same |
| Disabled | Default colors at 40% opacity | same | same |

### Color by style (Link)

| Element | Strong | Normal | Subtle |
| --- | --- | --- | --- |
| Background | `background/brand` | none | none |
| Background, hover | `background/accent` | none | none |
| Border | none | `border/accent` (1px inside) | `border/on-brand-alt` (1px) |
| Border, hover | none | `border/accent-strong` | none |
| Text | `text/on-brand-alt` | `text/accent` | `text/accent` |
| Text, hover | `text/on-brand-alt` | `text/brand-strong` | `text/brand-strong` |
| Arrow icon | `icon/on-brand-alt` | `icon/accent` | `icon/accent` |
| Arrow icon, hover | `icon/on-brand-alt` | `icon/accent-strong` | `icon/accent-strong` |
| Arrow by link type | In-page `rvt-arrow-down`, Internal `rvt-arrow-right`, External `rvt-arrow-up-right` | same | same |
| Disabled | Internal arrow, default colors at 40% opacity | same | same |
| Pressed | No pressed state | same | same |

### Social

| Element | Spec |
| --- | --- |
| Size | 24 × 24px |
| Shape | `border-radius/full` |
| Background | `background/strong` |
| Border | `border/default` (1px) |
| Icon | 12px platform icon |
| Platforms | Email, Facebook, Instagram, LinkedIn, X, YouTube, Bluesky, Link |
