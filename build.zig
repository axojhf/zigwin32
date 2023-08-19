const std = @import("std");

pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});
    const target = b.standardTargetOptions(.{});
    _ = target;
    _ = optimize;
    _ = b.addModule("zigwin32", .{
        .source_file = .{ .path = "win32.zig" },
    });
}
