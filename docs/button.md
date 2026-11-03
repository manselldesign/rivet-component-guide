# Button Component Guide

## Overview
Buttons allow users to take actions, make choices, and navigate through our websites, apps, and marketing pages with a single click. 

## Button Types: Action vs. Link
It is important to know the difference between triggering an action and navigating to a new page. To help users quickly understand what will happen when they click, we generally separate these by color: **black** for actions, and **crimson** for links.

### Action Buttons
In general, action buttons are styled **black**. They are used to make something happen on your current screen.
* **When to use:** Use an action button when the user is interacting with the page's data or interface without leaving the page.
* **Common actions:** Submitting a form, saving settings, downloading an image, or deleting an item.
* **Rule of thumb:** If clicking it triggers a process, changes data, or opens a popup, it is an action button.

### Link Buttons
In general, link buttons are styled **crimson**. They look like buttons, but they act like standard web links. 
* **When to use:** Use a link button when the user is navigating to a completely new page or a different part of the website.
* **Common actions:** "Read more," "Go to your dashboard," or "Return to home."
* **Rule of thumb:** If clicking it takes the user to a new destination or URL, it is a link button.

## Button Styles

* **Strong:** Used for the primary or highest-priority action on a screen. Use these sparingly (ideally one main strong button per section) so the user instantly knows the most important next step.
* **Normal:** Used for standard, secondary, or alternative actions. While frequently paired side-by-side with a strong button (like a "Cancel" button next to "Save"), they can also stand on their own when an action is routine but not the primary focus of the page.
* **Subtle:** Used for low-priority or passive actions that shouldn't distract the user or compete for visual attention.
  * *Example:* A "Close" button on a dropdown menu, or an "Undo" action link.

## Icons on Buttons
An icon is a small picture inside the button, like a magnifying glass or a trash can. Icons are optional. Most buttons only need words.

### Left icon
* **What it is:** A small picture placed before the words, like a magnifying glass before "Search."
* **Why use it:** It helps people recognize the button at a glance, before they even read it.
* **When to use:** Only for common actions people already know by sight, like Search, Delete, Edit, or Favorite.
* **Rule:** Use one icon at most. Never put an icon on both sides.

### Right icon
* **What it is:** A small downward-pointing arrow (a "chevron") placed after the words.
* **Why use it:** It tells people that clicking will open more choices, like a menu.
* **When to use:** Only when the button opens a menu or a list of options.
* **Rule:** Don't use other arrows here. Straight arrows (→) are saved for link buttons only.

### Icon only
* **What it is:** A square button with just a picture and no words, like an "X" to close something.
* **When to use:** Only for very small, very familiar actions, like Close or Add, and only when space is tight.
* **When not to use:** If there's any chance someone won't know what the picture means, add words instead.
* **Link buttons can be icon only too:** Just the arrow in a square, in the crimson link colors. Use it in tight spots, like a table row or the bottom of a card.
* **Rule:** Every icon-only button needs a hidden text label so people using screen readers know what it does (for example, "Close").

## Button Sizes: Which size to use?
Consistency is key to a good user experience across all of our digital products. **Large (L)** is our default size for most everyday scenarios, but sizes should adapt based on how dense or spacious the layout is.

An application section might use every button size:

| On this page | You show | Use |
| :--- | :--- | :--- |
| Landing / Splash page | Main "Log In" or "Get Started" call to action | Extra Large |
| Questionnaire / Form | "Submit application" or "Save & continue" actions | Large |
| Search results page | "Apply filters" button in the filter sidebar | Medium |
| Analytics dashboard | Quick "Export" or "Delete row" table actions | Small |

### Size Reference Summary
* **Extra Large (XL):** Reserved for spacious layouts, marketing websites, splash screens, and hero banners.
* **Large (L) - *Default*:** Our standard default size across all forms, questionnaires, and primary page content.
* **Medium (M):** Ideal for secondary navigation, filter sidebars, or compact headers where space is somewhat constrained.
* **Small (S):** Best for dense data displays, table row actions, or complex analytics dashboards where screen real estate is limited.

## Writing Tips
* **Start with an action word:** Begin with what the person will do, like "Apply now" or "Download the guide."
* **Keep it short:** Use one to four words.
* **Be specific:** Say exactly what will happen. "Download the guide" is clear; "Click here" and "Learn more" are not.
* **Match the next step:** If the button says "Save," the click should save. Don't surprise people.

---

## Developer spec checklist

Buttons inside app components (Alert buttons, Dialog, File input, Empty state) are always Large (`component/button/height-lg`, 40px), never Extra-large.

Buttons keep the same height on Desktop and Mobile: every size uses its own fixed `component/button/height-*` token, so nothing shrinks on phones.

Button groups: Desktop places buttons side by side with the Strong button last (right), `spacing/16` gap. Mobile stacks them with the Strong button first (top), `spacing/8` gap; each button hugs its label. Exception: Dialog buttons stack full width.

Marketing components (heroes, billboards): Strong button first on Desktop and Mobile.

Focus (all types and styles): 2px `border/accent-strong` ring, 2px outside the button's box, square corners. Subtle buttons keep the same box as Normal buttons (same height and padding, border transparent), so the ring has the same breathing room on every style.

### Size (Action, Link, Icon only)

| Element | Extra-large | Large | Medium | Small |
| --- | --- | --- | --- | --- |
| Height | `component/button/height-xl` (48px) | `component/button/height-lg` (40px) | `component/button/height-md` (32px) | `component/button/height-sm` (24px) |
| Padding left/right (Strong, Normal) | `spacing/16` | `spacing/16` | `spacing/12` | `spacing/8` |
| Padding (Subtle) | Same as Normal: the box is identical, the border is just invisible | same | same | same |
| Icon-to-text gap | `spacing/8` | `spacing/8` | `spacing/8` | `spacing/4` |
| Label | `action/lg/strong` (16 / 24px) | `action/lg/strong` (16 / 24px) | `action/sm/strong` (14 / 20px) | `action/sm/strong` (14 / 20px) |
| Action icon, left or right | 16px | 16px | 12px | 12px |
| Link arrow icon | 16px, after label | 16px, after label | 12px, after label (`rvt-arrow-*-12`) | 12px, after label (`rvt-arrow-*-12`) |
| Icon only (square) | `component/button/height-xl` (48 × 48px) | `component/button/height-lg` (40 × 40px) | `component/button/height-md` (32 × 32px) | `component/button/height-sm` (24 × 24px) |
| Icon only, icon size | 16px, centered | 16px, centered | 16px, centered | 12px, centered |
| Link, icon only | Same square sizes and icon sizes as Icon only; arrow by link type; Link colors and states (no Pressed) |  |  |  |
| Corner radius | 0 | 0 | 0 | 0 |

### Color by style (Action and Icon only)

| Element | Strong | Normal | Subtle |
| --- | --- | --- | --- |
| Background | `component/button/form-background` | none | none |
| Background, hover | `component/button/form-background-hover` | none | none |
| Background, pressed | `component/button/form-background-hover` | `background/strong` | `background/strong` |
| Border | none | `component/button/form-border` (1px inside) | none |
| Border, hover | none | `component/button/form-border-hover` | none |
| Text and icon | `text/on-brand-alt` | `component/button/form-text` | `component/button/form-text-subtle` |
| Text and icon, hover | `text/on-brand-alt` | `component/button/form-text-hover` | `component/button/form-text-hover` |
| Pressed ring | 2px `border/on-brand-alt` outer, 2px `component/button/form-border-hover` inner | same | same |
| Disabled | Default colors at 40% opacity | same | same |

### Color by style (Link)

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
| Arrow by link type | In-page `rvt-arrow-down`, Internal `rvt-arrow-right`, External `rvt-arrow-up-right` | same | same |
| Disabled | Internal arrow, default colors at 40% opacity | same | same |
| Pressed | No pressed state | same | same |

### Social

Social buttons use the Normal Link button's colors and states. There is no Pressed state.

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
