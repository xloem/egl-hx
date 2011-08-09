package egl.errors;

/**
	A [Surface] argument does not name a valid surface (window, pbuffer, or
	pixmap) configured for rendering.
	Any command taking a [Surface] parameter may generate this error.
 **/
class BadSurface extends Error {
	public static inline var CODE = 0x300d;
	public static inline var MEANING = "A Surface argument does not name a valid surface (window, pbuffer, or pixmap) configured for rendering.";
}
