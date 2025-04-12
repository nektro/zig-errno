const std = @import("std");
const string = []const u8;
const builtin = @import("builtin");

pub const c = switch (builtin.target.os.tag) {
    .linux => switch (builtin.target.cpu.arch) {
        .x86_64,
        => opaque {
            pub const EPERM = 1;
            pub const ENOENT = 2;
            pub const ESRCH = 3;
            pub const EINTR = 4;
            pub const EIO = 5;
            pub const ENXIO = 6;
            pub const E2BIG = 7;
            pub const ENOEXEC = 8;
            pub const EBADF = 9;
            pub const ECHILD = 10;
            pub const EAGAIN = 11;
            pub const ENOMEM = 12;
            pub const EACCES = 13;
            pub const EFAULT = 14;
            pub const ENOTBLK = 15;
            pub const EBUSY = 16;
            pub const EEXIST = 17;
            pub const EXDEV = 18;
            pub const ENODEV = 19;
            pub const ENOTDIR = 20;
            pub const EISDIR = 21;
            pub const EINVAL = 22;
            pub const ENFILE = 23;
            pub const EMFILE = 24;
            pub const ENOTTY = 25;
            pub const ETXTBSY = 26;
            pub const EFBIG = 27;
            pub const ENOSPC = 28;
            pub const ESPIPE = 29;
            pub const EROFS = 30;
            pub const EMLINK = 31;
            pub const EPIPE = 32;
            pub const EDOM = 33;
            pub const ERANGE = 34;
            pub const EDEADLK = 35;
            pub const ENAMETOOLONG = 36;
            pub const ENOLCK = 37;
            pub const ENOSYS = 38;
            pub const ENOTEMPTY = 39;
            pub const ELOOP = 40;
            pub const EWOULDBLOCK = EAGAIN;
            pub const ENOMSG = 42;
            pub const EIDRM = 43;
            pub const ECHRNG = 44;
            pub const EL2NSYNC = 45;
            pub const EL3HLT = 46;
            pub const EL3RST = 47;
            pub const ELNRNG = 48;
            pub const EUNATCH = 49;
            pub const ENOCSI = 50;
            pub const EL2HLT = 51;
            pub const EBADE = 52;
            pub const EBADR = 53;
            pub const EXFULL = 54;
            pub const ENOANO = 55;
            pub const EBADRQC = 56;
            pub const EBADSLT = 57;
            pub const EDEADLOCK = EDEADLK;
            pub const EBFONT = 59;
            pub const ENOSTR = 60;
            pub const ENODATA = 61;
            pub const ETIME = 62;
            pub const ENOSR = 63;
            pub const ENONET = 64;
            pub const ENOPKG = 65;
            pub const EREMOTE = 66;
            pub const ENOLINK = 67;
            pub const EADV = 68;
            pub const ESRMNT = 69;
            pub const ECOMM = 70;
            pub const EPROTO = 71;
            pub const EMULTIHOP = 72;
            pub const EDOTDOT = 73;
            pub const EBADMSG = 74;
            pub const EOVERFLOW = 75;
            pub const ENOTUNIQ = 76;
            pub const EBADFD = 77;
            pub const EREMCHG = 78;
            pub const ELIBACC = 79;
            pub const ELIBBAD = 80;
            pub const ELIBSCN = 81;
            pub const ELIBMAX = 82;
            pub const ELIBEXEC = 83;
            pub const EILSEQ = 84;
            pub const ERESTART = 85;
            pub const ESTRPIPE = 86;
            pub const EUSERS = 87;
            pub const ENOTSOCK = 88;
            pub const EDESTADDRREQ = 89;
            pub const EMSGSIZE = 90;
            pub const EPROTOTYPE = 91;
            pub const ENOPROTOOPT = 92;
            pub const EPROTONOSUPPORT = 93;
            pub const ESOCKTNOSUPPORT = 94;
            pub const EOPNOTSUPP = 95;
            pub const ENOTSUP = EOPNOTSUPP;
            pub const EPFNOSUPPORT = 96;
            pub const EAFNOSUPPORT = 97;
            pub const EADDRINUSE = 98;
            pub const EADDRNOTAVAIL = 99;
            pub const ENETDOWN = 100;
            pub const ENETUNREACH = 101;
            pub const ENETRESET = 102;
            pub const ECONNABORTED = 103;
            pub const ECONNRESET = 104;
            pub const ENOBUFS = 105;
            pub const EISCONN = 106;
            pub const ENOTCONN = 107;
            pub const ESHUTDOWN = 108;
            pub const ETOOMANYREFS = 109;
            pub const ETIMEDOUT = 110;
            pub const ECONNREFUSED = 111;
            pub const EHOSTDOWN = 112;
            pub const EHOSTUNREACH = 113;
            pub const EALREADY = 114;
            pub const EINPROGRESS = 115;
            pub const ESTALE = 116;
            pub const EUCLEAN = 117;
            pub const ENOTNAM = 118;
            pub const ENAVAIL = 119;
            pub const EISNAM = 120;
            pub const EREMOTEIO = 121;
            pub const EDQUOT = 122;
            pub const ENOMEDIUM = 123;
            pub const EMEDIUMTYPE = 124;
            pub const ECANCELED = 125;
            pub const ENOKEY = 126;
            pub const EKEYEXPIRED = 127;
            pub const EKEYREVOKED = 128;
            pub const EKEYREJECTED = 129;
            pub const EOWNERDEAD = 130;
            pub const ENOTRECOVERABLE = 131;
            pub const ERFKILL = 132;
            pub const EHWPOISON = 133;
        },
        else => |v| @compileError("TODO: " ++ @tagName(v)),
    },
    else => |v| @compileError("TODO: " ++ @tagName(v)),
};

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

pub const ints_map = blk: {
    var ints = IntsMap{};
    for (std.meta.fields(Enum)) |field| {
        if (!@hasDecl(c, field.name)) continue;
        ints.put(@field(Enum, field.name), @field(c, field.name));
    }
    break :blk ints;
};

pub const Error = blk: {
    const Type = std.builtin.Type;
    const fields = std.meta.fields(Enum);
    var errors: [fields.len]Type.Error = undefined;
    for (fields, 0..) |field, i| {
        errors[i] = .{ .name = field.name };
    }
    errors[fields.len - 1] = .{ .name = "Unexpected" };
    break :blk @Type(@unionInit(Type, "ErrorSet", &errors));
};

pub fn error_by_name(name: string) ?Error {
    inline for (comptime std.meta.fieldNames(Error)) |field_name| {
        if (std.mem.eql(u8, name, field_name)) {
            return @field(Error, field_name);
        }
    }
    return null;
}
