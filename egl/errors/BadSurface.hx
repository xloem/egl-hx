package egl.errors;

/**
	An EGLSurface argument does not name a valid surface (window, pbuffer, or
	pixmap) configured for rendering.
	Any command taking an EGLSurface parameter may generate this error.
 **/
class BadSurface extends Error {
	public static inline var CODE = 0x300d;
	public static inline var MEANING = "An EGLSurface argument does not name a valid surface (window, pbuffer, or pixmap) configured for rendering.";
}
