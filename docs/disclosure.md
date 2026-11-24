# Disclosure

## What it is
A disclosure is a single link that opens to show a short piece of extra information, like fine print, a definition or eligibility details. It keeps the page short for people who don't need the detail.

- Definitions on a financial aid page
- Fine print under a registration form
- Eligibility details on a scholarship page
- Optional help text next to a form question

## When to use it
- Use it for one optional detail, like "What counts as a dependent?" on a financial aid page
- Use it for fine print, like refund terms under a registration form
- Use it when most people can skip the detail and still finish their task

## When not to use it
- Don't use it for several related sections, like a list of FAQs. Use an accordion instead
- Don't hide information everyone needs, like an application deadline. Show it on the page
- Don't put long content, forms or images inside it. Give that content its own section

## Types

### Open
- **Closed:** Only the title shows, with an arrow pointing right. Use it as the starting state
- **Open:** The arrow points down and the extra text shows below the title

When you point at the title, it underlines so people know they can click it.

## Writing tips
- Write the title as a question or a clear label, like "Who is eligible?"
- Keep the hidden text to two or three sentences
- Don't repeat the title in the text below it
- Start closed, unless most people need to read it

---

## Developer spec checklist

Shared rules: 1px `border/default` border drawn inside (it doesn't add to the size: closed 56px, open 112px), no fill, no radius. The title row is a real button with `aria-expanded` and `aria-controls`; clicking it, or pressing Enter or Space, opens and closes it. The text slides open and closed (height and fade, 220ms ease-out, off for reduced motion); the arrow swaps, it doesn't spin. Keyboard focus shows a 2px `border/accent-strong` outline, 2px outside the title row. The same values apply on Desktop and Mobile.

| Element | Closed | Open |
| --- | --- | --- |
| Padding | `spacing/16` all sides (16px) | Same |
| Arrow | 16px `rvt-chevron-right`, `icon/accent`, `spacing/4` top offset, `spacing/8` gap to title | 16px `rvt-chevron-down` |
| Title | `action/lg/strong` (16 / 24px, weight 600, width 110% `--rvt-font-width-semi-expanded`), `text/accent` | Same |
| Hover | Title underlined in `text/accent` (default thickness), 150ms ease-out; no fill change | Same |
| Body text | — | `body/xs/regular` (14 / 20px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `text/default`, max width 800px, `spacing/8` below the title, 24px left indent (`spacing/8` + `spacing/16`) to line up with the title, `spacing/8` below |
