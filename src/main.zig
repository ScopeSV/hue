const std = @import("std");
const Io = std.Io;

const hue = @import("hue");

pub fn main(init: std.process.Init) !void {
    const arena: std.mem.Allocator = init.arena.allocator();

    const red = try hue.alloc.paint(arena, .red50, "Hello in red50!");
    const red2 = try hue.alloc.paint(arena, .red, "Hello in red!");
    const red3 = try hue.alloc.paint(arena, .red700, "Hello in red700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ red, red2, red3 });

    const pink = try hue.alloc.paint(arena, .pink50, "Hello in red50!");
    const pink2 = try hue.alloc.paint(arena, .pink, "Hello in red!");
    const pink3 = try hue.alloc.paint(arena, .pink700, "Hello in red700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ pink, pink2, pink3 });
}
