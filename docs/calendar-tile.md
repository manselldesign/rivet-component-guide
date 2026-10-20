# Calendar tile

## What it is
A small square that shows a date at a glance, with the month, day and year stacked. It helps readers spot when something happens before they read the details.

## When to use it
- Use it next to an event in a list, like a lecture series or campus events page
- Use it to show a key date, like an application deadline or the start of a term
- Use it on news or announcement cards when the date matters, like a closing date

## When not to use it
- Don't use it for date ranges that span several days. Write the range in text instead
- Don't use it for times. Put the time in the event details
- Don't use it just to show when a page was published. Use plain text for that

## Variants

### Parts
- **Month:** Short month name, like "JUN". Always shown in capital letters
- **Day:** The day of the month, in large type. Always shown
- **Year:** Show it when the date isn't in the current year or could be unclear. Hide it in a list of upcoming events

## Writing tips
- Use the three-letter month abbreviation: JAN, FEB, MAR
- Don't add leading zeros to the day. Write 5, not 05
- Keep the full date in the nearby text too, like "June 21, 2025", so screen readers and search pick it up

---

## Developer spec checklist

### Default

| Element | Spec |
| --- | --- |
| Tile size | 128 × 128px, fixed |
| Tile padding | `spacing/16` all sides |
| Background | `color/brand/extra-light` (#FAF6EF), no theme change |
| Corner radius | 0 |
| Content alignment | Centered, stacked vertically |
| Gap between month, day and year | `spacing/12` |
| Month | `tag/lg/caps` (16 / 16px), Roboto Mono, uppercase, `font/tracking/lg` (2px), `color/brand/main` |
| Day | `component/number/strong` (42 / 44px), Roboto Flex, `font/weight/825`, `color/brand/main` |
| Year | `tag/lg/caps` (16 / 16px), Roboto Mono, `font/tracking/lg` (2px), `color/brand/main` |
| Optional parts | Month and Year can each be hidden. Day is always shown |
