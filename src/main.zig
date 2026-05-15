const std = @import("std");
const Io = std.Io;

const hue = @import("hue");

pub fn main(init: std.process.Init) !void {
    const arena: std.mem.Allocator = init.arena.allocator();

    const red = try hue.alloc.paint(arena, .red50, "Hello in red50!");
    const red2 = try hue.alloc.paint(arena, .red, "Hello in red!");
    const red3 = try hue.alloc.paint(arena, .red700, "Hello in red700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ red, red2, red3 });

    const pink = try hue.alloc.paint(arena, .pink50, "Hello in pink50!");
    const pink2 = try hue.alloc.paint(arena, .pink, "Hello in pink!");
    const pink3 = try hue.alloc.paint(arena, .pink700, "Hello in pink700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ pink, pink2, pink3 });

    const purple = try hue.alloc.paint(arena, .purple50, "Hello in purple50!");
    const purple2 = try hue.alloc.paint(arena, .purple, "Hello in purple!");
    const purple3 = try hue.alloc.paint(arena, .purple700, "Hello in purple700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ purple, purple2, purple3 });

    const deepPurple = try hue.alloc.paint(arena, .deepPurple50, "Hello in deep puple50!");
    const deepPurple2 = try hue.alloc.paint(arena, .deepPurple, "Hello in deep purple!");
    const deepPurple3 = try hue.alloc.paint(arena, .deepPurple700, "Hello in deep puple700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ deepPurple, deepPurple2, deepPurple3 });

    const indigo = try hue.alloc.paint(arena, .indigo50, "Hello in indigo50!");
    const indigo2 = try hue.alloc.paint(arena, .indigo, "Hello in indigo!");
    const indigo3 = try hue.alloc.paint(arena, .indigo700, "Hello in indigo700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ indigo, indigo2, indigo3 });
}
