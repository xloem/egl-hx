package egl;

import egl.types.Native;

class WindowSurface extends Surface {

	/**
		Creates an object reffering to an onscreen [Surface].  Any EGL context
		created with a compatible [Config] can be used to render into this
		surface.

		To create an on-screen rendering surface, first create a native
		platform window with attributes corresponding to the desired [Config]
		(e.g. with the same color depth, with other constraints specific to the
		platform).  Using the platform-specific type [NativeWindow], which
		is the type of a handle to that native window, then call
		[createWindowSurface].

		[attribList] specifies a list of attributes for the window.  The list
		has the same structure as for [chooseConfig].  Attributes that can be
		specified in [attribList] include [renderBuffer], [vgColorspace], and
		[vgAlphaFormat].

		It is possible that some platforms will define additional attributes
		specific to those environments, as an EGL extension.

		[attribList] may be null or empty, in which case all attributes assume
		their default values.

		Client APIs may not be able to respect the requested [renderBuffer].
		To determine the actual buffer being rendered to by a context, query
		the context itself.

		Note that the [vgColorspace] and [vgAlphaFormat] are used only for
		vector graphics.  EGL itself, and other client APIs such as OpenGL and
		OpenGL ES, do not distinguish multiple colorspace models.

		If the attributes of [win] do not correspond to [config], then an
		[egl.errors.BadMatch] error is thrown.  If [config] does not support
		rendering to windows (the [surfaceType] attribute does not contain
		[WINDOW_BIT]), an [egl.errors.BadMatch] error is thrown.  If [config]
		does not support the colorspace or alpha format attributes specifies in
		[attribList], an [egl.errors.BadMatch] error is thrown.  If [config] is
		not a valid [Config], an [egl.errors.BadConfig] error is thrown.  If
		[win] is not a valid native window, then an
		[egl.errors.BadNativeWindow] error should be thrown.  If there is
		already a [WindowSurface] object associated with [win], then an
		[egl.errors.BadAlloc] error is thrown.  Finally if the implementation
		cannot allocate resources for the new EGL window, an
		[egl.errors.BadAlloc] error is thrown.

	**/
	public function new( dpy : Display, config : Config, win : NativeWindow, ?attribList : Dynamic ) {
		// TODO: STUB
	}

	/**
		The horizontal dot pitch of the display on which a window
		surface is visible.  The value is equal to the actual dot
		pitch, in pixels/meter.
	**/
	public var horizontalResolution(default,never) : Float;

	/**
		The vertical dot pitch of the display on which a window surface
		is visible.  The value is equal to the actual dot pitch, in
		pixels/meter.
	**/
	public var verticalResolution(default,never) : Float;

	/**
		The aspect ratio of an individual pixel (the ratio of a pixel's
		width to its height).  For almost all displays, the value will
		be one (square pixels).
	**/
	public var pixelAspectRatio(default,never) : Float;
}
