# Quote

## What it is
A quote pulls out a short statement from a real person, with their name and title underneath. It adds a human voice to a page and backs up your message with someone's own words.

## When to use it
- A student, alum or faculty voice
- One memorable line in a long story
- A named person who agreed to be quoted

## When not to use it
- Your own message or a key fact: use a callout
- Anonymous or made-up quotes
- Several quotes in a row

## Variants

### Size
- **Impact:** Large type with lots of space around it. Use it as a standalone moment between sections
- **Compact:** Smaller type and tighter spacing. Use it inside a story or next to other content

### Layout
- **Default:** Shows a quotation mark icon above the quote. Use it when you don't have a good photo of the person
- **Avatar:** Shows the person's photo above the quote. Use it when seeing the person builds trust, like a student testimonial

## Writing tips
- Keep quotes to one or two sentences. Use Compact if it runs longer
- Quote the person's exact words. Trim, but don't reword
- Give the full name, then a title, class year or school, like "Class of 2025, Kelley School of Business"
- Use a clear, well-lit headshot for the avatar, and write alt text with the person's name

---

## Developer spec checklist

Shared rules: Background `background/default`. Quote, name and title use `text/brand`. Default layout shows the quote icon in `icon/brand` (2px stroke); Avatar layout uses `rvt-avatar` with `background/brand-container`. Everything stacks in one left-aligned column. Desktop is 1600px wide, Mobile 375px.

| Element | Desktop Impact | Desktop Compact | Mobile Impact | Mobile Compact |
| --- | --- | --- | --- | --- |
| Padding | `spacing/192` top and bottom (192px), `spacing/80` left and right (80px) | `spacing/128` top and bottom (128px), `spacing/80` left and right (80px) | `spacing/80` top and bottom (60px), `spacing/24` left and right (24px) | `spacing/64` top and bottom (48px), `spacing/24` left and right (24px) |
| Gap between icon or avatar, quote and name | `spacing/32` (32px) | `spacing/24` (24px) | `spacing/32` (24px) | `spacing/24` (24px) |
| Quote icon | 85 × 64px | 75 × 56px | 53 × 40px | 53 × 40px |
| Avatar | 128px | 80px | 64px | 64px |
| Quote | `editorial/xl/regular` (54 / 56px) | `editorial/md/regular` (29 / 36px) | `editorial/xl/regular` (36 / 36px) | `editorial/md/regular` (29 / 36px) |
| Name | `body/sm/strong` (16 / 24px) | `body/sm/strong` (16 / 24px) | `body/sm/strong` (16 / 24px) | `body/sm/strong` (16 / 24px) |
| Title or school | `body/base/regular` (18 / 28px) | `body/base/regular` (18 / 28px) | `body/base/regular` (16 / 24px) | `body/base/regular` (16 / 24px) |
