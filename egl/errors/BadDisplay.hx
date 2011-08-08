package egl.errors;

/**
	An EGLDisplay argument does not name a valid EGLDisplay.
	Any command taking an EGLDisplay parameter may generate this error.
 **/
class BadDisplay extends Error {
	public static inline var CODE = 0x3008;
	public static inline var MEANING = "An EGLDisplay argument does not name a valid EGLDisplay.";
}
