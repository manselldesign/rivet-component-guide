# Text input

## What it is
A field where readers type a short answer, like a name, email address or search term. It's the most common part of any form.

## When to use it
- Use it for short answers that fit on one line, like a first name or student ID
- Use it for search, like finding a course or a department contact
- Use it when the answer can't be picked from a list, like a phone number

## When not to use it
- Don't use it for long answers, like a personal statement. Use a textarea instead
- Don't use it when readers pick from a set list. Use a select input, radio buttons or checkboxes instead
- Don't use it to upload documents, like transcripts. Use a file input instead

## Variants

### Size
- **Large:** Use it for main forms and single-field screens, like login or a site search bar
- **Medium:** Use it for most forms, like an event registration or a settings page
- **Small:** Use it in dense layouts, like filtering a table of course enrollments

### Status
- **Default:** Use it before the reader has answered, or when there's nothing to report
- **Info:** Use it to add a helpful note, like where to find a university ID number
- **Success:** Use it to confirm an answer was accepted, like an available username
- **Warning:** Use it when an answer may cause a problem, like an email outside the university
- **Danger:** Use it when the reader must fix something, like a required field left empty

### State
- **Default:** The field at rest
- **Focus:** Shows a ring around the field when a reader tabs to it or clicks it. Never remove it

### Optional parts
- **Label:** the question above the field. Keep it on
- **Helper text:** a short hint, like "Use your IU email address"
- **Leading icon:** a small icon before the text, like a magnifying glass for search
- **Trailing icon:** a small icon after the text, like an "x" to clear a search

## Writing tips
- Write labels as short nouns or questions, like "Email" or "What's your major?"
- Put format rules in helper text, like "MM/DD/YYYY", not only in an error
- Don't use the field's placeholder text as the label. It disappears when readers type
- Mark required fields with an asterisk and say so at the top of the form
- In error messages, say what to fix, like "Enter an email ending in iu.edu"

---

## Developer spec checklist

Shared rules: No fill and no radius, with a 1px `component/input/border` border on all sides. Value text is `component/input/text`. Both icons are 16px, color TBD. Focus adds a 2px `border/accent-strong` ring, 2px outside the field. The label is `text/strong` with a `text/required` asterisk. Status messages use `rvt-alert` (Inline) and sit between the label and the helper text, `spacing/8` (8px) above and below. Helper text is `body/xs/regular` (14 / 20px), `text/default`, `spacing/4` (4px) above the field. Sizes don't change on Mobile.

| Element | Large | Medium | Small |
| --- | --- | --- | --- |
| Field height | `component/input/height-lg` (48px) | `component/input/height-md` (40px) | `component/input/height-sm` (32px) |
| Field padding | `spacing/12` left and right (12px) | `spacing/12` left and right (12px) | `spacing/8` left and right (8px) |
| Label | `heading/xs/strong` (14 / 20px) | `heading/xs/strong` (14 / 20px) | `heading/xs/strong` (14 / 20px) |
| Label to helper text, no status message | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/4` (4px) |
| Value text | `body/sm/regular` (16 / 24px) | `body/sm/regular` (16 / 24px) | `body/xs/regular` (14 / 20px) |
| Gap, icon to value to icon | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/8` (8px) |

### Status messages

Shared rules: The status message is an `rvt-alert` (Type Inline, Device Desktop) in every status variant except Default. It spans the field's full width and is the same at every size. Padding is `spacing/4` top and bottom (4px) and `spacing/8` left and right (8px), with a `spacing/4` gap (4px) between the icon, message and close button. The message is `body/xs/regular` (14 / 20px), `text/default`. Links are `link/xs/regular` (14 / 20px), underlined. The status icon is a 16px badge with a 12px glyph.

| Element | Info | Success | Warning | Danger |
| --- | --- | --- | --- | --- |
| Background | `background/info-subtle` | `background/success-subtle` | `background/warning-subtle` | `background/danger-subtle` |
| Border | 1px `border/info` | 1px `border/success` | 1px `border/warning` | 1px `border/danger` |
| Icon badge | `background/info-strong` | `background/success-strong`, `border/success-fixed` outline | `background/warning-strong` | `background/danger-strong` |
| Icon glyph | `color/base/ultra-light` | `color/base/ultra-light` | `color/base/main` | `color/base/ultra-light` |
| Close button | 12px, `icon/strong` | 12px, `icon/strong` | None | None |
