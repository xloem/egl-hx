package egl.errors;

/**
	A [NativeWindowType] argument does not refer to a valid native window.
	Any command taking a [NativeWindowType] parameter may generate this error.
 **/
class BadNativeWindow extends Error {
	public static inline var CODE = EGL.BAD_NATIVE_WINDOW;
	public static inline var MEANING = "A NativeWindowType argument does not refer to a valid native window.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
