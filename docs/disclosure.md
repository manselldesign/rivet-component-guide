# Disclosure

## What it is
A disclosure is a single link that opens to show a short piece of extra information, like fine print, a definition or eligibility details. It keeps the page short for people who don't need the detail.

## When to use it
- Use it for one optional detail, like "What counts as a dependent?" on a financial aid page
- Use it for fine print, like refund terms under a registration form
- Use it when most people can skip the detail and still finish their task

## When not to use it
- Don't use it for several related sections, like a list of FAQs. Use an accordion instead
- Don't hide information everyone needs, like an application deadline. Show it on the page
- Don't put long content, forms or images inside it. Give that content its own section

## Variants

### Open
- **Closed:** Only the title shows, with an arrow pointing right. Use it as the starting state
- **Open:** The arrow points down and the extra text shows below the title

## Writing tips
- Write the title as a question or a clear label, like "Who is eligible?"
- Keep the hidden text to two or three sentences
- Don't repeat the title in the text below it
- Start closed, unless most people need to read it

---

## Developer spec checklist

Shared rules: 1px `border/default` border, no fill, no radius. Clicking the title opens and closes it. The same values apply on Desktop and Mobile.

| Element | Closed | Open |
| --- | --- | --- |
| Padding | `spacing/16` all sides (16px) | Same |
| Arrow | 16px `rvt-chevron-right`, `spacing/4` top offset, `spacing/8` gap to title | 16px `rvt-chevron-down` |
| Title | `action/lg/strong` (16 / 24px), `text/accent` | Same |
| Body text | — | `body/xs/regular` (14 / 20px), `text/default`, `spacing/8` below the title, 24px left indent (`spacing/8` + `spacing/16`) to line up with the title, `spacing/8` below |
