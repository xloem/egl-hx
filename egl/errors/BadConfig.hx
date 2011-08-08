package egl.errors;

/**
	An EGLConfig argument does not name a valid EGLConfig.
	Any command taking an EGLConfig parameter may generate this error.
 **/
class BadConfig extends Error {
	public static inline var CODE = 0x3005;
	public static inline var MEANING = "An EGLConfig argument does not name a valid EGLConfig.";
}
