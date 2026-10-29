# Textarea

## What it is
A larger field where readers type answers that run longer than one line, like a comment or a short essay. Readers can drag the corner to make it taller.

## When to use it
- Use it for answers of a sentence or more, like "Tell us about your research interests"
- Use it for open feedback, like comments on an event or a course survey
- Use it when you can't predict how long the answer will be

## When not to use it
- Don't use it for short answers, like a name or email. Use a text input instead
- Don't use it when readers pick from set choices. Use a select input, radio buttons or checkboxes instead
- Don't use it to collect long formatted documents, like a full personal statement. Use a file input instead

## Variants

### Status
- **Default:** Use it before the reader has answered, or when there's nothing to report
- **Info:** Use it to add a helpful note, like what a strong answer includes
- **Success:** Use it to confirm an answer was saved
- **Warning:** Use it when an answer may cause a problem, like going over a suggested length
- **Danger:** Use it when the reader must fix something, like a required answer left empty

### State
- **Default:** The field at rest
- **Focus:** Shows a ring around the field when a reader tabs to it or clicks it. Never remove it

### Optional parts
- **Label:** the question above the field. Keep it on
- **Helper text:** a short hint, like "500 characters max"
- **Value:** the reader's text inside the field. Turn it on to show a filled-in example

## Writing tips
- Ask a clear question in the label, like "Why are you interested in this program?"
- Give a length limit in helper text so readers can plan their answer
- Size the field to match the answer you expect. A taller box invites a longer answer
- Don't use the field's placeholder text for instructions. It disappears when readers type
- In error messages, say what to fix, like "Enter at least 50 characters"

---

## Developer spec checklist

Shared rules: No fill and no radius, with a 1px `component/input/border` border on all sides. Value text is `body/sm/regular` (16 / 24px), `component/input/text`. A 16px resize handle sits in the bottom-right corner, `component/input/icon`. Focus adds a 2px `border/accent-strong` ring, 2px outside the field. The label is `heading/xs/strong` (14 / 20px), `text/strong`, with a `text/required` asterisk. Status messages use `rvt-alert` (Inline) and sit between the label and the helper text, `spacing/8` (8px) above and below. Helper text is `body/xs/regular` (14 / 20px), `text/default`, `spacing/4` (4px) above the field. Sizes don't change on Mobile.

| Element | Value |
| --- | --- |
| Field height | 164px, no token |
| Field padding | `spacing/16` top and bottom (16px), `spacing/12` left and right (12px) |
| Label to helper text, no status message | `spacing/8` (8px) |

### Status messages

Status messages are the same `rvt-alert` (Type Inline, Device Desktop) used in Text input and Select input. See those pages for their colors and spacing.
