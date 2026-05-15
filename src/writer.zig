const std = @import("std");
const Writer = std.Io.Writer;
const colors = @import("colors.zig");

pub fn paint(writer: *Writer, color: colors.Color, text: []const u8) !void {
    try writer.print("{s}{s}\x1b[0m", .{ color.code(), text });
}

test "writer paint wraps text with color and reset" {
    var buffer: [256]u8 = undefined;
    var w: std.Io.Writer = .fixed(&buffer);
    try paint(&w, .red, "hello");
    try std.testing.expectEqualStrings("\x1b[38;2;244;67;54mhello\x1b[0m", w.buffered());
}

test "writer paint with different shade" {
    var buffer: [256]u8 = undefined;
    var w: std.Io.Writer = .fixed(&buffer);
    try paint(&w, .red700, "error");
    try std.testing.expectEqualStrings("\x1b[38;2;211;47;47merror\x1b[0m", w.buffered());
}

test "writer paint with empty string" {
    var buffer: [256]u8 = undefined;
    var w: std.Io.Writer = .fixed(&buffer);
    try paint(&w, .blue, "");
    try std.testing.expectEqualStrings("\x1b[38;2;33;150;243m\x1b[0m", w.buffered());
}

test "writer paint different color families" {
    var buffer: [256]u8 = undefined;
    var w: std.Io.Writer = .fixed(&buffer);
    try paint(&w, .green500, "ok");
    try std.testing.expectEqualStrings("\x1b[38;2;76;175;80mok\x1b[0m", w.buffered());
}
