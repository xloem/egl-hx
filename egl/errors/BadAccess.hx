package egl.errors;

/**
	EGL cannot access a requested resource (for example, a context is bound in
	another thread).
	Any command accessing a named resource may generate this error.
 **/
class BadAccess extends Error {
	public static inline var CODE = EGL.BAD_ACCESS;
	public static inline var MEANING = "EGL cannot access a requested resource (for example, a context is bound in another thread).";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
