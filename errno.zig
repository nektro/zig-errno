const std = @import("std");
const string = []const u8;
const builtin = @import("builtin");

pub const c = switch (builtin.target.os.tag) {
    .linux => switch (builtin.target.cpu.arch) {
        // arc
        .arc,
        // arm
        .arm,
        .armeb,
        // arm64
        .aarch64,
        .aarch64_be,
        .aarch64_32,
        // csky
        .csky,
        // hexagon
        .hexagon,
        // loongarch
        .loongarch32,
        .loongarch64,
        // m68k
        .m68k,
        // mips
        .mips,
        .mipsel,
        .mips64,
        .mips64el,
        // powerpc
        .powerpc,
        .powerpcle,
        .powerpc64,
        .powerpc64le,
        // riscv
        .riscv32,
        .riscv64,
        // s390
        .s390x,
        // sparc
        .sparc,
        .sparc64,
        .sparcel,
        // x86
        .x86,
        .x86_64,
        // xtensa
        .xtensa,
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
        // alpha
        // nios2
        // microblaze
        // openrisc
        // parisc
        // sh
        // um
        // @compileError("TODO: " ++ @tagName(v)),
        .avr,
        .bpfel,
        .bpfeb,
        .dxil,
        .msp430,
        .r600,
        .amdgcn,
        .tce,
        .tcele,
        .thumb,
        .thumbeb,
        .xcore,
        .nvptx,
        .nvptx64,
        .le32,
        .le64,
        .amdil,
        .amdil64,
        .hsail,
        .hsail64,
        .spir,
        .spir64,
        .spirv,
        .spirv32,
        .spirv64,
        .kalimba,
        .shave,
        .lanai,
        .wasm32,
        .wasm64,
        .renderscript32,
        .renderscript64,
        .ve,
        .spu_2,
        => unreachable,
    },
    else => |v| @compileError("TODO: " ++ @tagName(v)),
};

pub const Enum = std.meta.DeclEnum(c);

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

const __errno_location_name = switch (builtin.target.os.tag) {
    .linux,
    => "__errno_location",
    .macos,
    => "__error",
    else => |v| @compileError("TODO: " ++ @tagName(v)),
};

const __errno_location = @extern(*const fn () callconv(.C) *c_int, std.builtin.ExternOptions{
    .name = __errno_location_name,
    .library_name = "c",
});

pub fn get_from_libc() c_int {
    return __errno_location().*;
}
