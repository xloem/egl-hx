package egl.errors;

/**
	A [NativePixmapType] argument does not refer to a valid native pixmap.
	Any command taking a [NativePixmapType] parameter may generate this error.
 **/
class BadNativePixmap extends Error {
	public static inline var CODE = 0x300a;
	public static inline var MEANING = "A NativePixmapType argument does not refer to a valid native pixmap.";
}
