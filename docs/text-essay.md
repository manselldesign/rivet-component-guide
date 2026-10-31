# Text Essay

## What it is
A text essay presents a mission, vision or editorial statement: a strong title, a few short sentences of supporting text and up to two buttons. It gives an index page a clear message in your own words.

## When to use it
- Use it for a mission, vision or values statement, like a school's commitment to student success
- Use it to introduce a section with some context, like what a research center does and why it matters
- Use it to pair a short statement with one or two next steps, like "Explore programs" and "Plan a visit"

## When not to use it
- Don't use it for someone else's words. Use a quote instead
- Don't use it to call out a single deadline or key fact. Use a callout instead
- Don't use it to link to a group of pages. Use a list hub instead
- Don't use it for a one-line section introduction. Use a section intro instead

## Variants

### Layout
- **Centered:** One focused column in the middle of the page. Use it for a short statement you want people to stop and read
- **Two columns:** The text flows into two columns that line up with other content on the page. On phones it becomes one column. Use it for longer context or two related ideas

### Optional parts
- Turn on only what you have: sticker, eyebrow, subheadings, body text, bulleted list and buttons
- Always keep the title. It's the one required part
- Turn parts off instead of leaving placeholder text. The spacing adjusts on its own
- In two columns, fill the left column first, then continue in the right

## Writing tips
- Lead with the main idea in the title, and keep it under 40 characters
- Keep the eyebrow to one or two words, like a topic or department name
- Keep body text to a few short sentences per section
- Use bold and italics sparingly. When everything stands out, nothing does
- Pick the heading level that fits the page order, like H2 then H3. Don't skip levels or choose one for its look
- Write button text as a short action, like "Apply now". Avoid "Read more" or "Click here"
- Use two buttons at most

---

## Developer spec checklist

Shared rules: Background `background/default`. Sticker, eyebrow, title and subheadings use `text/brand`; body and list text use `text/default`. One column centers the sticker, eyebrow, title and subheadings; body and list stay left-aligned. Two columns are left-aligned. The body is one stream of rich text (subheadings, paragraphs, lists) that flows into two columns on wide screens and one column on Mobile; keep a subheading with the text after it and don't split a list item across columns. Buttons sit once, below the body. List items use the same text style as the body text around them. Bullets are squares in `component/list/marker` (Light `color/brand/main` #990000, Dark and Crimson `color/brand/light` #edddc4), centered on the first line of text in a fixed 16px column. Buttons are `rvt-button`. Every part except the title is optional. The author sets the title's heading level (H2 to H6) to fit the page order; its text style stays the same at every level. Space between parts belongs to the part below it (a top margin), so hiding any part never leaves a doubled or missing gap.

| Element | Desktop one column | Desktop two columns | Mobile one column | Mobile two columns |
| --- | --- | --- | --- | --- |
| Padding | `spacing/160` top and bottom (160px), `spacing/80` left and right (80px) | `spacing/128` top and bottom (128px), `spacing/80` left and right (80px) | `spacing/64` top and bottom (48px), `spacing/24` left and right (24px) | `spacing/48` top and bottom (36px), `spacing/24` left and right (24px) |
| Gap between columns | None | `spacing/64` (64px) | None | One column on Mobile |
| Sticker | 96px, `spacing/32` below (32px) | 80px, `spacing/24` below (24px) | 64px, `spacing/20` below (20px) | 64px, `spacing/20` below (20px) |
| Eyebrow | `tag/md/caps` (14 / 20px), `spacing/12` below (12px) | `tag/md/caps` (14 / 20px), `spacing/12` below (12px) | `tag/md/caps` (14 / 20px), `spacing/12` below (12px) | `tag/md/caps` (14 / 20px), `spacing/12` below (12px) |
| Title | `display/lg/strong` (48 / 52px), `spacing/48` below (48px) | `display/lg/strong` (48 / 52px), `spacing/40` below (40px) | `display/lg/strong` (29 / 32px), `spacing/40` below (32px) | `display/lg/strong` (29 / 32px), `spacing/40` below (32px) |
| Subheading | `heading/2xl/strong` (29 / 36px), `spacing/24` below (24px) | `display/xs/strong` (26 / 28px), `spacing/16` below (16px) | `heading/lg/strong` (20 / 24px), `spacing/24` below (24px) | `heading/md/strong` (20 / 24px), `spacing/16` below (16px) |
| Body text | `body/xl/regular` (26 / 36px) | `body/base/regular` (18 / 28px) | `body/xl/regular` (23 / 32px) | `body/base/regular` (16 / 24px) |
| Space above list | `spacing/32` (32px) | `spacing/24` (24px) | `spacing/32` (24px) | `spacing/24` (24px) |
| List item text | `body/xl/regular` (26 / 36px) | `body/base/regular` (18 / 28px) | `body/xl/regular` (23 / 32px) | `body/base/regular` (16 / 24px) |
| Gap between list items | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/8` (8px) | `spacing/8` (8px) |
| Bullet | 8 × 8px square, `spacing/8` gap to text (8px) | 6 × 6px square, `spacing/4` gap to text (4px) | 8 × 8px square, `spacing/8` gap to text (8px) | 6 × 6px square, `spacing/4` gap to text (4px) |
| Space above second subheading | `spacing/48` (48px) | `spacing/40` (40px) | `spacing/48` (36px) | `spacing/40` (32px) |
| Buttons | `spacing/48` above (48px), `spacing/24` between (24px), centered | Below both columns, `spacing/32` above (32px), `spacing/24` between (24px), left-aligned | `spacing/40` above (32px), centered | Below the body, `spacing/32` above (24px), left-aligned |
