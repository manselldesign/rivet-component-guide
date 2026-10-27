# List

## What it is
A group of related items shown with bullets, numbers or no markers, so readers can scan them quickly.

## When to use it
- Use it when you have three or more related items, like what to bring to orientation
- Use a numbered list when order matters, like the steps to apply for housing
- Use a definition list for terms and their meanings, like a glossary on a degree program page

## When not to use it
- Don't use it for one or two items. Write a sentence instead
- Don't use it to compare items across several details. Use a table instead
- Don't use it for long paragraphs. Break them into sections with headings

## Variants

### List type
- **Unordered:** Use it when order doesn't matter, like campus dining options
- **Ordered:** Use it for steps in sequence, like registering for classes
- **Plain:** Use it for short items that don't need markers, like a department's office hours
- **Inline:** Use it for a few short items in a row, like related links under a news story
- **Definition:** Use it for a term followed by its explanation, like "Credit hour" and what it means

### Size
- **Small:** Use it in tight spaces, like sidebars and cards
- **Medium:** Use it for most page content
- **Large:** Use it next to larger body text, like a program page introduction

### Type
- **Default:** Use it in regular page content. Bullets and numbers use the brand color
- **Alert:** Use it inside an alert message. Bullets and numbers match the text color

### Nested items
- **Nested item:** Use it for an item that belongs under the one above, like sub-steps. Figma calls this Variant=Secondary
- Keep nesting to one level

## Writing tips
- Introduce the list with a short lead-in sentence
- Start every item the same way, like all verbs or all nouns
- Keep items short, ideally one line
- Use periods on all items or none
- Build lists with the list tool in your editor, not typed dashes, so screen readers announce how many items there are

---

## Developer spec checklist

Shared rules: lists fill their container. Items stack with `spacing/8` (8px) between them. Bullets are squares, filled for top-level items and a 1px outline for nested items. Default bullets use `icon/brand` and numbers `text/brand`. Alert bullets use `icon/default` and numbers `text/default`. Item text uses `text/default`.

| Element | Small | Medium | Large |
| --- | --- | --- | --- |
| Item text | `body/xs/regular` (14 / 20px) | `body/sm/regular` (16 / 24px) | `body/base/regular` (18 / 28px) |
| Number | `body/xs/strong` (14 / 20px) | `body/sm/strong` (16 / 24px) | `body/base/strong` (18 / 28px) |
| Bullet size | 5 × 5px | 6 × 6px | 6 × 6px |
| Gap, bullet or number to text | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/12` (12px) |
| Top-level indent | `spacing/24` (24px), left | `spacing/24` (24px), left | `spacing/24` (24px), left |
| Nested indent, Desktop | `spacing/40` (40px), left | `spacing/40` (40px), left | `spacing/64` (64px), left |
| Nested indent, Mobile | `spacing/40` (32px), left | `spacing/40` (32px), left | `spacing/64` (48px), left |
| Inline, gap between items | `spacing/24` (24px) | `spacing/24` (24px) | `spacing/24` (24px) |
| Definition term | `body/xs/strong` (14 / 20px), `text/strong` | `body/sm/strong` (16 / 24px), `text/strong` | `body/base/strong` (18 / 28px), `text/strong` |
| Definition description | `body/xs/regular` (14 / 20px) | `body/sm/regular` (16 / 24px) | `body/base/regular` (18 / 28px) |
| Gap, term to description | `spacing/4` (4px) | `spacing/4` (4px) | `spacing/8` (8px) |
| Gap between definition pairs | `spacing/20` (20px) | `spacing/20` (20px) | `spacing/20` (20px) |

| Element | Alert (Medium only) |
| --- | --- |
| Item text and number | `body/sm/regular` (16 / 24px) / `body/sm/strong` (16 / 24px), `text/default` |
| Top-level indent | 0 |
| Nested indent | `spacing/24` (24px), left |
| Gap, bullet or number to text | `spacing/8` (8px) |
