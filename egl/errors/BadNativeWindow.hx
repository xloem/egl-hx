package egl.errors;

/**
	An EGLNativeWindowType argument does not refer to a valid native window.
	Any command taking an EGLNativeWindowType parameter may generate this error.
 **/
class BadNativeWindow extends Error {
	public static inline var CODE = 0x300b;
	public static inline var MEANING = "An EGLNativeWindowType argument does not refer to a valid native window.";
}
