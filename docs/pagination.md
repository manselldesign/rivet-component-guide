# Pagination

## What it is
A row of page numbers and arrows that splits a long list of results into pages. Readers can see where they are and jump to the next page or a specific one.

## When to use it
- Use it when a list is too long for one page, like news archives or event listings
- Use it for search results, like a course or people directory
- Use it when readers may want to return to a specific page

## When not to use it
- Don't use it for fewer than about 10 items. Show them all on one page
- Don't use it to move through steps in a form. Use Back and Next buttons instead
- Don't use it inside small spaces like cards or sidebars

## Variants

### Breakpoint
- **Desktop:** Use it on larger screens
- **Mobile:** Use it on phones. The buttons are smaller so the row fits

### Item types
- **Page number:** Links to that page. The current page is filled in red
- **First and Last:** Jump to the start or end of the results
- **Back and Forward:** Move one page at a time
- **Ellipsis:** Shows that pages are skipped between numbers

## Writing tips
- Keep the labels "First" and "Last" so they're short and clear
- Show the current page and a few pages on each side, not every page number
- Show how many results there are above the list, like "Showing 1–10 of 85 events"
- Keep the current page number visible so readers know where they are
- Give the arrow buttons labels like "Next page" for screen readers

---

## Developer spec checklist

Shared rules: items have square corners and a 1px `border/default` border. Items sit side by side in one row. Hover adds a `background/tint` fill. Focus adds a 2px `border/accent-strong` ring, 2px outside the item. The current page uses a `background/brand` fill, a 1px `border/accent` border and `text/inverse` text. Arrows and the ellipsis use `icon/strong`.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Page number text | `action/lg/strong` (16 / 24px), `text/default` | `action/lg/strong` (16 / 24px), `text/default` |
| First and Last text | `action/lg/strong` (16 / 24px), `text/strong` | `action/sm/strong` (14 / 20px), `text/strong` |
| First and Last padding | `spacing/16` (16px), left and right | `spacing/12` (12px), left and right |
| Gap, icon to text in First and Last | `spacing/8` (8px) | `spacing/4` (4px) |
| Icons | 16px (`rvt-chevrons-left`, `rvt-chevron-left`, `rvt-ellipsis` and right-facing pairs) | 12px (the `-12` versions) |
| Gap between items | `spacing/8` (8px) | `spacing/4` (4px) |
| Item order | First, Back, Ellipsis, page numbers, Ellipsis, Forward, Last | Same |
