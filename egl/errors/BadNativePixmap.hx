package egl.errors;

/**
	An EGLNativePixmapType argument does not refer to a valid native pixmap.
	Any command taking an EGLNativePixmapType parameter may generate this error.
 **/
class BadNativePixmap extends Error {
	public static inline var CODE = 0x300a;
	public static inline var MEANING = "An EGLNativePixmapType argument does not refer to a valid native pixmap.";
}
