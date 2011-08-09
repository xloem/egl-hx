package egl;

typedef NativePixmapType = Dynamic;

/**

	EGL supports rendering surfaces whose color buffers are stored in native
	pixmaps.  Pixmaps differ from windows in that they are typically allocated
	in off-screen (non-visible) graphics or CPU memory.  Pixmaps differ from
	pbuffers in that they do have an associated native pixmap, and it may be
	possible to render to pixmaps using APIs other than client APIs.

	To create a pixmap rendering surface, first create a native platform
	pixmap, then select a [Config] matching the pixel format of that pixmap
	(calling [chooseConfig] with an attribute list including
	[matchNativePixmap] returns only [Config]s matching the pixmap specified in
	the attribute list).
**/
class PixmapSurface extends Surface {

	/**
		Create an offscreen [Surface].  Any EGL context created with a
		compatible [Config] can be used to render into this surface.

		[attribList] specifies a list of attributes for the pixmap.  The list
		has the same structure as for [chooseConfig].  Attributes that can be
		specified in [attribList] include [vgColorspace] and [vgAlphaFormat].

		It is possible that some platforms will define additional attributes
		specific to those environments, as an EGL extension.

		[attribList] may be null or empty, in which case all attributes assume
		their default value.

		The resulting pixmap surface will contain color and ancillary buffers
		as specified by [config].  Buffers which are present in [pixmap]
		(normally, just the color buffer) will be bound to EGL.  Buffers which
		are not present in [pixmap] (such as depth and stencil, if [config]
		includes those buffers) will be allocated by EGL in the same fashion as
		for a [PbufferSurface].

		If the attributes of [pixmap] do not correspond to [config], then an
		[egl.errors.BadMatch] error is thrown.  If [config] does not support
		rendering to pixmaps (the [surfaceType] attribute does not contain
		[PIXMAP_BIT]), an [egl.errors.BadMatch] error is thrown.  If [config]
		does not support the colorspace or alpha format attributes specified in
		[attribList], an [egl.errors.BadMatch] error is thrown.  If [cnofig] is
		not a valid [Config], an [egl.errors.BadConfig] error is thrown.  If
		[pixmap] is not a valid native pixmap, then an
		[egl.errors.BadNativePixmap] error should be thrown.  If there is
		already a [PixmapSurface] associated with [pixmap], then an
		[egl.errors.BadAlloc] error is thrown.  Finally, if the implementation
		cannot allocate resources for the new EGL pixmap, an
		[egl.errors.BadAlloc] error is thrown.
	**/
	public function new( dpy : Display, config : Config, pixmap : NativePixmapType, ?attribList : Dynamic ) {
		// TODO: STUB
	}
}
