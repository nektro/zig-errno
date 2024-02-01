const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.option(std.builtin.Mode, "mode", "") orelse .Debug;

    const mod = b.addModule("errno", .{ .source_file = .{ .path = "errno.zig" } });

    const exe = b.addExecutable(.{
        .name = "zig-errno",
        .root_source_file = .{ .path = "main.zig" },
        .target = target,
        .optimize = mode,
    });
    exe.addModule("errno", mod);
    exe.linkLibC();

    b.installArtifact(exe);
}
