package egl.errors;

/**
	One or more argument values are invalid.
	Any command taking parameters may generate this error.
 **/
class BadParameter extends Error {
	public static inline var CODE = EGL.BAD_PARAMETER;
	public static inline var MEANING = "One or more argument values are invalid.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
