const std = @import("std");
const constant: i32 = 5;
var variable: u32 = 5000;

const inferred_constant = @as(i32, 5);
var inferred_variable = @as(u32,5000);

const a:i32 = undefined;
const b:u32 = undefined;

const aarr = [5]u8{'h','e','l','l','o'};
const barr = [_]u8{'w','o','r','l','d',};
const aarrLength = aarr.len;


pub fn main() anyerror!void {
    // Note that info level log messages are by default printed only in Debug
    // and ReleaseSafe build modes.
    std.log.info("All your codebase are belong to us.", .{});
    std.debug.print("Hello, {s}!\n", .{aarr});
    std.debug.print("Hello, {s}!\n", .{barr});
    std.debug.print("constant, {}!\n", .{constant});
    std.debug.print("variable, {}!\n", .{variable});
    std.debug.print("inferred_constant, {}!\n", .{inferred_constant});
    std.debug.print("inferred_variable, {}!\n", .{inferred_variable});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
