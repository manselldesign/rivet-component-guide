# Checkbox

## What it is
A checkbox lets people pick one or more options from a list, like the programs they're interested in or the topics they want emails about. Each box works on its own.

## When to use it
- Use it when people can pick any number of options, including none
- Use it for a single yes-or-no choice, like "Email me event updates"
- Use it in forms, like a request-for-information or event registration form

## When not to use it
- Don't use it when people must pick exactly one option. Use radio buttons instead
- Don't use it for a setting that changes something right away. Use a switch instead
- Don't use it for a very long list, like every degree program. Use a searchable list instead

## Variants

### Type
- **Default:** Options stacked in a column. Use it in most forms
- **Inline:** Options in one row. Use it for two to four short options, like "Undergraduate" and "Graduate"

### Status
- **Default:** No message. Use it in most cases
- **Info:** A neutral tip above the options, like "Pick all that apply"
- **Success:** Confirms the answer is fine
- **Warning:** Points out something to double-check
- **Danger:** An error to fix, like "Pick at least one program"

### Options
- **Checked and unchecked:** Each option shows its own state. Start everything unchecked unless the person chose it before
- **Description:** A short line under an option. Use it when the label alone isn't clear
- **Disabled:** Use it only when an option can't be picked yet, and say why nearby

### Optional parts
- Add helper text under the group label for a short hint, like "Pick all that apply"
- Leave out the group label only when a heading already asks the question
- The red asterisk marks a required question

## Writing tips
- Write the group label as a short question, like "Which programs interest you?"
- Keep option labels short and parallel, like "Nursing" and "Public health"
- Start each label with a capital letter and skip the period
- In an error, say how to fix it, not just what went wrong

---

## Developer spec checklist

Shared rules: Box 20 × 20px, no radius. Unchecked: 1px `border/strong` border, no fill. Checked: `background/brand` fill, 1px `border/accent` border, 16px check icon. Disabled: box at 40% opacity, checked or unchecked. Label, status message, helper text and spacing match every other form field. No separate Mobile values.

| Element | Default | Inline |
| --- | --- | --- |
| Group label | `heading/sm/strong` (16 / 20px), `text/strong`; asterisk `text/required`; `spacing/8` below (8px) | Same |
| Status message | `rvt-alert` between label and options, `spacing/8` below (8px) | Same |
| Helper text | `body/xs/regular` (14 / 20px), `text/default`; `spacing/4` below (4px); off by default | Same |
| Options group | Stacked, `spacing/12` between options (12px) | One row, `spacing/24` between options (24px) |
| Box to label | `spacing/8` gap | Same |
| Option label | `action/lg/regular` (16 / 24px), `text/default` | Same |
| Description | `body/xs/regular` (14 / 20px), `text/default`, 29px left indent to line up with the label, `spacing/4` above | Same |
