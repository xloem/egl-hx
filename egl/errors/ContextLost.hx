package egl.errors;

/**
	A power management event has occurred. The application must destroy all
	contexts and reinitialise client API state and objects to continue rendering.
	Any command may generate this error.
 **/
class ContextLost extends Error {
	public static inline var CODE = EGL.CONTEXT_LOST;
	public static inline var MEANING = "A power management event has occurred. The application must destroy all contexts and reinitialise client API state and objects to continue rendering.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
