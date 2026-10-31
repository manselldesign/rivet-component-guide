# Sidenav – Drilldown

> [!warning] This may change
> The sidenav drilldown may change based on the navigation work that's in progress.

## What it is
A side menu that shows the pages in one section of a site, one level at a time. A back link at the top returns readers to the parent section, and items with an arrow open their own set of pages.

## When to use it
- Use it on sites with several levels of pages, like an admissions site with sections for applying, visiting and paying for school
- Use it to show readers where they are inside a section
- Use it next to the page content, not in place of it

## When not to use it
- Don't use it on a small site with only a few pages. Use the header links instead
- Don't use it for pages that must be read in order. Use series nav instead
- Don't use it to jump between headings on one long page. Use links to those headings instead

## Variants

### Levels
- **One:** Shows one level of pages under a back link. It's the only option for now

### Item state
- **Default:** A page in this section
- **Selected:** The page the reader is on. It's bold and red so readers can see where they are
- **Hover:** The title underlines when a reader points at it, on both default and selected items

### Optional parts
- **Arrow:** Show it only on items that open more pages. Leave it off for items that go straight to a page

## Writing tips
- Use the same titles as the pages they lead to
- Keep item titles short, ideally one line
- Put the section name at the top, like "Admissions"
- Mark only one item as selected

---

## Developer spec checklist

Shared rules: The menu has a `background/default` fill and `spacing/24` padding above (24px). The back row has a 24px `background/strong` button with a 12px `icon/strong` chevron, then the section title in `body/sm/strong` (16 / 24px), `text/default`, with a `spacing/8` gap (8px) and `spacing/16` right padding (16px). Items start `spacing/12` (12px) below the back row and stack so neighboring borders overlap into one 1px line (-1px gap). Each item is at least 48px tall (no token), with `spacing/12` padding top and bottom (12px) and `spacing/8` left and right (8px). The arrow is a 24px `background/strong` button with a 12px `icon/strong` chevron. Sizes don't change on Mobile.

| Element | Default | Hover | Selected | Selected hover |
| --- | --- | --- | --- | --- |
| Title | `action/sm/regular` (14 / 20px), `text/default` | `action/sm/regular` (14 / 20px), `text/strong`, underline | `action/sm/strong` (14 / 20px), `text/accent` | `action/sm/strong` (14 / 20px), `text/accent`, underline |
| Border | 1px `border/default` top and bottom | 1px `border/default` top and bottom | None | None |
| Title to arrow | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/4` (4px) | `spacing/4` (4px) |
