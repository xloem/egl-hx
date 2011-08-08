package egl.errors;

/**
	The current surface of the calling thread is a window, pbuffer, or pixmap that
	is no longer valid.
 **/
class BadCurrentSurface extends Error {
	public static inline var CODE = 0x3007;
	public static inline var MEANING = "The current surface of the calling thread is a window, pbuffer, or pixmap that is no longer valid.";
}
