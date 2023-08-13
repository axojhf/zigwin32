//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Functions (2)
//--------------------------------------------------------------------------------
pub extern "KERNEL32" fn CreateNamedPipeA(
    lpName: [*:0]const u8,
    dwOpenMode: u32,
    dwPipeMode: u32,
    nMaxInstances: u32,
    nOutBufferSize: u32,
    nInBufferSize: u32,
    nDefaultTimeOut: u32,
    lpSecurityAttributes: ?*SECURITY_ATTRIBUTES,
) callconv(@import("std").os.windows.WINAPI) HANDLE;

pub extern "KERNEL32" fn WaitNamedPipeA(
    lpNamedPipeName: [*:0]const u8,
    nTimeOut: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (4)
//--------------------------------------------------------------------------------
const SECURITY_ATTRIBUTES = @import("system_services.zig").SECURITY_ATTRIBUTES;
const HANDLE = @import("system_services.zig").HANDLE;
const PSTR = @import("system_services.zig").PSTR;
const BOOL = @import("system_services.zig").BOOL;

test {
    const constant_export_count = 0;
    const type_export_count = 0;
    const enum_value_export_count = 0;
    const com_iface_id_export_count = 0;
    const com_class_id_export_count = 0;
    const func_export_count = 2;
    const unicode_alias_count = 0;
    const import_count = 4;
    @setEvalBranchQuota(
        constant_export_count +
        type_export_count +
        enum_value_export_count +
        com_iface_id_export_count * 2 + // * 2 for value and ptr
        com_class_id_export_count * 2 + // * 2 for value and ptr
        func_export_count +
        unicode_alias_count +
        import_count +
        2 // TODO: why do I need these extra 2?
    );
    @import("std").testing.refAllDecls(@This());
}