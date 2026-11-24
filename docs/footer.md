# Footer

## What it is
The footer is the band at the bottom of every page with the university's contact details, key links, social media links and required legal links. It helps people find what they need when they reach the end of a page.

- Every page of an IU website
- Every page of an IU web app
- Campus contact and address details
- Required legal and accessibility links

## When to use it
- Use it on every page of an IU site
- Use the same footer, with the same links, across the whole site

## When not to use it
- Don't use it for page-specific calls to action, like "Apply now". Put a button or callout near the content instead
- Don't use it as the main navigation. Keep the main links in the header
- Don't list every page of the site. Link to a site map page instead

## Types

### Color
- **Light:** Use it on most sites
- **Crimson:** Use it for a stronger brand look, like an admissions or campaign site
- **Dark:** Use it when the site's header or design is dark

### Breakpoint
- **Desktop:** Link groups sit side by side in columns
- **Mobile:** Link groups stack in one column

### Footer items
- **Title:** The heading for a group of links, like "Students". Group headings aren't links. The university name at the top of the contact details is the exception: it links to the site's home page
- **Secondary:** A link inside a group, or the address and phone number under the university name
- **Tertiary:** The small legal links in the bottom bar, like Accessibility and Privacy Notice

### Optional parts
- **Resource Links:** Turn it off for a simple footer with only social and legal links
- **Social Badges:** Turn it off if your unit has no active social accounts

## Writing tips
- Keep group titles to one or two words, like "Students" or "Resources"
- Keep each group to about four links
- Use the same words for a link as the title of the page it opens
- Write out the full street address and phone number
- Keep the legal links in the bottom bar on every site

---

## Developer spec checklist

Shared rules: Full width. Every theme has the same two borders: a 1px top border on the footer and a 1px border above the social row (on Mobile, the top of the bottom bar, which holds the social row). Both run the full width of the footer, edge to edge; only the content is inset. Border color: `border/default` in every theme, which gives cream on Light (`color/brand/light`), `border/on-brand` on Crimson (`color/brand/extra-dark`, #510606) and black on Dark (`color/base/ultra-dark`, #000000). Background: `background/default` in every theme (white on Light, `color/base/main` on Dark, `color/brand/main` on Crimson). Every color in the footer is a theme token, so it follows the theme it sits in. Text on Crimson and Dark is `color/base/ultra-light`. Link hover: the standard underline (1px, at the font's own underline position, no offset), `text/accent` (`color/brand/main` on Light, `color/brand/extra-light` on Crimson and Dark). The university name links to the site's home page and has the same hover. Mobile stacks every section in one column. The footer switches to the Mobile layout when it is narrower than 880px. Borders are drawn inside, so they don't add height (Desktop 308px, Mobile 972px).

| Element | Desktop | Mobile |
| --- | --- | --- |
| Side padding | `spacing/80` left and right (80px) on each row inside the footer, not on the footer itself, so the borders stay full width. Same as the header, so their edges line up at every width; the content has no maximum width and stretches with the page | `spacing/20` left and right (20px) on each row, same as the header (below 768px) |
| Between sections | None | `spacing/24` gap (24px) |
| Resource links area | `spacing/32` top and bottom (32px); groups in a row, `spacing/64` gap (64px) | `spacing/40` top (32px); groups stacked, `spacing/40` gap (32px) |
| Contact group | `spacing/16` name to details (16px), `spacing/8` between lines (8px) | `spacing/8` gap plus `spacing/8` top padding on the details (16px total), `spacing/8` between lines (8px) |
| Link group | `spacing/20` title to links (20px), `spacing/8` between links (8px) | `spacing/16` title to links (16px), `spacing/12` between links (12px) |
| Group title (Title) | `heading/sm/strong` (16 / 20px, weight 700, width 110% `--rvt-font-width-semi-expanded`, `--rvt-font-axes-heading`), `text/strong` | Same |
| University name | Same as Group title, and a link to the site's home page; hover `text/accent` with the standard underline (1px, at the font's own underline position, no offset), 150ms; focus 2px `border/accent-strong` | Same |
| Links and contact text (Secondary) | `action/sm/regular` (14 / 20px, weight 350, width 110% `--rvt-font-width-semi-expanded`), `text/link-subtle`; links stay on one line | Same |
| Social row | 1px `border/default` on top; `spacing/16` top and bottom (16px); icons `spacing/8` gap (8px) | Inside the bottom bar, `spacing/8` top and bottom (8px); icons `spacing/12` gap (12px) |
| Social icon | `rvt-link` Social, Size Sm (24 × 24px), 1px `border/accent` drawn inside, 12px icon `icon/accent`; hover `border/accent-strong` and `icon/accent-strong`, 150ms; focus 2px `border/accent-strong` ring, 1px outside the border | Same |
| Bottom bar | No border and no top padding, `spacing/16` bottom (16px); trident 22 × 28px `icon/brand`, then legal links in a row, `spacing/24` gap (24px) | 1px `border/default` on top; `spacing/16` top and bottom (16px), `spacing/20` gap (20px); social and legal links stacked `spacing/8` apart (8px), trident below |
| Legal links (Tertiary) | `action/sm/regular` (14 / 20px), `spacing/16` gap (16px) | Stacked, `spacing/8` gap (8px) |
