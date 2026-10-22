# Header

> [!warning|dark] This may change
> The header is still being worked on as part of the navigation updates. Check back before you build or launch a new site.

## What it is
The header is the bar at the top of every page. It shows the IU logo with your site's name, the main links of your site and a search button, so people always know where they are and how to get around.

## When to use it
- Use it at the top of every page of a website or web app
- Use it to show the 5 to 8 most important sections of your site
- Use it to give people search from anywhere on the site

## When not to use it
- Don't use it inside a page or a card. It belongs only at the very top
- Don't put more than 8 links in the main navigation. Group the rest under dropdowns or in the footer

## Variants

### Type
- **Default:** Use it for websites, like a school, department or program site
- **App:** Use it for web applications people sign in to. It adds a button with the person's initials for their account

### Color
- **Light:** Use it on most sites. White background with crimson links
- **Crimson:** Use it when the site should feel bold and official, like a campus home page
- **Dark:** Not available yet. Don't use it

### Logo lockup
- **Campus:** "Indiana University" with the campus name below, like "Bloomington"
- **2-line:** "Indiana University" with your school or department name below it
- **3-line:** For longer names that need two lines below the trident
- **4-line:** For the longest names, like a vice president's office. The text gets a little smaller to fit

### Optional parts
- **School or department line:** Show it when your site belongs to a school or department
- **Main navigation:** Hide it only on very simple sites with one or two pages
- **Dropdown arrows:** Show them on links that open a menu of more pages
- **Search:** Keep it unless the site is too small to need it

On phones, the main navigation moves into a menu button next to search.

## Writing tips
- Write the site name the way people know it, like "Kelley School of Business"
- Keep navigation labels to one or two words, like "Admissions" or "Research"
- Put the most visited sections first
- Use the same labels as the page titles they lead to

---

## Developer spec checklist

Shared rules: Height 92px (Desktop and Mobile). Light uses `color/base/ultra-light` fill; Crimson uses `background/brand-strong`. Logo lockup is vertically centered; the logo sits left and the navigation and buttons sit right. On Mobile the navigation is replaced by a menu button.

### Header

| Element | Desktop | Mobile |
| --- | --- | --- |
| Top and bottom padding | `spacing/24` (24px) | Same |
| Logo to navigation | 16px gap, token TBD | — |
| Navigation links | `spacing/24` between links | Inside the menu |
| Navigation to buttons | `spacing/32` (32px) | — |
| Buttons | `spacing/8` between; search is `rvt-button` Icon, Normal, Medium (32px) | Search and menu buttons, `rvt-button` Normal, Medium (32 × 32px), `spacing/8` between |
| Account button (App) | `rvt-button` Form, Normal, Medium (32px) with the person's initials | Not shown |

### Navigation link

| State | Spec |
| --- | --- |
| Default | `action/sm/regular` (14 / 20px), `text/link-strong`, no underline |
| Hover | `action/sm/regular` (14 / 20px), `text/accent`, underline |
| Current page | `action/sm/strong` (14 / 20px, weight 600), `text/accent`, underline |
| Dropdown arrow | 16px `rvt-chevron-down`, `spacing/4` from the label, same color as the label (`icon/link-strong` or `icon/accent`) |

### Logo lockup

| Element | Spec |
| --- | --- |
| Trident mark | 37 × 44px, `background/brand-strong` shield with `icon/on-brand-fixed` trident. Inverse: `color/base/ultra-light` shield with `color/brand/main` trident |
| Mark to text | 6px gap, token TBD |
| Text column | 1px top padding (0 on Mobile 4-line); Campus lines 2px apart, other layouts 1px |
| Text color | `text/strong` titles, `text/default` campus name. Inverse: `color/base/ultra-light` |

### Lockup type settings

Roboto Flex is a variable font. Set these axes exactly; `wdth` is width (narrower below 100) and `opsz` is optical size. All lines use `font/tracking/none` (0).

| Layout | Line | Text style | Size / line height | Weight (`wght`) | Width (`wdth`) | Optical size (`opsz`) | Case |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Campus | "Indiana University" | `component/lockup/campus-title` | `type/size/16` / `type/line-height/16` (16 / 16px) | `font/weight/600` (600) | 25 | 16 | Uppercase |
| Campus | Campus name | `component/lockup/campus-name` | `type/size/14` / `type/line-height/14` (14 / 14px) | `font/weight/350` (350) | 25 | 20 | Uppercase |
| 2-line | "Indiana University" | `component/lockup/campus-title-2line` | `type/size/12` / `type/line-height/12` (12 / 12px) | `font/weight/600` (600) | 25 | 14 | Uppercase |
| 2-line | School or department | `component/lockup/title-2line` | `type/size/14` / `type/line-height/16` (14 / 16px) | `font/weight/700` (700) | 100 (90 on Mobile) | Auto (14 on Mobile) | As typed |
| 3-line | Name | `component/lockup/title-3line` | `type/size/14` / `type/line-height/16` (14 / 16px) | `font/weight/700` (700) | 90 | 14 | As typed |
| 4-line | Name | `component/lockup/title-4line` | `type/size/12` / `type/line-height/14` (12 / 14px) | `font/weight/700` (700) | 90 | 12 | As typed |
