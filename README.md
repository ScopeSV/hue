# hue

Splash some color on your terminal. 
Written in Zig 0.16

## Features

### Coloring
- Full Material Design color palette (19 color families, 14 shades each)
- True color (24-bit RGB) output
- Two APIs: allocating and writer-based
- Type-safe color selection via enum with autocomplete
- Zero runtime overhead — all color codes are comptime constants

### Styles
Format your text with ANSI styles
* bold
* italic
* dim
* underline
* strike
* reverse
* blink
* hidden
* overline


## Usage

## Colors

### Allocating API

Returns a colored string. You own the memory.

```zig
const hue = @import("hue");

const msg = try hue.alloc.paint(allocator, .red700, "Error: something went wrong");
std.debug.print("{s}\n", .{msg});
```

### Writer API

Writes directly to any `std.Io.Writer`. No allocation needed.

```zig
const hue = @import("hue");

try hue.writer.paint(stdout, .green, "All tests passed!");
```

## Available Colors

Every color comes with shades from 50 (lightest) to 900 (darkest), plus accent variants (A100, A200, A400, A700). Use the base name (e.g. `.red`) for the default 500 shade.

| Color | Variants |
|-------|----------|
| red | red, red50–red900, redA100–redA700 |
| pink | pink, pink50–pink900, pinkA100–pinkA700 |
| purple | purple, purple50–purple900, purpleA100–purpleA700 |
| deepPurple | deepPurple, deepPurple50–deepPurple900, deepPurpleA100–deepPurpleA700 |
| indigo | indigo, indigo50–indigo900, indigoA100–indigoA700 |
| blue | blue, blue50–blue900, blueA100–blueA700 |
| lightBlue | lightBlue, lightBlue50–lightBlue900, lightBlueA100–lightBlueA700 |
| cyan | cyan, cyan50–cyan900, cyanA100–cyanA700 |
| teal | teal, teal50–teal900, tealA100–tealA700 |
| green | green, green50–green900, greenA100–greenA700 |
| lightGreen | lightGreen, lightGreen50–lightGreen900, lightGreenA100–lightGreenA700 |
| lime | lime, lime50–lime900, limeA100–limeA700 |
| yellow | yellow, yellow50–yellow900, yellowA100–yellowA700 |
| amber | amber, amber50–amber900, amberA100–amberA700 |
| orange | orange, orange50–orange900, orangeA100–orangeA700 |
| deepOrange | deepOrange, deepOrange50–deepOrange900, deepOrangeA100–deepOrangeA700 |
| brown | brown, brown50–brown900, brownA100–brownA700 |
| grey | grey, grey50–grey900, greyA100–greyA700 |
| blueGrey | blueGrey, blueGrey50–blueGrey900, blueGreyA100–blueGreyA700 |

## Styles

```zig
const hue = @import("hue");
const Style = hue.format.Style;

// Basic wrap:
try stdout.writeAll(Style.bold.on());
try stdout.writeAll("important");
try stdout.writeAll(Style.bold.off());

// Comptime concat (zero runtime cost — bakes into one literal):
try stdout.writeAll(comptime Style.dim.on() ++ "[hint]" ++ Style.dim.off());

// Combining with colors:
try stdout.writeAll(Style.bold.on());
try hue.writer.paint(stdout, .red700, "FAIL");
try stdout.writeAll(Style.bold.off());

// Reset everything (color + style at once):
try stdout.writeAll(comptime Style.underline.on() ++ hue.colors.Color.blue.code() ++ "link");
try stdout.writeAll(hue.format.reset);
```

## Available Styles

| Style | Effect |
|-------|--------|
| bold | thicker weight |
| italic | slanted |
| dim | reduced intensity |
| underline | line below |
| strike | line through |
| reverse | swap foreground/background |
| blink | slow blink (often disabled by terminal/user) |
| hidden | invisible (passwords, spoilers) |
| overline | line above (spotty terminal support) |

## Installation

Add hue as a dependency in your `build.zig.zon`:

```zig
.dependencies = .{
    .hue = .{
        .url = "https://codeberg.org/ScopeSV/hue/archive/v0.1.0.tar.gz",
        .hash = "...",
    },
},
```

Then in your `build.zig`, add the import to your module:

```zig
const hue = b.dependency("hue", .{});
exe.root_module.addImport("hue", hue.module("hue"));
```

## Requirements

Your terminal must support true color (24-bit). Most modern terminals do (Ghostty, Kitty, Alacritty, WezTerm, iTerm2).

## License

[MIT](LICENSE)
