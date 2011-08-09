package egl.types;

enum SwapBehavior {
	/** Indicates that color buffer contents are unaffected. **/
	preserved;
	/** Indicates that color buffer contents may be destroyed or changed. **/
	destroyed;
}
