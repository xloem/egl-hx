package egl.errors;

/**
	A [Display] argument does not name a valid [Display].
	Any command taking an [Display] parameter may generate this error.
 **/
class BadDisplay extends Error {
	public static inline var CODE = EGL.BAD_DISPLAY;
	public static inline var MEANING = "A Display argument does not name a valid Display.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
