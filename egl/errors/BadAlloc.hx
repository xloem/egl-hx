package egl.errors;

/**
	EGL failed to allocate resources for the requested operation.
	Any command allocating resources may generate this error.
 **/
class BadAlloc extends Error {
	public static inline var CODE = EGL.BAD_ALLOC;
	public static inline var MEANING = "EGL failed to allocate resources for the requested operation.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
