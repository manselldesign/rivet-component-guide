# Select input

## What it is
A field that opens a list of options so readers can pick one. It saves space when there are too many choices to show at once.

## When to use it
- Use it when readers pick one option from a long list, like a state or country
- Use it when space is tight, like a filter bar on an event listing
- Use it when most readers know the answer, like their college or school

## When not to use it
- Don't use it for two to six options. Use radio buttons so every choice is visible
- Don't use it when readers can pick more than one. Use checkboxes instead
- Don't use it for actions, like "Download" or "Share". Use a button or dropdown menu instead
- Don't use it when readers need to type their own answer. Use a text input instead

## Variants

### Size
- **Large:** Use it for main forms, like an application or registration
- **Medium:** Use it for most forms and settings
- **Small:** Use it in compact spaces, like filters above a list of news stories

### Status
- **Default:** Use it before the reader has answered, or when there's nothing to report
- **Info:** Use it to add a helpful note, like where to find a term code
- **Success:** Use it to confirm a choice was saved
- **Warning:** Use it when a choice may cause a problem, like a full course section
- **Danger:** Use it when the reader must fix something, like a required field left empty

### State
- **Default:** The field at rest
- **Focus:** Shows a ring around the field when a reader tabs to it or clicks it. Never remove it

### Optional parts
- **Label:** the question above the field. Keep it on
- **Helper text:** a short hint, like "Choose the campus you plan to attend"
- **Leading icon:** a small icon before the value, like a magnifying glass for search
- **Trailing icon:** the down arrow that shows the field opens a list. Keep it on

## Writing tips
- Write labels as short nouns or questions, like "State" or "Which campus?"
- Use a neutral first option, like "Select a campus", not a real choice
- Sort options in an order readers expect, like alphabetical or by date
- Keep option text short so it fits without cutting off
- Put the most important detail first in each option

---

## Developer spec checklist

Shared rules: 1px `component/input/border` border on all sides, no radius. Field text is `component/input/text`. Focus adds a 2px `border/accent-strong` ring outside the field. Label is `text/strong` with a `text/required` asterisk, `spacing/8` below (8px). Status messages use `rvt-alert` and sit between the label and helper text. Helper text is `body/xs/regular` (14 / 20px), `text/default`, `spacing/4` above the field (4px). Sizes don't change on Mobile.

| Element | Large | Medium | Small |
| --- | --- | --- | --- |
| Field padding | `spacing/12` left and right (12px) | `spacing/12` left and right (12px) | `spacing/8` left and right (8px) |
| Label | `heading/sm/strong` (16 / 20px) | `heading/sm/strong` (16 / 20px) | `heading/xs/strong` (14 / 20px) |
| Value text | `body/sm/regular` (16 / 24px) | `body/sm/regular` (16 / 24px) | `body/xs/regular` (14 / 20px) |
| Gap, icon to value to arrow | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/8` (8px) |
