const std = @import("std");
const errno_ = @import("errno");

pub fn main() void {
    const a = errno_.error_by_name("ENOENT").?;
    const b = errno_.Error.ENOENT;

    std.debug.assert(a == b);
}
