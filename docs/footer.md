# Footer

## What it is
The footer is the band at the bottom of every page with the university's contact details, key links, social media links and required legal links. It helps people find what they need when they reach the end of a page.

## When to use it
- Use it on every page of an IU site
- Use the same footer, with the same links, across the whole site

## When not to use it
- Don't use it for page-specific calls to action, like "Apply now". Put a button or callout near the content instead
- Don't use it as the main navigation. Keep the main links in the header
- Don't list every page of the site. Link to a site map page instead

## Variants

### Color
- **Light:** Use it on most sites
- **Crimson:** Use it for a stronger brand look, like an admissions or campaign site
- **Dark:** Use it when the site's header or design is dark

### Device
- **Desktop:** Link groups sit side by side in columns
- **Mobile:** Link groups stack in one column

### Footer items
- **Title:** The heading for a group of links, like "Students". It isn't a link, so it has no hover state
- **Secondary:** A link inside a group, or the address and phone number under the university name
- **Tertiary:** The small legal links in the bottom bar, like Accessibility and Privacy Notice

In Figma these are `_rvt-footer-resource-item`, Type Title, Secondary and Tertiary.

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

Shared rules: Full width. 1px `border/brand` top border on the footer and on the bottom bar. Background: Light `color/base/ultra-light`, Crimson `background/brand-strong`, Dark `color/base/main`. Text on Crimson and Dark is `color/base/ultra-light`. Link hover: underline, `color/brand/main` on Light, `color/brand/extra-light` on Crimson and Dark. Mobile stacks every section in one column.

| Element | Desktop | Mobile |
| --- | --- | --- |
| Side padding | `spacing/80` left and right (80px) | `spacing/24` left and right (24px) |
| Between sections | None | `spacing/24` gap (24px) |
| Resource links area | `spacing/40` top and bottom (40px); groups in a row, `spacing/64` gap (64px) | `spacing/40` top (32px); groups stacked, `spacing/40` gap (32px) |
| Contact group | `spacing/16` name to details (16px), `spacing/8` between lines (8px) | `spacing/8` gap plus `spacing/8` top padding on the details (16px total), `spacing/8` between lines (8px) |
| Link group | `spacing/20` title to links (20px), `spacing/8` between links (8px) | `spacing/16` title to links (16px), `spacing/12` between links (12px) |
| Group title (Title) | `heading/sm/strong` (16 / 20px), `color/base/main` on Light | Same |
| Links and contact text (Secondary) | `action/sm/regular` (14 / 20px), `color/base/body` on Light | Same |
| Social row | `spacing/16` top and bottom (16px); icons `spacing/8` gap (8px) | Inside the bottom bar, `spacing/8` top and bottom (8px); icons `spacing/12` gap (12px) |
| Social icon | `rvt-button` Type Icon, Size Icon (24 × 24px), 1px `border/default` | Same |
| Bottom bar | `spacing/16` top and bottom (16px); trident 22 × 28px `color/brand/main`, then legal links in a row, `spacing/24` gap (24px) | `spacing/24` top and bottom (24px), `spacing/20` gap (20px); social and legal links stacked `spacing/8` apart (8px), trident below |
| Legal links (Tertiary) | `action/sm/regular` (14 / 20px), `spacing/16` gap (16px) | Stacked, `spacing/8` gap (8px) |
