package egl.errors;

/**
	EGL is not initialized, or could not be initialized, for the specified display.
	Any command may generate this error.
 **/
class NotInitialized extends Error {
	public static inline var CODE = 0x3001;
	public static inline var MEANING = "EGL is not initialized, or could not be initialized, for the specified display.";
}
