# Billboard

## What it is
A large block that pairs a big image with a short title, a sentence or two, and one or more links. It draws attention to one important section or piece of content on your site.

## When to use it
- Use it to spotlight one key destination, like an admissions deadline or a featured program
- Use it to break up a long page with a strong visual moment
- Use it when you have a good image that supports the message

## When not to use it
- Don't use it for routine news or event lists. Use a card or list instead
- Don't stack several (more than 3) billboards in a row. They compete and lose impact
- Don't use it without a meaningful image

## Example

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

## Variants

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

| Element | Desktop | Mobile |
| --- | --- | --- |
| Layout | Two columns, image and content, `spacing/64` (64px) between | Stacked, image above content |
| Background | `background/strong` | `background/strong` |
| Image | 1:1, `spacing/24` (24px) top, bottom and outer side | 1:1, `spacing/20` (20px) top, left, right |
| Content padding | `spacing/64` (64px) outer side and bottom, content bottom-aligned | `spacing/32` (24px) all sides |
| Eyebrow | `tag/md/caps` (14 / 20px), `text/brand`, `spacing/8` below | Same |
| Title | `display/sm/strong` (29 / 32px), `text/brand` | Same |
| Description | `body/base/regular` (18 / 28px), `text/default`, `spacing/24` above | (16 / 24px), `spacing/20` above |
| Single link | `rvt-button` CTA, Extra-large, `component/button/height-lg` (48px), `spacing/32` above | Full width, `spacing/32` (24px) sides, `spacing/40` (32px) below |
| Multiple links | `rvt-list-hub` Desktop, Compact, `spacing/32` above | `rvt-list-hub` Mobile, Compact, full width, `spacing/32` (24px) sides, `spacing/40` (32px) below |
| Reversed | Image column moves to the right | No change (stacked) |
