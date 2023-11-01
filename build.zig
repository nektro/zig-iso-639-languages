const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b.addModule("iso-639-languages", .{
        .source_file = .{ .path = "mod.zig" },
    });
}
