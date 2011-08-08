package egl.errors;

/**
	EGL cannot access a requested resource (for example, a context is bound in
	another thread).
	Any command accessing a named resource may generate this error.
 **/
class BadAccess extends Error {
	public static inline var CODE = 0x3002;
	public static inline var MEANING = "EGL cannot access a requested resource (for example, a context is bound in another thread).";
}
