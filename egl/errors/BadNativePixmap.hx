package egl.errors;

/**
	A [NativePixmapType] argument does not refer to a valid native pixmap.
	Any command taking a [NativePixmapType] parameter may generate this error.
 **/
class BadNativePixmap extends Error {
	public static inline var CODE = EGL.BAD_NATIVE_PIXMAP;
	public static inline var MEANING = "A NativePixmapType argument does not refer to a valid native pixmap.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
