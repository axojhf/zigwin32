//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (2)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows10.0.15063'
const IID_ISpatialInteractionManagerInterop_Value = @import("../zig.zig").Guid.initString("5c4ee536-6a98-4b86-a170-587013d6fd4b");
pub const IID_ISpatialInteractionManagerInterop = &IID_ISpatialInteractionManagerInterop_Value;
pub const ISpatialInteractionManagerInterop = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        GetForWindow: fn(
            self: *const ISpatialInteractionManagerInterop,
            window: HWND,
            riid: *const Guid,
            spatialInteractionManager: **c_void,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IInspectable.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn ISpatialInteractionManagerInterop_GetForWindow(self: *const T, window: HWND, riid: *const Guid, spatialInteractionManager: **c_void) callconv(.Inline) HRESULT {
            return @ptrCast(*const ISpatialInteractionManagerInterop.VTable, self.vtable).GetForWindow(@ptrCast(*const ISpatialInteractionManagerInterop, self), window, riid, spatialInteractionManager);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows10.0.15063'
const IID_IHolographicSpaceInterop_Value = @import("../zig.zig").Guid.initString("5c4ee536-6a98-4b86-a170-587013d6fd4b");
pub const IID_IHolographicSpaceInterop = &IID_IHolographicSpaceInterop_Value;
pub const IHolographicSpaceInterop = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        CreateForWindow: fn(
            self: *const IHolographicSpaceInterop,
            window: HWND,
            riid: *const Guid,
            holographicSpace: **c_void,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IInspectable.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IHolographicSpaceInterop_CreateForWindow(self: *const T, window: HWND, riid: *const Guid, holographicSpace: **c_void) callconv(.Inline) HRESULT {
            return @ptrCast(*const IHolographicSpaceInterop.VTable, self.vtable).CreateForWindow(@ptrCast(*const IHolographicSpaceInterop, self), window, riid, holographicSpace);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

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
const Guid = @import("../zig.zig").Guid;
const HRESULT = @import("com.zig").HRESULT;
const HWND = @import("windows_and_messaging.zig").HWND;
const IInspectable = @import("win_rt.zig").IInspectable;

test {
    @setEvalBranchQuota(
        @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("std").builtin.is_test) return;
    inline for (@import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = decl;
        }
    }
}