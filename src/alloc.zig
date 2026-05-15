const std = @import("std");
const Allocator = std.mem.Allocator;

const colors = @import("colors.zig");

pub fn paint(alloc: Allocator, color: colors.Color, text: []const u8) ![]const u8 {
    return std.fmt.allocPrint(alloc, "{s}{s}\x1b[0m", .{ color.code(), text });
}
