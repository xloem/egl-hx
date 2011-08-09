package egl.errors;

/**
	A [Context] argument does not name a valid [Context].
	Any command taking a [Context] parameter may generate this error.
 **/
class BadContext extends Error {
	public static inline var CODE = 0x3006;
	public static inline var MEANING = "A Context argument does not name a valid Context.";
}
