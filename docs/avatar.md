# Avatar

## What it is
A small circle that shows who a person is. It holds their photo, their initials, or the IU trident when you have neither.

## When to use it
- Use it next to a person's name, for example on a faculty profile, a staff contact card or a news story byline
- Use it when a face or initials help people recognize someone quickly

## When not to use it
- Don't use it for departments, schools or programs. Use an image or the IU logo instead
- Don't use it as decoration or for photos of places and events. Use an image instead

## Variants

### Layout
- Image: Use when you have a clear, current photo of the person
- Initials: Use when there's no photo but you know the person's name
- No Image: Use when there's no photo and no name, for example a placeholder before a profile is filled in

### Size
- 32–48px: Use in tight spaces like lists, comments and bylines
- 64–96px: Use on contact and profile cards
- 128–224px: Use as the main image at the top of a profile page

## Writing tips
- Use a square, recent headshot with the face centered so the circle crop doesn't cut off the head
- Use up to two initials, first and last name (for example "JM")
- Describe the photo with the person's name, for example "Photo of Jenn Mansell"
- If the name is already right next to the avatar, the photo doesn't need its own description, so screen readers don't say the name twice
- Use the same size for every person in a list

---

## Developer spec checklist

### All sizes

| Element | Spec |
| --- | --- |
| Shape | Circle, `border-radius/full` |
| Background (all layouts) | `background/brand-container` |
| Image | Image fill, covers the full circle |
| Initials text color | `color/brand/main` |
| No Image trident | `color/brand/main`, height is half the avatar size |
| Content alignment | Centered vertically and horizontally |

### By size

| Size | Initials style | No Image trident |
| --- | --- | --- |
| 32px | `component/avatar/32` (14 / 14px) | 13 × 16px |
| 40px | `component/avatar/40` (16 / 16px) | 16 × 20px |
| 48px | `component/avatar/48` (20 / 20px) | 19 × 24px |
| 64px | `component/avatar/64` (28 / 28px) | 25 × 32px |
| 80px | `component/avatar/80` (36 / 36px) | 32 × 40px |
| 96px | `component/avatar/96` (48 / 48px) | 38 × 48px |
| 128px | `component/avatar/128` (56 / 56px) | 51 × 64px |
| 160px | `component/avatar/160` (72 / 72px) | 63 × 80px |
| 224px | `component/avatar/224` (108 / 108px) | 88 × 112px |
