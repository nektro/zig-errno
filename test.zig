const std = @import("std");
const errno = @import("errno");

test {
    const a = errno.error_by_name("ENOENT").?;
    const b = errno.Error.ENOENT;

    try std.testing.expectEqual(b, a);
}
