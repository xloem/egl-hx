package egl.errors;

/**
	EGL is not initialized, or could not be initialized, for the specified display.
	Any command may generate this error.
 **/
class NotInitialized extends Error {
	public static inline var CODE = EGL.NOT_INITIALIZED;
	public static inline var MEANING = "EGL is not initialized, or could not be initialized, for the specified display.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
