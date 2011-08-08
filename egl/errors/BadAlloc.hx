package egl.errors;

/**
	EGL failed to allocate resources for the requested operation.
	Any command allocating resources may generate this error.
 **/
class BadAlloc extends Error {
	public static inline var CODE = 0x3003;
	public static inline var MEANING = "EGL failed to allocate resources for the requested operation.";
}
