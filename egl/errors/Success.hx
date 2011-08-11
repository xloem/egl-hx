package egl.errors;

/**
	Function succeeded.
 **/
class Success extends Error {
	public static inline var CODE = EGL.SUCCESS;
	public static inline var MEANING = "Function succeeded.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
