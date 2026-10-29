# File input

## What it is
A file input lets people attach a file to a form, like a letter of recommendation, a transcript or a résumé. It shows a button to pick a file, then lists what they picked.

## When to use it
- Use it when people need to send a document with a form, like an application or a scholarship request
- Use it for a small number of files picked from their device

## When not to use it
- Don't use it when you can ask for the information in a text field instead
- Don't use it for large batches or drag-and-drop uploads. Use an empty state upload area instead
- Don't use it to share a link. Use a text input instead

## Variants

### Before and after a file is picked
- **No file yet:** Before a file is picked. The button says {Choose file} and a status badge says {No file selected}
- **File picked:** After a file is picked. The button says {Change file} and each file shows as a chip with its name and an × to remove it

### Device
- **Desktop:** Button and status sit side by side
- **Mobile:** The button goes full width and the status or files sit below it

### Optional parts
- Add helper text to list accepted file types and size, like "PDF or Word, up to 10 MB"
- Leave out the label only when a heading right above already names the file

## Writing tips
- Name the document in the label, like "Letter of recommendation", not "Upload"
- Mark required uploads with an asterisk, the same way as other fields in the form
- State file limits in the helper text before people pick a file, not only in an error
- Show the full file name with its extension, like "transcript-2026.pdf", so people can check they picked the right one

---

## Developer spec checklist

Shared rules: Button is `rvt-button` (Type Form, Style Strong, Size Extra-large, 48px tall). Status is `rvt-badge` (Status Warning, Style Subtle). Each file chip is `rvt-button` (Type Form, Style Normal, Size Small) with a close icon that removes the file. Helper text is off by default. Label, helper text and spacing match every other form field.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Outer padding | None | `spacing/24` left and right (24px) |
| Label | `heading/xs/strong` (14 / 20px), `text/strong`; asterisk `text/required`; `spacing/8` below (8px) | Same |
| Helper text | `body/xs/regular` (14 / 20px), `text/default`; `spacing/4` below (4px) | Same |
| Button and status or files | Side by side, `spacing/16` gap (16px) | Stacked, button full width, `spacing/16` gap (16px) |
| File chips | In a row that wraps, `spacing/8` gap (8px) | Same |
| File chip padding | `spacing/12` left and right (12px), `spacing/8` icon to name (8px), 1px `component/button/form-border` | Same |
