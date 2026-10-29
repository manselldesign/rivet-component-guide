# Image hub

## What it is
One photo, or a group of three, that shows what a place, program or event feels like. It can open with a short statement and end with a caption.

## When to use it
- Use it to set the scene on a landing page, like a school or campus life overview
- Use it when several photos together tell the story better than one, like a residence hall or a research lab
- Use it with a short statement that links readers onward, like "Learn more about student organizations"

## When not to use it
- Don't use it for a large photo gallery or event album
- Don't use photos that carry key information, like dates or deadlines. Put that in text

## Variants

### Layout
- **Landscape:** Use it when the main photo is wide, like a campus view or a crowd at an event
- **Portrait:** Use it when the main photo is tall, like a person, a building or a tree
- **Single:** Use it when one strong photo says enough, like a new building or a commencement moment. Pick the shape that fits the photo: square, 3:2, 2:1 or 4:5

### Position
Landscape and Portrait only.

- **Start:** Use it when the main photo should come first, on top or on the left
- **End:** Use it to vary the rhythm when a page has more than one image hub

### Optional parts
- **Intro:** a one or two sentence statement with a link. Use it only on landing-like pages
- **Caption:** a photo credit or a short description of the photos as a group
- Landscape and Portrait always use all three photos

## Writing tips
- Keep the intro to one or two sentences and end with a clear link
- Write link text that says where it goes, like "Explore our degree programs"
- Credit the photographer in the caption when required
- Describe what each photo shows in its alt text, like "Students studying in the library"

---

## Developer spec checklist

Shared rules: built as a `figure` with the intro paragraph first, then the images, then a `figcaption`. Landscape and Portrait always have three images in a two-column grid. Single has one full-width image at its own aspect ratio, with no modifier class. The small images are square (1:1). The Landscape main image is 2:1 and spans both columns. The Portrait main image spans both rows and fills their height. Images use object-fit cover. With no intro, the images start at the top with no space above. Images use `Fixed-aspect-ratio-spacer` placeholders.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Intro text | `editorial/xl/regular` (54 / 56px), `text/brand` | `editorial/xl/regular` (36 / 36px), `text/brand` |
| Intro links | `link/serif-xl/strong` (52 / 56px), `text/accent`, underlined | `link/serif-xl/strong` (32 / 32px), `text/accent`, underlined |
| Gap, intro to images | `spacing/64` (64px), below intro | `spacing/64` (48px), below intro |
| Gap between images | `spacing/8` (8px), rows and columns | `spacing/8` (8px), rows and columns |
| Gap, images to caption | `spacing/16` (16px), above caption | `spacing/16` (16px), above caption |
| Caption | `tag/md/regular` (14 / 20px), `text/default` | `tag/md/regular` (14 / 20px), `text/default` |
