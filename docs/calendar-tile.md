# Calendar tile

## What it is
A small square that shows a date at a glance, with the month, day and year stacked. It helps readers spot when something happens before they read the details.

- Event lists on a department or calendar page
- Key dates, like the start of a term
- Application or registration deadlines
- News cards where the date matters

## When to use it
- Use it next to an event in a list, like a lecture series or campus events page
- Use it to show a key date, like an application deadline or the start of a term
- Use it on news or announcement cards when the date matters, like a closing date

## When not to use it
- Don't use it for date ranges that span several days. Write the range in text instead
- Don't use it for times. Put the time in the event details
- Don't use it just to show when a page was published. Use plain text for that

## Types

### Parts
- **Month:** Short month name, like "JUN", in capital letters. Always shown
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
| Background | `component/calendar-tile/background` (`color/brand/extra-light`, #FAF6EF), the same in every theme |
| Corner radius | 0 |
| Content alignment | Centered, stacked vertically |
| Gap between month, day and year | `spacing/12` |
| Month | `tag/lg/caps` (16 / 24px, weight 350, Roboto Mono, `font/tracking/xl` 2px), uppercase, `component/calendar-tile/text` (`color/brand/main`) |
| Day | `component/number/strong` (42 / 44px, weight 825, width 150%, Roboto Flex, no tracking), trimmed to cap height, `component/calendar-tile/text` (`color/brand/main`) |
| Year | `tag/lg/caps` (16 / 24px, weight 350, Roboto Mono, `font/tracking/xl` 2px), `component/calendar-tile/text` (`color/brand/main`) |
| Optional parts | Year can be hidden. Month and Day are always shown |
