package egl.errors;

/**
	A power management event has occurred. The application must destroy all
	contexts and reinitialise client API state and objects to continue rendering.
	Any command may generate this error.
 **/
class ContextLost extends Error {
	public static inline var CODE = 0x300e;
	public static inline var MEANING = "A power management event has occurred. The application must destroy all contexts and reinitialise client API state and objects to continue rendering.";
}
