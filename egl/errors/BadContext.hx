package egl.errors;

/**
	An EGLContext argument does not name a valid EGLContext.
	Any command taking an EGLContext parameter may generate this error.
 **/
class BadContext extends Error {
	public static inline var CODE = 0x3006;
	public static inline var MEANING = "An EGLContext argument does not name a valid EGLContext.";
}
