package egl.errors;

/**
	A [Config] argument does not name a valid [Config].
	Any command taking a [Config] parameter may generate this error.
 **/
class BadConfig extends Error {
	public static inline var CODE = 0x3005;
	public static inline var MEANING = "A Config argument does not name a valid Config.";
}
