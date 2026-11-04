# Button

## Overview
Buttons let people take an action on the page they are already on, with a single click. Submitting a form, saving settings, opening a menu, or deleting an item are all jobs for a Button.

Buttons are styled **black**. That color is a signal: it tells people the click will do something right here, not take them somewhere else.

There is a second component, Button-link, for taking people to another page.

## Button or Button-link?
Ask one question: **What happens when someone clicks it?** The color is the signal. People learn that black means "do something" and crimson means "go somewhere," so keep that rule across every page.

| What happens when someone clicks it | Examples | Use |
| :--- | :--- | :--- |
| The click submits a form | "Submit application," "Save & continue" | Button (black) |
| The click changes something on the screen | "Apply filters," "Delete row," "Add to calendar" | Button (black) |
| The click opens something on the same page | A dialog, a dropdown menu, a file picker | Button (black) |
| The click starts a process | "Export," "Download image" | Button (black) |
| The person goes somewhere: another page, another website, or a different spot on this page | "Apply now," "See deadlines," "Visit the Bursar" | Button-link (crimson) |

> [!default] On Dark and Crimson themes
> Black vs. crimson only applies on light pages. On Dark and Crimson themes, Buttons and Button-links both switch to the theme's colors and can look alike, so the color stops being the signal. There, the words do the work: start with a verb that says what happens ("Save," "Apply filters"), and remember that only Button-links end in a straight arrow.

## Button Styles

* **Strong:** Used for the primary or highest-priority action on a screen. Use these sparingly (ideally one main strong button per section) so the user instantly knows the most important next step.
* **Normal:** Used for standard, secondary, or alternative actions. While frequently paired side-by-side with a strong button (like a "Cancel" button next to "Save"), they can also stand on their own when an action is routine but not the primary focus of the page.
* **Subtle:** Used for low-priority or passive actions that shouldn't distract the user or compete for visual attention.
  * *Example:* A "Close" button on a dropdown menu, or an "Undo" action link.

## Icons on Buttons
An icon is a small picture inside the button, like a magnifying glass or a trash can. Icons are optional. Most buttons only need words.

### Leading icon
* **What it is:** A small picture placed before the words, like a magnifying glass before "Search."
* **Why use it:** It helps people recognize the button at a glance, before they even read it.
* **When to use:** Only for common actions people already know by sight, like Search, Delete, Edit, or Favorite.
* **Rule:** Use one icon at most. Never put an icon on both sides.

### Trailing icon
* **What it is:** A small downward-pointing arrow (a "chevron") placed after the words.
* **Why use it:** It tells people that clicking will open more choices, like a menu.
* **When to use:** Only when the button opens a menu or a list of options.
* **Rule:** Don't use other arrows here. Straight arrows ({{icon:arrow-right}}) belong to Button-links only.

### Icon only
* **What it is:** A square button with just a picture and no words, like an "X" to close something.
* **When to use:** Only for very small, very familiar actions, like Close or Add, and only when space is tight.
* **When not to use:** If there's any chance someone won't know what the picture means, add words instead.
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
* **Start with an action word:** Begin with what the person will do, like "Save changes" or "Apply filters."
* **Keep it short:** Use one to four words.
* **Be specific:** Say exactly what will happen. "Delete row" is clear; "Click here" and "OK" are not.
* **Match the next step:** If the button says "Save," the click should save. Don't surprise people.

---

## Developer spec checklist

Buttons inside app components (Alert buttons, Dialog, File input, Empty state) are always Large (`component/button/height-lg`, 40px), never Extra-large.

Buttons keep the same height on Desktop and Mobile: every size uses its own fixed `component/button/height-*` token, so nothing shrinks on phones.

Button groups: Desktop places buttons side by side with the Strong button last (right), `spacing/16` gap. Mobile stacks them with the Strong button first (top), `spacing/8` gap; each button hugs its label. Exception: Dialog buttons stack full width.

Focus (all styles): 2px `border/accent-strong` ring, 2px outside the button's box, square corners. Subtle buttons keep the same box as Normal buttons (same height and padding, border transparent), so the ring has the same breathing room on every style.

Links styled as buttons are a separate component, `rvt-button-link`. See the Button-link page.

### Size (Default and Icon only)

| Element | Extra-large | Large | Medium | Small |
| --- | --- | --- | --- | --- |
| Height | `component/button/height-xl` (48px) | `component/button/height-lg` (40px) | `component/button/height-md` (32px) | `component/button/height-sm` (24px) |
| Padding left/right (Strong, Normal) | `spacing/16` | `spacing/16` | `spacing/12` | `spacing/8` |
| Padding (Subtle) | Same as Normal: the box is identical, the border is just invisible | same | same | same |
| Icon-to-text gap | `spacing/8` | `spacing/8` | `spacing/8` | `spacing/4` |
| Label | `action/lg/strong` (16 / 24px) | `action/lg/strong` (16 / 24px) | `action/sm/strong` (14 / 20px) | `action/sm/strong` (14 / 20px) |
| Leading or trailing icon | 16px | 16px | 12px | 12px |
| Icon only (square) | `component/button/height-xl` (48 × 48px) | `component/button/height-lg` (40 × 40px) | `component/button/height-md` (32 × 32px) | `component/button/height-sm` (24 × 24px) |
| Icon only, icon size | 16px, centered | 16px, centered | 16px, centered | 12px, centered |
| Corner radius | 0 | 0 | 0 | 0 |

### Color by style

| Element | Strong | Normal | Subtle |
| --- | --- | --- | --- |
| Background | `component/button/form-background` | none | none |
| Background, hover | `component/button/form-background-hover` | none | none |
| Background, active (pressed) | `component/button/form-background-hover` | `background/strong` | `background/strong` |
| Border | none | `component/button/form-border` (1px inside) | none |
| Border, hover | none | `component/button/form-border-hover` | none |
| Text and icon | `text/on-brand-alt` | `component/button/form-text` | `component/button/form-text-subtle` |
| Text and icon, hover | `text/on-brand-alt` | `component/button/form-text-hover` | `component/button/form-text-hover` |
| Active (pressed) ring | 2px `border/on-brand-alt` outer, 2px `component/button/form-border-hover` inner | same | same |
| Disabled | Default colors at 40% opacity | same | same |
