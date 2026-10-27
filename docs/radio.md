# Radio

## What it is
A group of options where readers can pick only one. Every choice stays visible, so readers can compare them before they decide.

## When to use it
- Use it when readers must choose exactly one option, like a campus for an application
- Use it when there are about two to six options, like a preferred contact method
- Use it when readers benefit from seeing every option at once, like enrollment status

## When not to use it
- Don't use it when readers can pick more than one. Use checkboxes instead
- Don't use it for a long list, like every country. Use a dropdown instead
- Don't use it for a single yes or no setting. Use one checkbox instead

## Variants

### Type
- **Default:** Use it for most forms. Options stack one per line, so they're easy to scan
- **Inline:** Use it for two to four short options, like "Yes" and "No". Options sit side by side

### Status
- **Default:** Use it before the reader has answered, or when there's nothing to report
- **Info:** Use it to add a helpful note, like when a choice can be changed later
- **Success:** Use it to confirm an answer was accepted
- **Warning:** Use it when a choice may cause a problem, like a late application fee
- **Danger:** Use it when the reader must fix something, like a required question left blank

### Optional parts
- **Label:** the question above the options. Keep it on unless the page heading already asks it
- **Helper text:** a short hint under the label, like where to find a student ID
- **Option description:** a line of detail under an option, like what a meal plan includes
- **Disabled option:** shows a choice that isn't available right now

## Writing tips
- Write the label as a clear question, like "Which campus will you attend?"
- Keep options short and start them with the key word
- Make options cover every case. Add "Other" or "None of these" if needed
- Put options in a logical order, like most common first or by date
- Don't preselect an option unless most readers would choose it
- Tell readers why an option is disabled, in helper text or the description

---

## Developer spec checklist

Shared rules: the same specs apply on Desktop and Mobile. Required labels end with an asterisk in `text/required`. Status messages use `rvt-alert` and sit between the label and the options. A disabled option shows its circle at 40% opacity. The option text and description stay at full opacity.

| Element | Default | Inline |
| --- | --- | --- |
| Label | `heading/sm/strong` (16 / 20px), `text/strong` | Same |
| Gap between label, status message and options | `spacing/8` (8px) | Same |
| Gap, helper text to options | `spacing/4` (4px) | Same |
| Gap between options | `spacing/12` (12px), stacked | `spacing/24` (24px), side by side |
| Options, space above | `spacing/4` (4px) | 0 |
| Option text | `action/lg/regular` (16 / 24px), `text/strong` | Same |
| Gap, circle to option text | `spacing/8` (8px) | Same |
| Unchecked circle | 1px `border/strong` ring, no fill | Same |
| Checked circle | 1px `border/accent` ring with a `background/brand` dot | Same |
| Option description | `body/xs/regular` (14 / 20px), `text/default`, lined up with the option text | Same |
| Gap, option text to description | `spacing/4` (4px) | Same |
