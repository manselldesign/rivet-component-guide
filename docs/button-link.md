# Button-link

## Overview
A Button-link looks like a button but works like a web link: clicking it takes people to a different page, a different part of the website, or another site. "Read more," "Go to your dashboard," and "Apply now" are all jobs for a Button-link.

Button-links are styled **crimson**. That color is a signal: it tells people the click will take them somewhere else, not change anything on this page. Button-links with words also end in an arrow that shows what kind of trip it is.

There is a second component, Button, for doing something on the current page.

## Button-link or Button?
Ask one question: **What happens when someone clicks it?**

- **The person is taken somewhere else.** Use a Button-link. Button-links are styled **crimson**.
- **Something happens right here, on this page.** Use a Button. Buttons are styled **black**.

The color is the signal. People learn that crimson means "go somewhere" and black means "do something," so keep that rule across every page.

### Use a Button-link when
- The click opens another page on your site, like "Apply now" going to the application page
- The click jumps to a different spot on the same page, like "See deadlines" scrolling down to the deadlines section
- The click opens a different website, like "Visit the Bursar" going to another IU site
- You want a key next step to stand out more than a plain text link would

### Do not use a Button-link when
- The click submits, saves, deletes, filters, or opens a menu or popup. Use a Button
- The link sits inside a sentence. Use a regular text link
- You have more than two next steps in a row. Use a list of links instead

**Rule of thumb:** If clicking it takes the user to a new destination or URL, it is a Button-link. If it triggers a process, changes data, or opens a popup, it is a Button.

## Link Types
A Button-link with words ends in an arrow. The arrow is not decoration. It tells people what kind of trip they are about to take, so use the right one.

* **Internal ({{icon:arrow-right}}):** The click opens another page on your own site. This is the most common type. *Example:* "Apply now," "View all events."
* **In-page ({{icon:arrow-down}}):** The click scrolls down to a section further along on the same page. *Example:* "See the schedule," "Jump to FAQs."
* **External ({{icon:arrow-up-right}}):** The click opens a different website, which may open in a new tab. *Example:* "Register on Eventbrite," "Read the IU Today story."

## Button-link Styles

* **Strong:** Used for the primary or highest-priority destination on a screen. Use these sparingly (ideally one main strong button per section) so the user instantly knows the most important next step.
* **Normal:** Used for standard, secondary, or alternative destinations. Often paired next to a strong button (like "View all programs" next to "Apply now"), but they can also stand on their own.
* **Subtle:** Used for low-priority destinations that shouldn't distract the user or compete for visual attention.
  * *Example:* A "Back to all news" link at the end of a story.

## Icon only
* **What it is:** A square button with just an icon and no words, in the crimson link colors. Usually it's the arrow, but it can be another icon that says where the click goes, like a download icon for a PDF.
* **When to use:** Only in tight spots where the destination is already obvious from the words next to it, like the end of a table row or the bottom of a card.
* **When not to use:** If the icon on its own doesn't make the destination clear, use words.
* **Rule:** Every icon-only button needs a hidden text label so people using screen readers know where it goes (for example, "View program details").

## Social
* **What it is:** A small outlined square with a social media logo inside, like Facebook or Instagram.
* **When to use:** Only to link to IU's official accounts, usually in a footer or a contact card.
* **Available logos:** Email, Facebook, Instagram, LinkedIn, X, YouTube, Bluesky, and a generic link icon for anything else.
* **Rule:** Every social button needs a hidden text label naming the platform (for example, "IU on Instagram").

## Button-link Sizes: Which size to use?
Consistency is key to a good user experience across all of our digital products. **Large (L)** is our default size for most everyday scenarios, but sizes should adapt based on how dense or spacious the layout is.

A program section might use every size:

| On this page | You show | Use |
| :--- | :--- | :--- |
| Hero / Splash page | Main "Apply now" or "Request info" call to action | Extra Large |
| Program page | "View degree requirements" or "Meet the faculty" | Large |
| Search results page | "View program" on each result | Medium |
| Course table | "Details" link in each table row | Small |

### Size Reference Summary
* **Extra Large (XL):** Reserved for spacious layouts, marketing websites, splash screens, and hero banners.
* **Large (L) - *Default*:** Our standard default size across all primary page content.
* **Medium (M):** Ideal for secondary navigation, sidebars, or compact headers where space is somewhat constrained.
* **Small (S):** Best for dense data displays, table rows, or anywhere screen real estate is limited.

## Writing Tips
* **Name the destination:** Say where people will land, like "View all events" or "Go to your dashboard."
* **Keep it short:** Use one to four words.
* **Be specific:** "Download the guide" is clear; "Click here" and "Learn more" are not.
* **Match the arrow:** If the link leaves the site, use the External arrow and the words should make that clear.

---

## Developer spec checklist

Button-links keep the same height on Desktop and Mobile: every size uses its own fixed `component/button/height-*` token, so nothing shrinks on phones.

Button-link groups: Desktop places buttons side by side with the Strong button last (right), `spacing/16` gap. Mobile stacks them with the Strong button first (top), `spacing/8` gap; each button hugs its label.

Marketing components (heroes, billboards): Strong button first on Desktop and Mobile.

Focus (all styles): 2px `border/accent-strong` ring, 2px outside the button's box, square corners. Subtle buttons keep the same box as Normal buttons (same height and padding, border transparent), so the ring has the same breathing room on every style.

There is no Pressed state on any Button-link.

Buttons that act on the current page are a separate component, `rvt-button`. See the Button page.

### Size (Default and Icon only)

| Element | Extra-large | Large | Medium | Small |
| --- | --- | --- | --- | --- |
| Height | `component/button/height-xl` (48px) | `component/button/height-lg` (40px) | `component/button/height-md` (32px) | `component/button/height-sm` (24px) |
| Padding left/right (Strong, Normal) | `spacing/16` | `spacing/16` | `spacing/12` | `spacing/8` |
| Padding (Subtle) | Same as Normal: the box is identical, the border is just invisible | same | same | same |
| Label-to-arrow gap | `spacing/8` | `spacing/8` | `spacing/8` | `spacing/4` |
| Label | `action/lg/strong` (16 / 24px) | `action/lg/strong` (16 / 24px) | `action/sm/strong` (14 / 20px) | `action/sm/strong` (14 / 20px) |
| Arrow icon | 16px, after label | 16px, after label | 12px, after label (`rvt-arrow-*-12`) | 12px, after label (`rvt-arrow-*-12`) |
| Icon only (square) | `component/button/height-xl` (48 × 48px) | `component/button/height-lg` (40 × 40px) | `component/button/height-md` (32 × 32px) | `component/button/height-sm` (24 × 24px) |
| Icon only, icon size | 16px, centered | 16px, centered | 16px, centered | 12px, centered |
| Corner radius | 0 | 0 | 0 | 0 |

### Color by style

| Element | Strong | Normal | Subtle |
| --- | --- | --- | --- |
| Background | `background/brand` | none | none |
| Background, hover | `background/accent` | none | none |
| Border | none | `border/accent` (1px inside) | none (transparent 1px border in code so the box matches Normal) |
| Border, hover | none | `border/accent-strong` | none |
| Text | `text/on-brand-alt` | `text/accent` | `text/accent` |
| Text, hover | `text/on-brand-alt` | `text/brand-strong` | `text/brand-strong` |
| Arrow icon | `icon/on-brand-alt` | `icon/accent` | `icon/accent` |
| Arrow icon, hover | `icon/on-brand-alt` | `icon/accent-strong` | `icon/accent-strong` |
| Arrow by link type | Internal `rvt-arrow-right`, In-page `rvt-arrow-down`, External `rvt-arrow-up-right` | same | same |
| Disabled | Internal arrow, default colors at 40% opacity | same | same |

### Social

Social buttons use the Normal style's colors and states.

| Element | Spec |
| --- | --- |
| Size | 24 × 24px square, 0 padding |
| Corner radius | 0 |
| Background | none (all states) |
| Border | `border/accent` (1px inside) |
| Border, hover | `border/accent-strong` |
| Icon | 12px platform icon, centered, `icon/accent` |
| Icon, hover | `icon/accent-strong` |
| Focus | Same focus ring as every button: 2px `border/accent-strong`, 2px outside the box, square corners |
| States | Default, Hover, Focus |
| Platforms | Email, Facebook, Instagram, LinkedIn, X, YouTube, Bluesky, Link |
