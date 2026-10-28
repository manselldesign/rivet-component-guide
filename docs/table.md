# Table

## What it is
A grid of rows and columns that lets readers compare facts side by side, like tuition by program or office hours by department. Each row is one item and each column is one detail about it.

## When to use it
- Use it when readers need to compare the same details across several items, like credit hours, format and start date for each degree
- Use it for data people scan or look up, like a class schedule or a list of department contacts
- Use it in staff tools where people review and act on records, like a list of applications to approve

## When not to use it
- Don't use it for page layout or to line up text and images. Use cards or a grid instead
- Don't use it for one item's details. Use a list instead
- Don't use it for content readers read top to bottom, like steps or a news story

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

### Device
- **Mobile:** On phones the table keeps its full width and scrolls sideways, so keep tables to the columns readers need

## Writing tips
- Write short column headers that name the detail, like "Start date", not "When does it start?"
- Put the item's name in the first column, like the program or the person
- Keep each cell short. Link to a full page instead of writing a paragraph
- Use the same format down a column, like "Aug. 24, 2026" for every date
- Give action icons a text label for screen readers, like "Edit application"

---

## Developer spec checklist

Shared rules: header and body cells in a column share the same left and right padding so text lines up. 1px `border/default` around the table and between rows, square corners. Header row uses `component/table-header/background` with `component/table-header/text`. Body rows use `background/default`; striped rows alternate with `background/tint`. Rows have `spacing/8` (8px) padding left and right. On Mobile the table keeps its desktop column widths and scrolls sideways inside the screen. The table cell is the hidden `_rvt-table-cell` component.

| Element | Desktop Default | Mobile Default | Compact (both devices) |
| --- | --- | --- | --- |
| Header cell padding | `spacing/16` (16px) all sides | `spacing/16` (16px) top and bottom, `spacing/12` (12px) left and right | `spacing/8` (8px) all sides |
| Header label | `tag/md/regular` (14 / 18px) | `tag/md/regular` (14 / 18px) | `tag/sm/regular` (12 / 16px) |
| Body cell padding | `spacing/24` (24px) top and bottom, `spacing/16` (16px) left and right | `spacing/20` (20px) top and bottom, `spacing/12` (12px) left and right | `spacing/8` (8px) all sides |
| Gap inside a cell | `spacing/12` (12px) | `spacing/12` (12px) | `spacing/12` (12px) |
| Main item text (first column) | `body/sm/strong` (16 / 24px), `text/strong` | `body/xs/strong` (14 / 20px), `text/strong` | `heading/xs/strong` (14 / 20px), `text/strong` |
| Default text (Default and App) | `body/sm/regular` (16 / 24px), `text/default` | `body/xs/regular` (14 / 20px), `text/default` | `body/xs/regular` (14 / 20px), `text/default` |

App type parts (same on every size and device):

| Element | Spec |
| --- | --- |
| Checkbox | 20 × 20px box; header checkbox border `component/table-header/border`, body `border/strong` |
| User avatar | 32 × 32px, `spacing/8` (8px) gap to the name |
| User name and email | `body/xs/regular` (14 / 20px), `text/default`; email can be turned off |
| Status | `rvt-badge` (Default, Strong) |
| Action icons | 16px `rvt-pencil`, `rvt-trash`, ellipsis, `icon/strong`, `spacing/12` (12px) apart |
| Arrow icon | 16px, `icon/strong` |
