package egl;

class Surface {

	/**
		Destroy a surface of any type.  All resources associated with this
		surface which were allocated by EGL are marked for deletion as soon as
		possible.  Following [destroy], the surface is treated in the same
		fashion as a surface destroyed by [terminate].

		Resources associated with [surface] but not allocated by EGL, such as
		native windows, native pixmaps, or client API buffers, are not affected
		when the surface is destroyed.  Only storage actually allocated by EGL
		is marked for deletion.

		Furthermore, resources associated with a pbuffer surface are not
		released until all color buffers of that pbuffer bound to an OpenGL ES
		texture object have been released.

		An [egl.errors.BadSurface] error is generated if this is not a valid
		rendering surface.
	**/
	public function destroy( dpy : Display ) {

	}

	/** The ID of the [Config] with respect to which this surface was created. **/
	public var configID(default,never) : Int;

	/**
		Specifies the pixel width of the surface.  The default value
		for [width] is zero for a pbuffer surface.  If a native window
		is resized, the corresponding window surface will eventually be
		resized by the implementation to match.
	**/
	public var width(default,never) : Int;

	/**
		Specifies the pixel height of the surface.  The default value
		for [height] is zero.  If a native window is resized, the
		corresponding window surface will eventually be resized by the
		implementation to match.
	**/
	public var height(default,never) : Int;

	/**
		Specifies the filter to use when resolving the multisample buffer.

		If the value is set to [box] and the [surfaceType] attribute of the
		[Config] used to create this surface does not contain
		[MULTISAMPLE_RESOLVE_BOX_BIT], an [egl.errors.BadMatch] error is
		thrown.

		The initial value of [multisampleResolve] is [defaultMethod].
	**/
	public var multisampleResolve(default,default) : egl.types.MultisampleBehavior;

	/**
		Specifies the effect on the color buffer of posting a surface with
		[swapBuffers].

		If set to [preserved], and the [surfaceType] attribute of the [Config]
		used to create this surface does not contain
		[SWAP_BEHAVIOR_PRESERVED_BIT], and [egl.errors.BadMatch] error is
		thrown.

		The initial value of [swapBehavior] is chosen by the implementation.
	**/
	public var swapBehavior(default,default) : egl.types.SwapBehavior;

	/**
		Specifies which buffer should be used for client API rendering
		to the window.  The default value of [renderBuffer] is
		[backBuffer], except for pixmap surfaces, where it is always
		[singleBuffer].  To determine the actual buffer being rendered
		to by a context, query the context itself.
	**/
	public var renderBuffer(default,never) : egl.types.RenderBuffer;

	/**
		Specifies the color space used when rendering vector graphics to the
		surface.  The default value of [vgColorspace] is [sRGB].
	**/
	public var vgColorspace(default,never) : egl.types.Colorspace;

	/**
		Specifies how alpha values are interpreted when rendering vector
		graphics to the surface.  The default value of [vgAlphaFormat] is
		[nonpre].

		The [vgAlphaFormat] attribute does not necessarily control or affect
		the window system's interpretation of alpha values, even when the
		window system makes use of alpha to composite surfaces at display time.
		The window system's use and interpretation of alpha values is outside
		the scope of EGL.  However, the preferred behavior is for window
		systems to ignore the value of [vgAlphaFormat] when compositing window
		surfaces.
	**/
	public var vgAlphaFormat(default,never) : egl.types.AlphaFormat;
}
