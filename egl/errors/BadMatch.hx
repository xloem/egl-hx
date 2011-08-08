package egl.errors;

/**
	Arguments are inconsistent; for example, an otherwise valid context requires
	buffers (e.g. depth or stencil) not allocated by an otherwise valid surface.
 **/
class BadMatch extends Error {
	public static inline var CODE = 0x3009;
	public static inline var MEANING = "Arguments are inconsistent; for example, an otherwise valid context requires buffers (e.g. depth or stencil) not allocated by an otherwise valid surface.";
}
