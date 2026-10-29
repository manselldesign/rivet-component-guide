# Text Block

## What it is
A text block is the main content area of a details page: headings, paragraphs, lists and buttons, with room for a photo, quote, note, table, accordion, stats or list hub between them. You build it row by row, and the spacing between rows takes care of itself.

## When to use it
- Use it for the body of a details page, like a policy, a program overview or a how-to guide
- Use it when you need a mix of text and other content, like a research story with a photo, a quote and key numbers
- Use it for long reading that benefits from clear sections, like admissions steps or a department's history

## When not to use it
- Don't use it to introduce a section in one or two lines. Use a section intro instead
- Don't use it for a mission or values statement. Use a text essay instead
- Don't use it to link to a group of pages on its own. Use a list hub instead
- Don't use it for a home page or section index. Those pages use cards and heroes

## Variants

### Row type
Each row is one kind of content. Pick the type that fits, and add, remove or reorder rows as you need.

- **Tag:** A short label above the title, like a department or topic name
- **H1:** The page title. Use it once, at the top
- **H2:** A main section heading, like "How to apply"
- **H3:** A heading inside a section, like "Transfer students"
- **Paragraph:** Body text. One idea per paragraph
- **List:** Bulleted points. Add more than one list to the row if you need a break between groups
- **CTA Group:** One or two buttons for the next step, like "Apply now"
- **Image Hub:** A photo with an optional caption
- **Quote:** Someone else's words, with their name
- **Note:** A short message the reader shouldn't miss, like a deadline
- **List Hub:** A group of links to related pages
- **Table:** Data with columns, like tuition by program
- **Accordion:** Questions and answers, or details most people can skip
- **Stats:** A few key numbers, like enrollment or graduation rate

### Breakpoint
- **Desktop:** The default layout
- **Mobile:** Smaller headings and tighter spacing. Switch the whole block at once

## Writing tips
- Start with the page title, then one short paragraph that says what the page covers
- Keep headings in order: H2 for sections, H3 inside them. Don't skip a level or pick one for its size
- Keep paragraphs to three or four sentences. Break long text with a heading, list or image
- Use a note only for things that change what the reader should do. If everything is a note, nothing is
- Write button text as an action, like "Register for orientation". Avoid "Click here"
- Give every photo alt text that says what it shows

---

## Developer spec checklist

Shared rules: no background, border or shadow on the block or its rows. Rows stack vertically with no gap; all spacing is the space above each row, so any order keeps the rhythm. The first row has no space above. Rows fill the container width. Nested components (list, button, alert, list hub, quote, table, accordion, stat, image hub) follow their own specs.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Tag text | `tag/lg/regular` (16 / 24px), `text/strong`, `spacing/8` below (8px) | Same, `spacing/8` below (8px) |
| H1 | `heading/3xl/strong` (36 / 40px), `text/strong`, no space above | `heading/3xl/strong` (23 / 28px), no space above |
| H2 | `heading/2xl/strong` (29 / 36px), `text/strong`, `spacing/48` above (48px) | `heading/2xl/strong` (23 / 32px), `spacing/48` above (36px) |
| H3 | `heading/lg/strong` (23 / 28px), `text/strong`, `spacing/40` above (40px) | `heading/lg/strong` (20 / 24px), `spacing/40` above (32px) |
| Paragraph | `body/base/regular` (18 / 28px), `text/default`, `spacing/24` above (24px) | `body/base/regular` (16 / 24px), `spacing/24` above (24px) |
| List row | `spacing/16` above (16px); `spacing/16` gap between lists (16px); list Size Large | `spacing/16` above (16px); `spacing/12` gap between lists (12px); list Size Medium |
| CTA Group | `spacing/24` above (24px); buttons in a wrapping row, `spacing/16` gap (16px); button Link, Subtle, Extra-large | Same, `spacing/16` gap (16px) |
| Image Hub, Quote, Note, List Hub, Accordion, Stats | `spacing/32` above (32px) | `spacing/32` above (24px) |
| Table | `spacing/24` above (24px) | `spacing/24` above (24px) |
| Nested variants | Image hub Single; quote Default, Compact; alert Default; list hub Compact, Single; table Crimson, Default, not striped; stat Grid | Same, Mobile breakpoint |
