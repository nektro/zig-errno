const std = @import("std");
const errno = @import("errno");

test {
    const a = errno.error_by_name("ENOENT").?;
    const b = errno.Error.ENOENT;
    try std.testing.expectEqual(b, a);
}

test {
    const e = errno.get_from_libc();
    try std.testing.expectEqual(0, e);
}

test {
    const a = errno.errorFromInt(2);
    const b = errno.Error.ENOENT;
    try std.testing.expectEqual(b, a);
}

test {
    const a = errno.errorFromInt(150);
    const b = errno.Error.Unexpected;
    try std.testing.expectEqual(b, a);
}
