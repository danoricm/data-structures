// linked_list.zig
const std = @import("std");

pub fn main() void {
    const arr = [_]i32{1, 2, 3, 4, 5};
    std.debug.print("Array elements are: {any}\n", .{arr});
}
