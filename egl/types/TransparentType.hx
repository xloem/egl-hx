package egl.types;

/**
	Values for the [transparentType] attribute of [Config] objects.
**/
enum TransparentType {

	/**
		Windows created with this [Config] will not have any transparent pixels.
	**/
	none;

	/**
		The [Config] supports transparency; a transparent pixel will be drawn
		when the red, green and blue values which are read from the framebuffer
		are equal to [transparentRedValue], [transparentGreenValue],
		[transparentBlueValue], respectively.
	**/
	rgb;
}
