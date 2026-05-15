const std = @import("std");
const Allocator = std.mem.Allocator;

const colors = @import("colors.zig");

pub fn paint(alloc: Allocator, color: colors.Color, text: []const u8) ![]const u8 {
    return std.fmt.allocPrint(alloc, "{s}{s}\x1b[0m", .{ color.code(), text });
}

test "paint wraps text with color and reset" {
    const alloc = std.testing.allocator;
    const result = try paint(alloc, .red, "hello");
    defer alloc.free(result);
    try std.testing.expectEqualStrings("\x1b[38;2;244;67;54mhello\x1b[0m", result);
}

test "paint with different shade" {
    const alloc = std.testing.allocator;
    const result = try paint(alloc, .red700, "error");
    defer alloc.free(result);
    try std.testing.expectEqualStrings("\x1b[38;2;211;47;47merror\x1b[0m", result);
}

test "paint with empty string" {
    const alloc = std.testing.allocator;
    const result = try paint(alloc, .blue, "");
    defer alloc.free(result);
    try std.testing.expectEqualStrings("\x1b[38;2;33;150;243m\x1b[0m", result);
}

test "paint different color families" {
    const alloc = std.testing.allocator;
    const green = try paint(alloc, .green500, "ok");
    defer alloc.free(green);
    try std.testing.expectEqualStrings("\x1b[38;2;76;175;80mok\x1b[0m", green);
}

