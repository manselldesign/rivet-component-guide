# Tabs

## What it is
A row of labels that switches between related sets of content in the same spot. Readers see one set at a time and pick the next without leaving the page.

## When to use it
- Content splits into a few parallel groups
- Readers need only one group at a time
- A long page needs to stay short

## When not to use it
- Comparing groups side by side: use a table
- Steps that happen in order: use steps
- Links to other pages: use a subnav
- Content everyone must read, like a deadline
- More than five groups: use an accordion

## Contained or Segmented?
Ask one question: **Is each tab a full section of content, or a quick switch for one view?** If each tab opens its own section, use Contained. If the tabs change what one list or view shows, use Segmented.

| Behind the tabs | Examples | Use |
| :--- | :--- | :--- |
| A full section with a heading, text and sometimes a list | Admission requirements for First-year, Transfer, Graduate and International students | Contained |
| Parallel groups of the same information | Tuition for in-state and out-of-state students | Contained |
| Content long enough that showing it all would bury the page | Course plans for each year of a degree | Contained |
| A filter on one list | Events for Today, This week and This month | Segmented |
| A different view of the same content | A class schedule by Day or by Week | Segmented |
| A small switch beside other controls, like a search box or sort menu | Showing news from All schools or My school | Segmented |

## Types
- **Contained:** Use it when each tab opens a full panel of content, like a heading, text and a list. Tabs share the full width and stack on phones
- **Segmented:** Use it as a compact switch above content that changes, like filtering an event listing by Today, This week and This month. Tabs hug their labels and stay in one row

## Optional parts
- **List:** Add a list to the panel of Contained tabs only when it has items worth listing, like required documents

## Writing tips
- Keep labels to one or two words, like "Overview" or "Costs"
- Make labels parallel so they read as a set, like "Fall", "Spring", "Summer"
- Open the tab most readers need first
- Don't hide key information in a tab other than the first. Many readers never click the others

---

## Developer spec checklist

Shared rules: one tab is always selected. Tabs use `role="tablist"` / `role="tab"` / `role="tabpanel"`, arrow keys move between tabs and Tab moves into the panel. Desktop uses Large tabs, Mobile uses Small tabs. Tab height is set by Type and Size, with the label centered vertically.

### Tab item

| Element | Contained | Segmented |
| --- | --- | --- |
| Label padding | `spacing/32` left and right (32px Desktop, 24px Mobile) | `spacing/16` left and right (16px) |
| Label, Large | `action/lg/regular` (16 / 24px), `text/strong` | Same |
| Label, Small | `action/sm/regular` (14 / 20px), `text/strong` | Same |
| Selected label | `action/lg/strong` or `action/sm/strong`, `component/tabs/selected-text` | Same |
| Selected fill | `background/brand` | Same |
| Hover (unselected tab) | Fill `background/tint`, label stays `text/strong`, 1px `border/default` stays. The selected tab does not change on hover | Fill `component/tabs/hover-background`, label `component/tabs/hover-text` (crimson label in Light; label unchanged in Dark and Crimson). The selected tab does not change on hover |
| Focus | 2px `border/accent-strong` outline just outside the tab, no gap | Same |
| Height, Large | `component/tabs/container-height-lg` (48px) | `component/tabs/segmented-height-lg` (32px) |
| Height, Small | `component/tabs/container-height-sm` (40px) | `component/tabs/segmented-height-sm` (32px) |
| Border | 1px `border/default`, all sides | None |
| Corner radius | 0 | 0 |

### Tabs

| Element | Desktop | Mobile |
| --- | --- | --- |
| Contained tab row | Horizontal, tabs share the width equally, 1px gap | Tabs stack vertically, full width, 1px gap |
| Contained panel padding | `spacing/48` all sides (48px) | `spacing/32` all sides (24px) |
| Contained panel border | 1px `border/default` left, right and bottom; none on top | Same |
| Contained side padding | None | `spacing/24` left and right (24px) |
| Panel heading | `heading/lg/strong` (23 / 28px), `text/strong` | `heading/lg/strong` (20 / 24px) |
| Panel body | `body/base/regular` (18 / 28px), `text/default` | `body/base/regular` (16 / 24px) |
| Panel gap, heading to body to list | `spacing/24` (24px) | `spacing/24` (24px) |
| Panel list (optional) | `body/sm/regular` (16 / 24px), `text/default`; 6px square bullet `icon/brand` at `spacing/24`, `spacing/8` to the text; nested items at `spacing/40` (40px) with a 1px outline bullet; `spacing/24` between items | Same, nested items at `spacing/40` (32px) |
| Segmented group height | 40px total (32px tabs + 4px padding top and bottom); the border is drawn inside and doesn't add to it | Same |
| Segmented group padding | `spacing/4` all sides (4px) | Same |
| Segmented group fill and border | `background/tint`, 1px `component/input/border`, drawn inside | Same |
| Segmented tabs | Hug their label, no gap | Same |
