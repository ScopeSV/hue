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

    const blue = try hue.alloc.paint(arena, .blue50, "Hello in blue50!");
    const blue2 = try hue.alloc.paint(arena, .blue, "Hello in blue!");
    const blue3 = try hue.alloc.paint(arena, .blue700, "Hello in blue700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ blue, blue2, blue3 });

    const lightBlue = try hue.alloc.paint(arena, .lightBlue50, "Hello in light blue50!");
    const lightBlue2 = try hue.alloc.paint(arena, .lightBlue, "Hello in light blue!");
    const lightBlue3 = try hue.alloc.paint(arena, .lightBlue700, "Hello in light blue700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ lightBlue, lightBlue2, lightBlue3 });

    const cyan = try hue.alloc.paint(arena, .cyan50, "Hello in cyan50!");
    const cyan2 = try hue.alloc.paint(arena, .cyan, "Hello in cyan!");
    const cyan3 = try hue.alloc.paint(arena, .cyan700, "Hello in cyan700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ cyan, cyan2, cyan3 });

    const teal = try hue.alloc.paint(arena, .teal50, "Hello in teal50!");
    const teal2 = try hue.alloc.paint(arena, .teal, "Hello in teal!");
    const teal3 = try hue.alloc.paint(arena, .teal700, "Hello in teal700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ teal, teal2, teal3 });

    const green = try hue.alloc.paint(arena, .green50, "Hello in green50!");
    const green2 = try hue.alloc.paint(arena, .green, "Hello in green!");
    const green3 = try hue.alloc.paint(arena, .green700, "Hello in green700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ green, green2, green3 });

    const lightGreen = try hue.alloc.paint(arena, .lightGreen50, "Hello in light green50!");
    const lightGreen2 = try hue.alloc.paint(arena, .lightGreen, "Hello in light green!");
    const lightGreen3 = try hue.alloc.paint(arena, .lightGreen700, "Hello in light green700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ lightGreen, lightGreen2, lightGreen3 });

    const lime = try hue.alloc.paint(arena, .lime50, "Hello in lime50!");
    const lime2 = try hue.alloc.paint(arena, .lime, "Hello in lime!");
    const lime3 = try hue.alloc.paint(arena, .lime700, "Hello in lime700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ lime, lime2, lime3 });

    const yellow = try hue.alloc.paint(arena, .yellow50, "Hello in yellow50!");
    const yellow2 = try hue.alloc.paint(arena, .yellow, "Hello in yellow!");
    const yellow3 = try hue.alloc.paint(arena, .yellow700, "Hello in yellow700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ yellow, yellow2, yellow3 });

    const amber = try hue.alloc.paint(arena, .amber50, "Hello in amber50!");
    const amber2 = try hue.alloc.paint(arena, .amber, "Hello in amber!");
    const amber3 = try hue.alloc.paint(arena, .amber700, "Hello in amber700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ amber, amber2, amber3 });

    const orange = try hue.alloc.paint(arena, .orange50, "Hello in orange50!");
    const orange2 = try hue.alloc.paint(arena, .orange, "Hello in orange!");
    const orange3 = try hue.alloc.paint(arena, .orange700, "Hello in orange700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ orange, orange2, orange3 });

    const deepOrange = try hue.alloc.paint(arena, .deepOrange50, "Hello in deep orange50!");
    const deepOrange2 = try hue.alloc.paint(arena, .deepOrange, "Hello in deep orange!");
    const deepOrange3 = try hue.alloc.paint(arena, .deepOrange700, "Hello in deep orange700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ deepOrange, deepOrange2, deepOrange3 });

    const brown = try hue.alloc.paint(arena, .brown50, "Hello in brown50!");
    const brown2 = try hue.alloc.paint(arena, .brown, "Hello in brown!");
    const brown3 = try hue.alloc.paint(arena, .brown700, "Hello in brown700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ brown, brown2, brown3 });

    const gray = try hue.alloc.paint(arena, .grey50, "Hello in gray50!");
    const gray2 = try hue.alloc.paint(arena, .grey, "Hello in gray!");
    const gray3 = try hue.alloc.paint(arena, .grey700, "Hello in gray700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ gray, gray2, gray3 });

    const blueGray = try hue.alloc.paint(arena, .blueGrey50, "Hello in blue gray50!");
    const blueGray2 = try hue.alloc.paint(arena, .blueGrey, "Hello in blue gray!");
    const blueGray3 = try hue.alloc.paint(arena, .blueGrey700, "Hello in blue gray700!");
    std.debug.print("{s}\n{s}\n{s}\n", .{ blueGray, blueGray2, blueGray3 });

    std.debug.print("Done! Now writer\n", .{});

    var buf: [1024]u8 = undefined;
    var fileWriter = std.Io.File.stdout().writer(init.io, &buf);
    var stdout = &fileWriter.interface;
    try hue.writer.paint(stdout, .red, "Hello in red!");
    try hue.writer.paint(stdout, .pink, "Hello in pink!");
    try hue.writer.paint(stdout, .purple, "Hello in purple!");
    try hue.writer.paint(stdout, .deepPurple, "Hello in deep purple!");
    try hue.writer.paint(stdout, .indigo, "Hello in indigo!");
    try hue.writer.paint(stdout, .blue, "Hello in blue!");
    try hue.writer.paint(stdout, .lightBlue, "Hello in light blue!");
    try hue.writer.paint(stdout, .cyan, "Hello in cyan!");
    try hue.writer.paint(stdout, .teal, "Hello in teal!");
    try hue.writer.paint(stdout, .green, "Hello in green!");
    try hue.writer.paint(stdout, .lightGreen, "Hello in light green!");
    try hue.writer.paint(stdout, .lime, "Hello in lime!");
    try hue.writer.paint(stdout, .yellow, "Hello in yellow!");
    try hue.writer.paint(stdout, .amber, "Hello in amber!");
    try hue.writer.paint(stdout, .orange, "Hello in orange!");
    try hue.writer.paint(stdout, .deepOrange, "Hello in deep orange!");
    try hue.writer.paint(stdout, .brown, "Hello in brown!");
    try hue.writer.paint(stdout, .grey, "Hello in gray!");

    try stdout.flush();
}
