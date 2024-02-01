const std = @import("std");
const string = []const u8;

const c = @cImport({
    @cInclude("errno.h");
});

pub const Enum = enum(c_uint) {
    /// Argument list too long.
    E2BIG,
    /// Permission denied.
    EACCES,
    /// Address in use.
    EADDRINUSE,
    /// Address not available.
    EADDRNOTAVAIL,
    /// Address family not supported.
    EAFNOSUPPORT,
    /// Resource unavailable, try again (may be the same value as [EWOULDBLOCK]).
    EAGAIN,
    /// Connection already in progress.
    EALREADY,
    /// Bad file descriptor.
    EBADF,
    /// Bad message.
    EBADMSG,
    /// Device or resource busy.
    EBUSY,
    /// Operation canceled.
    ECANCELED,
    /// No child processes.
    ECHILD,
    /// Connection aborted.
    ECONNABORTED,
    /// Connection refused.
    ECONNREFUSED,
    /// Connection reset.
    ECONNRESET,
    /// Resource deadlock would occur.
    EDEADLK,
    /// Destination address required.
    EDESTADDRREQ,
    /// Mathematics argument out of domain of function.
    EDOM,
    /// Reserved.
    EDQUOT,
    /// File exists.
    EEXIST,
    /// Bad address.
    EFAULT,
    /// File too large.
    EFBIG,
    /// Host is unreachable.
    EHOSTUNREACH,
    /// Identifier removed.
    EIDRM,
    /// Illegal byte sequence.
    EILSEQ,
    /// Operation in progress.
    EINPROGRESS,
    /// Interrupted function.
    EINTR,
    /// Invalid argument.
    EINVAL,
    /// I/O error.
    EIO,
    /// Socket is connected.
    EISCONN,
    /// Is a directory.
    EISDIR,
    /// Too many levels of symbolic links.
    ELOOP,
    /// File descriptor value too large.
    EMFILE,
    /// Too many links.
    EMLINK,
    /// Message too large.
    EMSGSIZE,
    /// Reserved.
    EMULTIHOP,
    /// Filename too long.
    ENAMETOOLONG,
    /// Network is down.
    ENETDOWN,
    /// Connection aborted by network.
    ENETRESET,
    /// Network unreachable.
    ENETUNREACH,
    /// Too many files open in system.
    ENFILE,
    /// No buffer space available.
    ENOBUFS,
    /// [OB XSR] [Option Start] No message is available on the STREAM head read queue. [Option End]
    ENODATA,
    /// No such device.
    ENODEV,
    /// No such file or directory.
    ENOENT,
    /// Executable file format error.
    ENOEXEC,
    /// No locks available.
    ENOLCK,
    /// Reserved.
    ENOLINK,
    /// Not enough space.
    ENOMEM,
    /// No message of the desired type.
    ENOMSG,
    /// Protocol not available.
    ENOPROTOOPT,
    /// No space left on device.
    ENOSPC,
    /// [OB XSR] [Option Start] No STREAM resources. [Option End]
    ENOSR,
    /// [OB XSR] [Option Start] Not a STREAM. [Option End]
    ENOSTR,
    /// Functionality not supported.
    ENOSYS,
    /// The socket is not connected.
    ENOTCONN,
    /// Not a directory or a symbolic link to a directory.
    ENOTDIR,
    /// Directory not empty.
    ENOTEMPTY,
    /// State not recoverable.
    ENOTRECOVERABLE,
    /// Not a socket.
    ENOTSOCK,
    /// Not supported (may be the same value as [EOPNOTSUPP]).
    ENOTSUP,
    /// Inappropriate I/O control operation.
    ENOTTY,
    /// No such device or address.
    ENXIO,
    /// Operation not supported on socket (may be the same value as [ENOTSUP]).
    EOPNOTSUPP,
    /// Value too large to be stored in data type.
    EOVERFLOW,
    /// Previous owner died.
    EOWNERDEAD,
    /// Operation not permitted.
    EPERM,
    /// Broken pipe.
    EPIPE,
    /// Protocol error.
    EPROTO,
    /// Protocol not supported.
    EPROTONOSUPPORT,
    /// Protocol wrong type for socket.
    EPROTOTYPE,
    /// Result too large.
    ERANGE,
    /// Read-only file system.
    EROFS,
    /// Invalid seek.
    ESPIPE,
    /// No such process.
    ESRCH,
    /// Reserved.
    ESTALE,
    /// [OB XSR] [Option Start] Stream ioctl() timeout. [Option End]
    ETIME,
    /// Connection timed out.
    ETIMEDOUT,
    /// Text file busy.
    ETXTBSY,
    /// Operation would block (may be the same value as [EAGAIN]).
    EWOULDBLOCK,
    /// Cross-device link.
    EXDEV,

    /// Socket type not supported. The support for the socket type has not been configured into the system or no implementation for it exists.
    ESOCKTNOSUPPORT,
    /// Protocol family not supported. The protocol family has not been configured into the system or no implementation for it exists.
    EPFNOSUPPORT,
    /// Cannot send after socket shutdown. A request to send data was disallowed because the socket had already been shut down with a previous shutdown(2) call.
    ESHUTDOWN,
    /// Host is down. A socket operation failed because the destination host was down.
    EHOSTDOWN,
    /// Too many processes.
    EPROCLIM,
    /// Too many users. The quota system ran out of table entries.
    EUSERS,
    /// RPC struct is bad. Exchange of RPC information was unsuccessful.
    EBADRPC,
    /// RPC version wrong. The version of RPC on the remote peer is not compatible with the local version.
    ERPCMISMATCH,
    /// RPC prog. not avail. The requested program is not registered on the remote host.
    EPROGUNAVAIL,
    /// Program version wrong. The requested version of the program is not available on the remote host (RPC).
    EPROGMISMATCH,
    /// Bad procedure for program. An RPC call was attempted for a procedure which doesn't exist in the remote program.
    EPROCUNAVAIL,
    /// Inappropriate file type or format. The file was the wrong type for the operation, or a data file had the wrong format.
    EFTYPE,
    /// Authentication error. Attempted to use an invalid authentication ticket to mount an NFS file system.
    EAUTH,
    /// Need authenticator. An authentication ticket must be obtained before the given NFS file system may be mounted.
    ENEEDAUTH,
    /// Device power is off. The device power is off.
    EPWROFF,
    /// Device error. A device error has occurred, e.g. a printer running out of paper.
    EDEVERR,
    /// Bad executable (or shared library). The executable or shared library being referenced was malformed.
    EBADEXEC,
    /// Bad CPU type in executable. The executable in question does not support the current CPU.
    EBADARCH,
    /// Shared library version mismatch. The version of the shared library on the system does not match the version which was expected.
    ESHLIBVERS,
    /// Malformed Mach-o file. The Mach object file is malformed.
    EBADMACHO,
    /// Attribute not found. The specified extended attribute does not exist.
    ENOATTR,
};

pub const IntsMap = std.EnumMap(Enum, c_uint);

pub const ints_maps = blk: {
    var ints = IntsMap{};
    for (std.meta.fields(Enum)) |field| {
        if (!@hasDecl(c, field.name)) continue;
        ints.put(@field(Enum, field.name), @field(c, field.name));
    }
    break :blk ints;
};

pub const Error = blk: {
    const Type = std.builtin.Type;
    var errors: []const Type.Error = &.{};
    for (std.meta.fields(Enum)) |field| {
        errors = errors ++ &[_]Type.Error{.{ .name = field.name }};
    }
    errors = errors ++ &[_]Type.Error{.{ .name = "Unexpected" }};
    break :blk @Type(@unionInit(Type, "ErrorSet", errors));
};

pub fn error_by_name(name: string) ?Error {
    inline for (comptime std.meta.fields(Error)) |field| {
        if (std.mem.eql(u8, name, field.name)) {
            return @field(Error, field.name);
        }
    }
    return null;
}
