# Input group

## What it is
An input group joins a text field with a button or a fixed label, like a search box with a "Search" button or an email field that ends in "@iu.edu". It keeps the field and its action or context together, so people know exactly what to type and what happens next.

## When to use it
- Use it for a single-field action, like site search or a newsletter sign-up
- Use it when part of the answer is fixed, like an IU email domain or a "https://" web address

## When not to use it
- Don't use it for forms with several fields. Use text inputs with a submit button below instead
- Don't use it to hide instructions. Put those in the label or helper text

## Variants

### Type
- **Button:** The field ends or starts with an action button, like "Search" or "Subscribe"
- **Label:** The field ends or starts with fixed text people don't type, like "@iu.edu"

### Append
- **Append:** The button or label sits after the field. Use it in most cases
- **Prepend:** The button or label sits before the field, like "https://"

### Size
- **Large:** Use it in most forms and page search
- **Medium:** Use it in tighter spaces, like a sidebar
- **Small:** Use it in dense areas, like a table filter

### Optional parts
- **Label:** The field's name above it. Keep it on unless the button or a heading already makes the field clear
- **Leading icon:** An icon at the start of the field, like a magnifying glass for search
- **Helper text:** A short tip under the label, like "Use your IU email"

## Writing tips
- Start button text with a verb, like "Search" or "Subscribe"
- Keep button and label text to one or two words
- Use placeholder text only as an example, never as the label

---

## Developer spec checklist

Shared rules: 1px `component/input/border` border on all sides, no radius. The button or label shares the field's height and sits flush inside the border. Focus adds a 2px `border/accent-strong` ring outside the field. Field text is `component/input/text`. Label above the field is `heading/sm/strong` (16 / 20px), `text/strong`, `spacing/8` below (8px); helper text sits `spacing/4` above the field (4px). Sizes don't change on Mobile.

| Element | Large | Medium | Small |
| --- | --- | --- | --- |
| Field height | `component/input/height-lg` (48px) | `component/input/height-md` (40px) | `component/input/height-sm` (32px) |
| Field padding | `spacing/12` on the text side (12px) | `spacing/12` (12px) | `spacing/8` (8px) |
| Field text | `body/base/regular` (18 / 28px) | `body/xs/regular` (14 / 20px) | `body/xs/regular` (14 / 20px) |
| Gap, icon to text to button | `spacing/8` (8px); `spacing/12` (12px) for Label type | Same | Same |
| Button size | `rvt-button` Size Extra-large (48px) | Size Large (40px) | Size Medium (32px) |
| Button padding and text | `spacing/16` left and right (16px), `action/lg/strong` | `spacing/16` (16px), `action/lg/strong` | `spacing/12` (12px), `action/sm/strong` |
| Button type | Style Strong, `component/button/form-background` | Same | Same |
| Label type | Style Normal, `background/strong` fill, 1px `component/input/border` on the side facing the field | Same | Same |
