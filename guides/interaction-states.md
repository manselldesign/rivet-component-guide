## What this covers

How every interactive Rivet component responds when someone points at it, tabs to it, presses it or selects it. Use these rules when you build a component that isn't documented yet, and to check the ones that are.

## Focus

- **Every interactive element shows a focus ring** when a reader reaches it with the keyboard. Never remove it or hide it with `outline: none`
- **One ring everywhere:** a 2px solid outline in `--rvt-border-accent-strong`, 2px outside the element (`outline-offset: 2px`). The global `:focus-visible` rule already does this, so components don't need their own focus styles
- **Checkboxes and radios** ring the control itself, not the label. The radio ring is round
- **Cards** ring the whole card while anything inside it has focus (`:focus-within`)

| Theme | Ring color |
| --- | --- |
| Light | `--rvt-color-brand-dark` (`#6d0808`) |
| Dark | `--rvt-color-brand-light` (`#ebd8bc`) |
| Crimson | `--rvt-color-brand-light` (`#ebd8bc`) |

## Hover

There are two kinds of hover. Use the one that matches what the element is.

- **Fill (rows, tiles and buttons):** the background turns one step darker than the surface it sits on, using `--rvt-background-strong`. This applies to tabs, subnav links, pagination items, accordion headers, series nav links and table rows
- **Underline (text links and menus):** the text underlines and keeps its background. This applies to dropdown items, sidenav items (tree and drilldown), breadcrumbs, footer links, list hub titles, card titles and header navigation
- **Buttons** follow their own hover colors in the Button spec

Underlines are the more accessible choice for menus and navigation lists, because the cue doesn't depend on seeing a slight color change.

## Selected and current page

- **Tabs and pagination:** the selected item is filled with `--rvt-background-brand` and uses inverse text, so it never looks like a hovered item
- **Subnav:** a 4px `--rvt-border-accent` line under the selected link, with `--rvt-text-accent` text
- **Dropdown, sidenav and header navigation:** the current page uses `--rvt-text-accent` text. In dropdowns and the header it's also underlined

## Disabled

Disabled controls keep their layout but fade back. They don't respond to hover and can't be focused. Prefer explaining why an action isn't available over disabling it.

## Where the current build differs

These are the places the build doesn't match the design yet. The design is the reference.

| Component | Design | Build today | Change |
| --- | --- | --- | --- |
| Pagination, accordion, series nav | Hover fill `--rvt-background-strong` | `--rvt-color-theme-background-light` | Switch the hover fill to `--rvt-background-strong` |
| Dropdown items | Hover underlines the text, no fill | Adds a `background-strong` fill | Remove the fill, add `text-decoration: underline` |
| Sidenav tree items | Hover underlines the text, no fill | Adds a `background-strong` fill | Remove the fill, add `text-decoration: underline` |
| Small Normal button | Same look as the regular Normal button, just smaller | Theme-ui border with accent text | Match the regular Normal button |
| Switch | Square track and knob | Rounded pill | Set `border-radius: 0` |

Pagination's current page stays crimson, which matches the build.
