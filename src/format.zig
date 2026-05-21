pub const Style = enum {
    bold,
    italic,
    dim,
    underline,
    strike,
    reverse,
    blink,
    hidden,
    overline,

    pub fn on(self: Style) []const u8 {
        return switch (self) {
            .bold => "\x1b[1m",
            .italic => "\x1b[3m",
            .dim => "\x1b[2m",
            .underline => "\x1b[4m",
            .strike => "\x1b[9m",
            .reverse => "\x1b[7m",
            .blink => "\x1b[5m",
            .hidden => "\x1b[8m",
            .overline => "\x1b[53m",
        };
    }
    pub fn off(self: Style) []const u8 {
        return switch (self) {
            .bold => "\x1b[22m",
            .italic => "\x1b[23m",
            .dim => "\x1b[22m",
            .underline => "\x1b[24m",
            .strike => "\x1b[29m",
            .reverse => "\x1b[27m",
            .blink => "\x1b[25m",
            .hidden => "\x1b[28m",
            .overline => "\x1b[55m",
        };
    }
};

pub const reset = "\x1b[0m";

const std = @import("std");

test "Style.on returns correct escape codes" {
    try std.testing.expectEqualStrings("\x1b[1m", Style.bold.on());
    try std.testing.expectEqualStrings("\x1b[3m", Style.italic.on());
    try std.testing.expectEqualStrings("\x1b[2m", Style.dim.on());
    try std.testing.expectEqualStrings("\x1b[4m", Style.underline.on());
    try std.testing.expectEqualStrings("\x1b[9m", Style.strike.on());
    try std.testing.expectEqualStrings("\x1b[7m", Style.reverse.on());
    try std.testing.expectEqualStrings("\x1b[5m", Style.blink.on());
    try std.testing.expectEqualStrings("\x1b[8m", Style.hidden.on());
    try std.testing.expectEqualStrings("\x1b[53m", Style.overline.on());
}

test "Style.off returns correct escape codes" {
    try std.testing.expectEqualStrings("\x1b[22m", Style.bold.off());
    try std.testing.expectEqualStrings("\x1b[23m", Style.italic.off());
    try std.testing.expectEqualStrings("\x1b[22m", Style.dim.off());
    try std.testing.expectEqualStrings("\x1b[24m", Style.underline.off());
    try std.testing.expectEqualStrings("\x1b[29m", Style.strike.off());
    try std.testing.expectEqualStrings("\x1b[27m", Style.reverse.off());
    try std.testing.expectEqualStrings("\x1b[25m", Style.blink.off());
    try std.testing.expectEqualStrings("\x1b[28m", Style.hidden.off());
    try std.testing.expectEqualStrings("\x1b[55m", Style.overline.off());
}

test "reset constant" {
    try std.testing.expectEqualStrings("\x1b[0m", reset);
}
