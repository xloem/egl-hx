package egl.errors;

/**
	A [Display] argument does not name a valid [Display].
	Any command taking an [Display] parameter may generate this error.
 **/
class BadDisplay extends Error {
	public static inline var CODE = 0x3008;
	public static inline var MEANING = "A Display argument does not name a valid Display.";
}
