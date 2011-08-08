package egl.errors;

/**
	An unrecognized attribute or attribute value was passed in an attribute list.
	Any command taking an attribute parameter or attribute list may generate this
	error.
 **/
class BadAttribute extends Error {
	public static inline var CODE = 0x3004;
	public static inline var MEANING = "An unrecognized attribute or attribute value was passed in an attribute list.";
}
