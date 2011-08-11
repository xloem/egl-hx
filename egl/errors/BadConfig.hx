package egl.errors;

/**
	A [Config] argument does not name a valid [Config].
	Any command taking a [Config] parameter may generate this error.
 **/
class BadConfig extends Error {
	public static inline var CODE = EGL.BAD_CONFIG;
	public static inline var MEANING = "A Config argument does not name a valid Config.";

	override private inline function getCode() : Int { return CODE; }
	override private inline function getMeaning() : String { return MEANING; }
	public inline function new() {}
}
