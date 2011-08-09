package egl.types;

enum Colorspace {
	/**
		A non-linear, perceptually uniform color space is assumed, with a
		corresponding [ImageFormat].
	**/
	sRGB;

	/**
		A linear color space is assumed, with a corresponding [ImageFormat].
	**/
	linear;
}
