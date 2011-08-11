package egl.errors;

/**
	An unrecognized attribute or attribute value was passed in an attribute list.
	Any command taking an attribute parameter or attribute list may generate this
	error.
 **/
class BadAttribute extends Error {
	public static inline var CODE = EGL.BAD_ATTRIBUTE;
	public static inline var MEANING = "An unrecognized attribute or attribute value was passed in an attribute list.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
