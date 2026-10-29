# Text style and font details

## The type scale
Rivet uses one size scale for all text. The base is **18px body text** on desktop.

| Range | Sizes (px) | How the steps grow |
| --- | --- | --- |
| Small | 12, 14, 16 | 2px steps. Small text needs even, predictable steps |
| Reading | **18**, 20, 23, 26, 29 | About **1.125×** each step (a "major second"), rounded to whole pixels. Close steps keep long pages calm and even |
| Display | 36, 48, 54 | Bigger jumps, so display text stands clearly apart from headings |

> [!note] Odd numbers are on purpose
> Sizes like 23 and 29 come from the scale. Don't round them to 24 or 30. If you need a new size, take the next step on the scale rather than picking a round number.

## Line height
- Every line height sits on a **4px grid**, so text lines up with the spacing tokens
- **One line height per size.** 12px text is always 16, 14px is 20, 16px is 24, 18px is 28, whatever the style group. Tags, actions, body and small headings at the same size all line up
- **Body text** gets room to breathe: about 1.4–1.55× its size (18/28, 16/24, 14/20)
- **Headings** are tighter: about 1.2–1.25× (29/36, 20/24)
- **Display text** is tightest: about 1.05–1.1× (54/56, 48/52), so big lines read as one block
- **Single-line component text** (avatar initials, lockups, required marker) mostly uses a line height equal to its size, so it centers exactly in its container

## Mobile sizes
Sizes 16px and under never change. Larger text shrinks so it fits a narrow screen, and the line height drops with it, staying on the 4px grid.

| Group | What happens on mobile | Example (desktop → mobile) |
| --- | --- | --- |
| Body | Drops one step | 18 → 16, 20 → 18, 29 → 26 |
| Heading | Settles at 20–23px | 36 → 23, 26 → 23, 23 → 20 |
| Display and editorial | Shrinks the most; nothing is larger than 36px | 54 → 36, 48 → 29, 36 → 23 |
| Action, tag, small text | Stays the same | 16 → 16, 14 → 14 |

## Fonts
| Font | Used for | Why |
| --- | --- | --- |
| Roboto Flex | Display, headings, body, actions, links | One variable font for nearly everything, so weight and width can be tuned exactly |
| Roboto Mono | Tags | Even letter widths make short labels and metadata read as labels, not sentences |
| Crimson Pro | Editorial | A serif for storytelling moments, like quotes and feature intros |

### Weights and width
- **Weights** are exact numbers: 350 regular, 600 strong, 700 bold (headings and display), 825 extra-heavy (accents and big numbers)
- **Width 110%** on headings, body and actions makes letters slightly wider and more open, and gives Rivet its look. Display and links stay at 100%
- **Headings and display** also use taller ascenders and lowercase letters (`YTAS 720`, `YTLC 530`) so large text reads more clearly

## Style groups
| Group | Sizes | Rationale |
| --- | --- | --- |
| Display | 26–54 | For hero and marketing moments. Tight leading so big lines hold together. `caps` is a slanted, extra-heavy accent |
| Heading | 12–36 | Builds the page structure. Bold and slightly wide so headings stay distinct from body text at every size |
| Body | 12–29 | For reading. Regular, strong and italic share the same size and line height, so adding emphasis never shifts the layout |
| Action | 14–20 | For buttons and controls. Semibold signals "you can click this." `strong-fixed` has tighter leading for compact controls |
| Tag | 12–16 | Mono with added letter spacing (1px, 2px for caps) for badges, labels and metadata. Same line heights as body text at each size (12/16, 14/20, 16/24) |
| Editorial | 23–54 | Serif voice for storytelling: quotes, pull quotes and feature intros |
| Link | 14–18 | Same size and line height as body text, so inline links sit cleanly inside a paragraph |
| Component | Varies | One-off styles tied to a single component, like avatar initials, lockups, stat numbers and the required marker. They size to the component, not the scale |

## Using these in code
Each text style is one shorthand token: `--rvt-font-` plus the style name, with `/` turned into `-`. For example, `body/base/regular` becomes `--rvt-font-body-base-regular`. Every style, with its desktop and mobile values, is listed in the [token guide](#token-changes).
