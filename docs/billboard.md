# Billboard

## What it is
A large block that pairs a big image with a short title, a sentence or two, and one or more links. It draws attention to one important section or piece of content on your site.

- Spotlight a featured program on a school home page
- Promote an admissions deadline or campus visit
- Break up a long landing page with a strong image
- Lead readers to a major campaign or initiative

## When to use it
- Use it to spotlight one key destination, like an admissions deadline or a featured program
- Use it to break up a long page with a strong visual moment
- Use it when you have a good image that supports the message

## When not to use it
- Don't use it for routine news or event lists. Use a card or list instead
- Don't stack several (more than 3) billboards in a row. They compete and lose impact
- Don't use it without a meaningful image

## The image
- Upload one landscape photo. You don't crop it yourself
- Beside the text (wide layouts) it shows as a square. Above the text (narrow layouts) it shows as a 3:2 banner, the same shape the feature card uses
- The crop is automatic and keeps the top-middle of the photo, which is where faces usually are. Pick photos with the subject near the top-middle and a little room around it
- Avoid photos where the subject sits at the far left or right, or text and logos near the edges. They can get trimmed in the square

## Writing guidance

<div class="ex">
<figure class="ex-item">
<img src="img/billboard-bad-v2.jpg" alt="Billboard with the eyebrow Get IU football tickets, a four-line title about the excitement and tradition of Hoosier football, a 16-line description paragraph, and a long button that reads Learn more about tickets and game day.">
<h3>Why this doesn't work</h3>
<ul class="checklist x">
<li>The eyebrow should be the department or program name</li>
<li>The title is twice as long as it should be</li>
<li>The description is a wall of text most people will skip</li>
<li>The button label is long and doesn't stand out</li>
</ul>
</figure>
<figure class="ex-item">
<img src="img/billboard-good.jpg" alt="Billboard with the tag Athletics, the title Game day starts at Memorial Stadium, a two-sentence description saying tickets are on sale now, and a Get tickets button.">
<h3>Why this works</h3>
<ul class="checklist">
<li>The title is short and easy to read at a glance</li>
<li>The description gets to the point in two sentences</li>
<li>The tag names the topic in one word</li>
<li>The button says exactly what happens next</li>
</ul>
</figure>
</div>

## Types

### Links
- **Single:** Use when there's one clear next step, like "Apply now"
- **Multiple:** Use when there are a few related pages, like "Tuition", "Financial aid" and "Scholarships"

### Order
- Image on the left, text on the right
- Image on the right. Alternate this to vary rhythm when a page has more than one billboard

## Writing tips
- Keep the title under 40 characters
- Keep the description to one short paragraph
- Use the eyebrow (the small label above the title) for the section or topic, like "Admissions"
- Write link text that says where it goes. Avoid "Click here" or "Learn more"
- Write image alt text that describes the image, not the title

---

## Developer spec checklist

Shared rules: a billboard has **either** one button **or** a list of links, never both. Pick one per billboard. The eyebrow and description are optional; the image, title and link are not. One image serves both layouts: the slot changes shape (1:1 beside the text, 3:2 above it) and the photo is cropped to fit automatically.

Breakpoint: the billboard switches between its two layouts on its own width, not the screen's. Side by side at 800px wide or more; stacked under 800px. The stacked layout always uses the Mobile token values (the Mobile column below), even on a wide screen.

| Element | Side by side (800px and up) | Stacked (under 800px) |
| --- | --- | --- |
| Layout | Two columns, image and content, `spacing/32` (32px) between | Stacked, image above content |
| Columns | Image column and content split 824 : 544 (824px and 544px at 1400px wide, an 800px image); content never goes under 280px (the image gives way) | Full width |
| Background | `background/strong` | `background/strong` |
| Image | 1:1, `spacing/24` (24px) top, bottom and outer side | Full width, 3:2, `spacing/20` (20px) top, left, right |
| Image crop | `object-fit: cover`, anchored at `--rvt-image-focus` (default `50% 25%`, top third centre). Authors never crop by hand; a page can move the focal point per image | Same |
| Content padding | `spacing/48` (48px) top, outer side and bottom, content bottom-aligned; all `spacing/32` (32px) under 1100px wide. No fixed height: the billboard grows to fit whichever column is taller, so the text never runs past the top edge | `spacing/32` (24px) all sides, so the text block and the links sit inside the same 24px frame |
| Eyebrow | `tag/sm/caps` (12 / 16px), `text/brand`, `spacing/8` below | Same |
| Title | `display/xs/strong` (26 / 32px), `text/brand` | `display/xs/strong` (20 / 24px) |
| Description | `body/sm/regular` (16 / 24px), `text/default`, `spacing/16` (16px) above | Same as Desktop |
| Single link | `rvt-link` Extra-large, `component/button/height-xl` (48px), `spacing/32` above | Hugs its label, left aligned, `spacing/32` (24px) sides and below |
| Multiple links | `rvt-list-hub` Compact, `spacing/32` above; no line below the last item and no padding under it | `rvt-list-hub` Compact, full width, `spacing/32` (24px) sides and below; no line below the last item |
| Reversed | Image column moves to the right | No change (stacked) |
