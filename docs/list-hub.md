# List hub

## What it is
A section that gathers related links in one place, each with a title and optional details, so readers can scan and pick where to go next. It can open with a short introduction, an image or an "On this page" heading.

## When to use it
- Use it to point readers to several related pages, like all the resources for new students
- Use it for a requirements or eligibility list, like what you need before you apply
- Use it at the top of a long page to jump to its sections, like a degree program page

## When not to use it
- Don't use it for plain bullet points with no links. Use List instead
- Don't use it for one or two links. Use a button or a text link instead
- Don't use it for content readers need to compare in detail. Use a table instead

## Variants

### Layout
- **Single list:** Use it when the links can speak for themselves, like a department's services. Figma calls it Single List Hub
- **Image with links:** Use it when a photo helps set the scene, like a campus life section
- **Text with links:** Use it when readers need a headline, a short introduction and one main button first, like an admissions overview
- **Table of contents:** Use it to link to sections on the same page. Figma calls it TOC

### Type
- **Default:** Use it for links. Each item has an arrow
- **Checklist:** Use it for things to have or do, like application materials. Items can show a check mark (included) or an X (not included)

### Size
- **Default:** Use it in the main page content
- **Compact:** Use it in narrower spaces or when the list sits beside other content

### Optional parts
- **Eyebrow:** a short section label, like "On this page"
- **Metadata:** a tag, category or date above the title
- **Description:** one or two sentences under the title
- **List items:** short label and value lines, like "Deadline: March 1"
- **Badge:** a status, like "New" or "Online"
- Turn on only what you have. Keep the same parts on for every item in a list

## Writing tips
- Write titles that say where the link goes, like "Pay your tuition" not "Click here"
- Keep titles short, ideally under 40 characters
- Keep descriptions to two sentences
- Put the most-used links first
- Keep the "on this page" headings the same as the page's section headings

---

## Developer spec checklist

Shared rules: items are separated by a 1px `border/default` line below each item (not in TOC). Item titles turn `text/accent` and underline on hover. Metadata uses `tag/sm/regular` (12 / 16px) in `text/brand`. The eyebrow uses `tag/sm/caps` (12 / 16px) in `text/brand`. On Mobile, the introduction or image stacks above the list. Badges use `rvt-badge`, the main button uses `rvt-button` (Link, Normal, Extra-large) and images use `Fixed-aspect-ratio-spacer` at 3:2.

### Hub

| Element | Desktop | Mobile |
| --- | --- | --- |
| Gap, introduction or image to list | `spacing/64` (64px), side by side | `spacing/32` (24px), stacked |
| Gap, intro text to button | `spacing/40` (40px) | `spacing/40` (32px) |
| Headline | `display/md/strong` (36 / 40px), `text/brand` | TBD |
| Intro text | `body/md/regular` (20 / 28px), `text/default` | TBD |
| Gap, headline to intro text | `spacing/24` (24px), above | `spacing/24` (24px), above |
| Eyebrow, space below | `spacing/16` (16px) | `spacing/8` (8px) |
| TOC border | 1px `border/default`, all sides | Same |
| TOC eyebrow padding | `spacing/12` (12px) top and bottom, `spacing/24` (24px) sides | Same |
| TOC list padding | `spacing/16` (16px) top and bottom, `spacing/24` (24px) sides | Same |

### Item

| Element | Default, Desktop | Default, Mobile | Compact |
| --- | --- | --- | --- |
| Item padding | `spacing/20` (20px) top and bottom, `spacing/16` (16px) sides | `spacing/16` (16px) top and bottom, 0 sides | `spacing/12` (12px) top and bottom, 0 sides |
| Title | `action/xl/strong-fixed` (20 / 24px), `text/strong` | `action/xl/strong-fixed` (20 / 24px), `text/strong` | `action/lg/strong` (16 / 24px), `text/strong` |
| Description | `body/base/regular` (18 / 28px) | `body/base/regular` (16 / 24px) | `body/xs/regular` (14 / 20px) |
| List item lines | 18 / 28px | 16 / 24px | 14 / 20px |
| Arrow | `rvt-arrow-right` (16px) | `rvt-arrow-right` (16px) | `rvt-arrow-right-12` (12px) |
| Gap, arrow to title | `spacing/16` (16px) | `spacing/16` (16px) | `spacing/16` (16px) |
| Gap, metadata to title | `spacing/4` (4px), below | `spacing/4` (4px), below | `spacing/4` (4px), below |
| Gap, title to description | `spacing/12` (12px), above | `spacing/8` (8px), above | `spacing/4` (4px), above |
| Gap, description to list items | `spacing/12` (12px), above | `spacing/12` (12px), above | `spacing/8` (8px), above |
| Gap between list item lines | `spacing/4` (4px) | `spacing/4` (4px) | `spacing/4` (4px) |
| Gap, above badge | `spacing/16` (16px) | `spacing/16` (16px) | `spacing/16` (16px) |
| Checklist marker | 32px circle, `background/brand-alt`, 16px check icon | 24px circle, `background/brand-alt`, 12px check icon | 24px circle, `background/brand-alt`, 12px check icon |
| X marker | 32px circle, `background/inverse-alt`, 16px close icon | 24px circle, `background/inverse-alt`, 12px close icon | 24px circle, `background/inverse-alt`, 12px close icon |
| Gap, marker to title | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/8` (8px) |
| Icon alignment (arrow, check, X) | Top-aligned to the first line of the title (`align-items: flex-start`), never centered on the whole title. The arrow sits in a 24px-tall box (the title's line height), centered. The 32px marker is taller than the 24px line, so the title gets `spacing/4` (4px) top padding to center line one on the marker | Top-aligned to the first line of the title. Arrow and 24px marker sit in a 24px-tall box (the title's line height), centered | Top-aligned to the first line of the title. Arrow and 24px marker sit in a 24px-tall box (the title's line height), centered |
| Checklist text indent | `spacing/40` (40px), left | `spacing/40` (32px), left | `spacing/40` (40px Desktop, 32px Mobile), left |
