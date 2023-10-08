const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b.addModule("iso3166", .{
        .source_file = .{ .path = "iso3166.zig" },
        .dependencies = &[_]std.Build.ModuleDependency{},
    });
}
