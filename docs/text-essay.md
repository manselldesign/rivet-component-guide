# Text Essay

## What it is
A text essay is a long block of reading content: a title, short sections with subheadings, body paragraphs, a bulleted list and up to two buttons. Use it to explain a topic in depth.

## When to use it
- Use it to explain a program, service or process in a few paragraphs, like how study abroad credits transfer
- Use it on an About page to tell a department's story
- Use it to compare two related topics side by side, like undergraduate and graduate admissions

## When not to use it
- Don't use it for a one-line introduction to a section. Use a section intro instead
- Don't use it to call out a single deadline or key fact. Use a callout instead
- Don't use it for numbered how-to steps. Use steps instead
- Don't use it for questions and answers people scan. Use an accordion instead

## Variants

### Columns
- **One column:** One centered reading column. Use it for a single topic people read top to bottom
- **Two columns:** Two sections side by side that stack on mobile. Use it for two related topics of similar length

### Optional parts
- Turn on only what you have: sticker icon, tag, subheadings, body paragraphs and buttons
- Keep the title on. It tells people what the essay covers

## Writing tips
- Keep the title under 40 characters
- Keep each body section to three short paragraphs or fewer
- Start each subheading with the main idea, like "What you'll study"
- Keep bullets short and parallel. Start each one the same way
- Give each button a clear action, like "Request information". Use two buttons at most

---

## Developer spec checklist

Shared rules: Background `background/default`. Sticker, tag, title and subheadings use `text/brand`; body and list text use `text/default`. One column centers the sticker, tag, title and subheadings; body and list stay left-aligned. Two columns are left-aligned and stack on Mobile. List items use the same text style as the body text around them. Bullets are squares in `component/list/marker` (Light `color/brand/main` #990000, Dark and Crimson `color/brand/light` #efdfc8), centered on the first line of text in a fixed 16px column. Buttons are `rvt-button`.

| Element | Desktop one column | Desktop two columns | Mobile one column | Mobile two columns |
| --- | --- | --- | --- | --- |
| Padding | `spacing/160` top and bottom (160px), `spacing/80` left and right (80px) | `spacing/128` top and bottom (128px), `spacing/80` left and right (80px) | `spacing/64` top and bottom (48px), `spacing/24` left and right (24px) | `spacing/48` top and bottom (36px), `spacing/24` left and right (24px) |
| Gap between columns | None | `spacing/64` (64px) | None | `spacing/40` between stacked sections (32px) |
| Sticker | 96px, `spacing/32` below (32px) | 80px, `spacing/24` below (24px) | 64px, `spacing/20` below (20px) | 64px, `spacing/20` below (20px) |
| Tag | `tag/md/caps` (14 / 18px), `spacing/12` below (12px) | `tag/md/caps` (14 / 18px), `spacing/12` below (12px) | `tag/md/caps` (14 / 18px), `spacing/12` below (12px) | `tag/md/caps` (14 / 18px), `spacing/12` below (12px) |
| Title | `display/lg/strong` (48 / 52px), `spacing/48` below (48px) | `display/lg/strong` (48 / 52px), `spacing/40` below (40px) | `display/lg/strong` (29 / 32px), `spacing/40` below (32px) | `display/lg/strong` (29 / 32px), `spacing/40` below (32px) |
| Subheading | `heading/2xl/strong` (29 / 36px), `spacing/24` below (24px) | `display/xs/strong` (26 / 28px), `spacing/16` below (16px) | `heading/lg/strong` (20 / 24px), `spacing/24` below (24px) | `heading/md/strong` (20 / 24px), `spacing/16` below (16px) |
| Body text | `body/xl/regular` (26 / 36px) | `body/base/regular` (18 / 28px) | `body/xl/regular` (23 / 32px) | `body/base/regular` (16 / 24px) |
| Space above list | `spacing/32` (32px) | `spacing/24` (24px) | `spacing/32` (24px) | `spacing/24` (24px) |
| List item text | `body/xl/regular` (26 / 36px) | `body/base/regular` (18 / 28px) | `body/xl/regular` (23 / 32px) | `body/base/regular` (16 / 24px) |
| Gap between list items | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/8` (8px) |
| Bullet | 8 × 8px square, `spacing/8` gap to text (8px) | 6 × 6px square, `spacing/4` gap to text (4px) | 8 × 8px square, `spacing/8` gap to text (8px) | 6 × 6px square, `spacing/4` gap to text (4px) |
| Space above second subheading | `spacing/48` (48px) | `spacing/40` (40px) | `spacing/48` (36px) | `spacing/40` (32px) |
| Buttons | `spacing/48` above (48px), `spacing/24` between (24px) | Second column only, `spacing/32` above (32px), `spacing/24` between (24px) | `spacing/40` above (32px) | Each section, `spacing/32` above (24px) |
