const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.option(std.builtin.Mode, "mode", "") orelse .Debug;

    const mod = b.addModule("iso-639-languages", .{
        .root_source_file = b.path("mod.zig"),
    });

    const tests = b.addTest(.{
        .root_source_file = b.path("test.zig"),
        .target = target,
        .optimize = mode,
    });
    tests.root_module.addImport("iso-639-languages", mod);

    const test_step = b.step("test", "Run all library tests");
    const tests_run = b.addRunArtifact(tests);
    tests_run.has_side_effects = true;
    test_step.dependOn(&tests_run.step);
}
