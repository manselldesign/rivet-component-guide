## What it is

A stacked list of titles that each open to show more content. Readers scan the titles and open only the ones they need.

## When to use it
- Readers need only some of the content, like FAQs
- Several sections too long to show at once
- Long pages on mobile

## When not to use it
- Content everyone must read: put it on the page
- Just one item: show the content
- Switching views of the same content: use tabs
- Content readers compare side by side

## States

- **Closed:** Shows the title and a plus icon
- **Open:** Shows the title, a minus icon and the content below
- **Hover:** The row gets a subtle tinted background so readers know it's clickable
- **Focus:** A 2px ring appears around the header when a reader tabs to it. Never remove it

## Writing tips

- Keep titles short and specific, like "How do I request a transcript?" not "Transcripts"
- Make each title make sense on its own. Readers skim them as a list
- Keep the content inside each item short. If it runs several screens long, give it its own page
- Don't put key information only inside a closed item. Some readers never open them
- Order items by what readers need most, not alphabetically by default

## Developer spec checklist

### Accordion item


| Element | Desktop | Mobile |
| --- | --- | --- |
| Item border | 1px `--rvt-border-default` (`#edddc4`), all sides; items share one 1px rule where they meet (no doubled line) | Same |
| Header padding | `spacing/24` all sides (24px) | `spacing/24` all sides (24px) |
| Gap, title to icon | `spacing/16` (16px) | `spacing/16` (16px) |
| Title | `action/xl/strong` (20 / 28px, weight 600, width 110% `--rvt-font-width-semi-expanded`), `--rvt-text-strong` (`#1f2528`) | `action/xl/strong` (18 / 24px) |
| Icon | `rvt-plus` (closed) / `rvt-minus` (open), 16px, `--rvt-icon-strong`, `spacing/4` above (4px) to align with first line of title | Same |
| Body padding (open only) | `spacing/24` left, right and bottom (24px); none on top | Same |
| Body text | `body/base/regular` (18 / 28px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `--rvt-text-default` (`#343c42`), max-width 811px | `body/base/regular` (16 / 24px) |
| Background, default | None | None |
| Background, hover | `--rvt-background-tint` (`#fdfaf7`), applies to whole item, open or closed | Same |
| Focus | 2px `--rvt-border-accent-strong` outline, 2px offset, around the header button (global `:focus-visible`) | Same |
| Whole header is the click target | Yes, rendered as a `button` | Same |
