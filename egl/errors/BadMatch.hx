package egl.errors;

/**
	Arguments are inconsistent; for example, an otherwise valid context requires
	buffers (e.g. depth or stencil) not allocated by an otherwise valid surface.
 **/
class BadMatch extends Error {
	public static inline var CODE = EGL.BAD_MATCH;
	public static inline var MEANING = "Arguments are inconsistent; for example, an otherwise valid context requires buffers (e.g. depth or stencil) not allocated by an otherwise valid surface.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
