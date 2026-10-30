# Badge

## What it is
A small label that shows the status or category of something at a glance, like "Open", "Full" or "New".

## When to use it
- Use it to show status, like an event that's "Sold out" or an application that's "Submitted"
- Use it to tag items in a list, like "Online" or "Hybrid" on course listings
- Use it to point out something new or changed, like "Updated" on a policy page

## When not to use it
- Don't use it for anything people need to click. Use a button or link instead
- Don't use it for messages longer than a couple of words. Use an alert instead
- Don't put several badges on one item. Pick the one that matters most

## Variants

### Status
- **Default:** Use for neutral tags, like a category or format
- **Info:** Use for helpful notes, like "New" or "Updated"
- **Success:** Use for good or finished states, like "Open" or "Approved"
- **Warning:** Use when something needs attention soon, like "Closing soon"
- **Danger:** Use for problems or closed states, like "Full" or "Canceled"

### Style
- **Strong:** Use when the status needs to stand out. Use it sparingly
- **Subtle:** Use in lists or pages with many badges, so they don't compete

### Layout
- **Default:** Icon and text. Use this in most cases
- **Icon Only:** Use only in tight spaces where nearby text already makes the meaning clear

## Writing tips
- Keep it to one or two words
- Use the same words for the same status everywhere on your site
- Don't rely on color alone. The words should say the status too
- Give icon-only badges a text label for screen readers, like "Warning"

---

## Developer spec checklist

### Layout

| Element | Default | Icon Only |
| --- | --- | --- |
| Size | Hug width, 24px tall | 24 × 24px fixed, content centered |
| Padding | `spacing/12` (12px) left and right, 0 top and bottom | n/a |
| Icon to label gap | `spacing/4` (4px) | n/a |
| Icon | 12 × 12px, can be hidden | 12 × 12px |
| Label | `heading/xs/strong` (14 / 20px) | n/a |
| Corner radius | `border-radius/full` | `border-radius/full` |
| Border (Subtle only) | 1px inside | 1px inside |
| Outline (all badges) | 1px white ring outside the badge, `component/badge/ring` (`#ffffff`). Same in Light, Dark and Crimson | Same |

### Color

Badges look the same in Light, Dark and Crimson. Every badge has a 1px white outline outside it (`component/badge/ring`, `#ffffff`), so it stands out on dark and crimson backgrounds.

| Status | Style | Background | Border | Label and icon |
| --- | --- | --- | --- | --- |
| Default | Strong | `component/badge/default-strong-background` (`#1f2528`) | none | `component/badge/default-strong-text` / `-icon` (`#ffffff`) |
| Default | Subtle | `component/badge/default-subtle-background` (`#faf6ef`) | `component/badge/default-subtle-border` (`#ebd8bc`) | `component/badge/default-subtle-text` / `-icon` (`#990000`) |
| Info | Strong | `component/badge/info-strong-background` (`#004f9e`) | none | `component/badge/info-strong-text` / `-icon` (`#ffffff`) |
| Info | Subtle | `component/badge/info-subtle-background` (`#f5fcff`) | `component/badge/info-subtle-border` (`#9ed5fd`) | `component/badge/info-subtle-text` / `-icon` (`#004f9e`) |
| Success | Strong | `component/badge/success-strong-background` (`#13650b`) | none | `component/badge/success-strong-text` / `-icon` (`#ffffff`) |
| Success | Subtle | `component/badge/success-subtle-background` (`#f5fff6`) | `component/badge/success-subtle-border` (`#acee8b`) | `component/badge/success-subtle-text` / `-icon` (`#13650b`) |
| Warning | Strong | `component/badge/warning-strong-background` (`#ff9602`) | none | `component/badge/warning-strong-text` / `-icon` (`#1f2528`) |
| Warning | Subtle | `component/badge/warning-subtle-background` (`#fffbf0`) | `component/badge/warning-subtle-border` (`#ffd580`) | `component/badge/warning-subtle-text` / `-icon` (`#1f2528`) |
| Danger | Strong | `component/badge/danger-strong-background` (`#cd210a`) | none | `component/badge/danger-strong-text` / `-icon` (`#ffffff`) |
| Danger | Subtle | `component/badge/danger-subtle-background` (`#fff6f5`) | `component/badge/danger-subtle-border` (`#faa094`) | `component/badge/danger-subtle-text` / `-icon` (`#cd210a`) |

Icon Only uses the same colors as Default.

### Icons

| Status | Icon |
| --- | --- |
| Default | `rvt-star` (swappable) |
| Info | `rvt-info` |
| Success | `rvt-check` |
| Warning | `rvt-minus` |
| Danger | `rvt-exclamation-mark` |
