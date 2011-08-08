package egl.errors;

/**
	One or more argument values are invalid.
	Any command taking parameters may generate this error.
 **/
class BadParameter extends Error {
	public static inline var CODE = 0x300c;
	public static inline var MEANING = "One or more argument values are invalid.";
}
