# Breadcrumbs

## What it is
A short trail of links at the top of a page that shows where the page sits in your site. People can click any step to go back up a level.

## When to use it
- Use it on pages that sit two or more levels deep, like a program page inside a school inside a college site
- Use it when people often land on a page from search and need to find their way to related pages

## When not to use it
- Don't use it on your homepage or on top-level pages
- Don't use it to show steps in a process, like an application form. Use steps instead
- Don't use it as the main navigation. Keep your header or side navigation

## Variants

### Parts of the trail
- **Home:** The house icon. Always the first link and takes people to your site's homepage
- **Earlier pages:** Links to the pages above this one, in order
- **Current page:** The page people are on. It's bold and isn't a link

## Writing tips
- Use the same page names people see in your navigation and page titles
- Keep each step short, like "Admissions" not "Undergraduate Admissions Information"
- Show the site's real structure, not the path a person clicked through
- Give the home icon a screen reader label, like "Home"

---

## Developer spec checklist

### Trail

| Element | Spec |
| --- | --- |
| Layout | Horizontal, wraps to more lines when needed |
| Gap between items | `spacing/4` (4px), also between wrapped lines |
| Separator | `rvt-chevron-right` 12 × 12px, `icon/brand`, `spacing/4` (4px) after each item except the current page |

### Items

| Element | Default | Hover |
| --- | --- | --- |
| Home icon | `rvt-home` 12 × 12px, `icon/link-subtle`, `spacing/4` (4px) above and below | `icon/accent-strong`, 1px `border/accent-strong` line below |
| Earlier page link | `action/sm/regular` (14 / 20px), `text/link-subtle`, no underline | `text/brand-strong`, underlined |
| Separators | `icon/brand` | No change |
| Current page | `action/sm/strong` (14 / 20px), `text/strong`, not a link | No change |
