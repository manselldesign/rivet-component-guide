# Checkbox

## What it is
A checkbox lets people pick one or more options from a list, like the programs they're interested in or the topics they want emails about. Each box works on its own.

- Request-for-information forms
- Event registration choices
- Email or newsletter preferences
- Filters on a search or listing page

## When to use it
- Use it when people can pick any number of options, including none
- Use it for a single yes-or-no choice, like "Email me event updates"
- Use it in forms, like a request-for-information or event registration form

## When not to use it
- Don't use it when people must pick exactly one option. Use radio buttons instead
- Don't use it for a setting that changes something right away. Use a switch instead
- Don't use it for a very long list, like every degree program. Use a searchable list instead

## Types

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

## Accessibility checklist
Check these before the page goes live. Each one names who owns it.

- **Design:** Text and borders pass contrast in Light, Dark and Crimson
- **Design:** Checked and unchecked look different without relying on color
- **Content:** The group label asks one clear question
- **Content:** Errors say how to fix it, like "Pick at least one program"
- **Developer:** Clicking the label checks the box, not only the small square
- **Developer:** Readers can check and uncheck options with only a keyboard
- **Developer:** Screen readers hear the group label with each option
- **Developer:** Choices stay checked after an error

---

## Developer spec checklist

Shared rules: Box 20 × 20px, no radius, set 1.5px down so it centers on the first line of the label. Unchecked: 1px `border/strong` border drawn inside, no fill. Checked: `background/brand` fill, 1px `border/accent` border, 16px check icon in `icon/on-brand-alt`. Disabled: box at 40% opacity, checked or unchecked; a disabled unchecked box shows a 16px minus icon in `icon/strong`. Focus: 2px `border/accent-strong` ring right outside the box (24px), no offset. No hover state. Label, status message, helper text and spacing match every other form field. No separate Mobile values.

| Element | Default | Inline |
| --- | --- | --- |
| Group label | `heading/sm/strong` (16 / 20px, weight 700, width 110% `--rvt-font-width-semi-expanded`), `text/strong`; asterisk `text/required`; `spacing/8` below (8px) | Same |
| Status message | Inline `rvt-alert` between label and options; options sit 12px below it (`spacing/8` + `spacing/4`) | Same |
| Helper text | `body/xs/regular` (14 / 20px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `text/default`; `spacing/4` below (4px); off by default | Same |
| Options group | Stacked, `spacing/20` between options (20px) | One row, `spacing/24` between options (24px); wrapped rows `spacing/16` apart (16px) |
| Box to label | `spacing/8` gap | Same |
| Option label | `action/lg/regular` (16 / 24px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `text/default` | Same |
| Description | `body/xs/regular` (14 / 20px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `text/default`, 29px left indent to line up with the label, right under the label with no gap | Same |
