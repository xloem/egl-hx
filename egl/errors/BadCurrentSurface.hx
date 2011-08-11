package egl.errors;

/**
	The current surface of the calling thread is a window, pbuffer, or pixmap that
	is no longer valid.
 **/
class BadCurrentSurface extends Error {
	public static inline var CODE = EGL.BAD_CURRENT_SURFACE;
	public static inline var MEANING = "The current surface of the calling thread is a window, pbuffer, or pixmap that is no longer valid.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
