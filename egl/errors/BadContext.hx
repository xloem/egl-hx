package egl.errors;

/**
	A [Context] argument does not name a valid [Context].
	Any command taking a [Context] parameter may generate this error.
 **/
class BadContext extends Error {
	public static inline var CODE = EGL.BAD_CONTEXT;
	public static inline var MEANING = "A Context argument does not name a valid Context.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
