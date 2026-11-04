# Table

## What it is
A grid of rows and columns that lets readers compare facts side by side, like tuition by program or office hours by department. Each row is one item and each column is one detail about it.

## When to use it
- Comparing the same details across items
- Staff tools for reviewing records

## When not to use it
- Page layout: use cards or a grid
- One item's details: use a list
- Content read top to bottom, like steps

## Variants

### Type
- **Default:** Use it for plain text data on public pages, like a fee schedule
- **App:** Use it in staff tools. Rows can hold a checkbox, a person with their photo, a status badge and action icons like edit and delete

### Size
- **Default:** Use it for most tables. Rows have room to breathe
- **Compact:** Use it for long tables in staff tools, where seeing more rows at once matters more than space

### Striped
- **Striped:** Use it for wide or long tables so readers can follow a row across. Every other row gets a light tint
- **Not striped:** Use it for short tables with only a few rows

### Breakpoint
- **Mobile:** On phones the table fills the screen width. It only scrolls sideways when the columns can't fit, so keep tables to the columns readers need
  - When it does scroll, the first column stays in place so readers can always see which row they're on. That's another reason to put the item's name in the first column
  - The header color always fills every header cell, including the first one, while the table scrolls

## Writing tips
- Write short column headers that name the detail, like "Start date", not "When does it start?"
- Put the item's name in the first column, like the program or the person
- Keep each cell short. Link to a full page instead of writing a paragraph
- Use the same format down a column, like "Aug. 24, 2026" for every date
- Give action icons a text label for screen readers, like "Edit application"

---

## Developer spec checklist

Shared rules: header and body cells in a column share the same left and right padding so text lines up. 1px `border/default` around the table and between rows, square corners. Header row uses `component/table-header/background` with `component/table-header/text`. Body rows use `background/default`; striped rows alternate with `background/tint`. Rows have `spacing/8` (8px) padding left and right. On Mobile the table is `width: 100%` and scrolls sideways (`overflow-x: auto`) only when its columns overflow; never add scrolling when everything fits. The table cell is the hidden `_rvt-table-cell` component.

| Element | Desktop Default | Mobile Default | Compact (both devices) |
| --- | --- | --- | --- |
| Header cell padding | `spacing/16` (16px) all sides | `spacing/16` (16px) top and bottom, `spacing/12` (12px) left and right | `spacing/8` (8px) all sides |
| Header label | `tag/md/regular` (14 / 20px) | `tag/md/regular` (14 / 20px) | `tag/sm/regular` (12 / 16px) |
| Body cell padding | `spacing/24` (24px) top and bottom, `spacing/16` (16px) left and right | `spacing/20` (20px) top and bottom, `spacing/12` (12px) left and right | `spacing/8` (8px) all sides |
| Gap inside a cell | `spacing/12` (12px) | `spacing/12` (12px) | `spacing/12` (12px) |
| Main item text (first column) | `body/sm/strong` (16 / 24px), `text/strong` | `body/xs/strong` (14 / 20px), `text/strong` | `heading/xs/strong` (14 / 20px), `text/strong` |
| Default text (Default and App) | `body/sm/regular` (16 / 24px), `text/default` | `body/xs/regular` (14 / 20px), `text/default` | `body/xs/regular` (14 / 20px), `text/default` |

Mobile scrolling and the sticky first column:

| Element | Mobile spec |
| --- | --- |
| Table width | Fills the screen (`width: 100%`); columns size to their content |
| Column minimum width | 180px for every column after the first |
| First column | Fixed 140px; stays in place while the rest scrolls (`position: sticky; left: 0`) |
| First column divider | 1px `border/default` on its right edge, body rows only. The header cell has no divider, so the header reads as one solid bar |
| Header fill | `component/table-header/background` fills every header cell edge to edge, including the sticky one, at every scroll position. Use separate cell borders (`border-collapse: separate; border-spacing: 0`) with row lines on the cells, not collapsed borders, so the sticky column has no gaps or flicker |
| Layering | Sticky body cells above scrolling cells; sticky header cell above both |
| Scroll only when needed | `overflow-x: auto` on the table's wrapper, which also needs to be keyboard-focusable and named for screen readers |

App type parts (same on every size and device unless noted). Default text follows the main table above:

| Element | Spec |
| --- | --- |
| Checkbox | 20 × 20px box; header checkbox border `component/table-header/border`, body `border/strong` |
| User avatar | 32 × 32px, `spacing/8` (8px) gap to the name |
| User name and email | Desktop Default `body/sm/regular` (16 / 24px); Mobile and Compact `body/xs/regular` (14 / 20px); `text/default`; email can be turned off |
| Status | `rvt-badge` (Default, Strong) |
| Action icons | 16px `rvt-pencil`, `rvt-trash`, ellipsis, `icon/strong`, `spacing/12` (12px) apart |
| Arrow icon | 16px, `icon/strong` |
