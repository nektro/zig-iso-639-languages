const std = @import("std");
const langs = @import("iso-639-languages");

pub fn main() !void {
    std.log.info("{d}", .{std.meta.fields(langs.Alpha2Code).len});
    std.log.info("{d}", .{std.meta.fields(langs.Alpha3Code).len});
}
