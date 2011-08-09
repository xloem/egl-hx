package egl.errors;

/**
	A [NativeWindowType] argument does not refer to a valid native window.
	Any command taking a [NativeWindowType] parameter may generate this error.
 **/
class BadNativeWindow extends Error {
	public static inline var CODE = 0x300b;
	public static inline var MEANING = "A NativeWindowType argument does not refer to a valid native window.";
}
