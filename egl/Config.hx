package egl;

/**
	Describes the format, type and size of the color buffers and ancillary
	buffers for a [Surface].  If the [Surface] is a window, then the [Config]
	describing it may have an associated native visual type.

	The depth of buffers is expressed in bits/pixel component.  If the depth of
	a buffer in a [Config] is zero, then a [Surface] created with respect to
	that [Config] will not contain the corresponding buffer.

	Not all buffers are used or required by all client APIs.  To conserve
	resources, implementations may delay creation of buffers untli they are
	needed by EGL or a client API.  For example, if a [Config] describes an
	alpha mask buffer with depth greater than zero, that buffer need not be
	allocated by a surface until a context is bound to that surface.

	Configurations returned by [getConfigs] and [chooseConfig] remain valid so
	long as the [Display] from which the objects were obtained is not
	terminated.
**/
class Config {

	/**
		Total of the color component bits of the color buffer.  For an RGB color
		buffer, the total is the sum of [redSize], [greenSize], [blueSize], and
		[alphaSize].  For a luminance color buffer, the total is the sum of
		[luminanceSize] and [alphaSize].
		
		The value of [bufferSize] does not include any padding bits that may be
		present in the pixel format, nor does it account for any alignment or
		padding constraints of surfaces, so it cannot be reliably used to compute
		memory consumed by a surface.  No such query exists in EGL 1.4 .
	
		Default: 0 Criteria: [AtLeast] Order: [Smaller] Priority: 4
	**/
	public var bufferSize(default,null) : Int;

	/**
		Component bits of Red in the color buffer.
	  
		Default: 0 Criteria: [AtLeast] Order: [Special] Priority: 3
	**/
	public var redSize(default,null): Int;

	/**
		Component bits of Green in the color buffer.

		Default: 0 Criteria: [AtLeast] Order: [Special] Priority: 3
	**/
	public var greenSize(default,null): Int;


	/**
		Component bits of Blue in the color buffer.

		Default: 0 Criteria: [AtLeast] Order: [Special] Priority: 3
	**/
	public var blueSize(default,null): Int;

	/**
		Component bits of Luminance in the color buffer.

		Default: 0 Criteria: [AtLeast] Order: [Special] Priority: 3
	**/
	public var luminanceSize(default,null): Int;

	/**
		Component bits of Alpha in the color buffer.

		Default: 0 Criteria: [AtLeast] Order: [Special] Priority: 3
	**/
	public var alphaSize(default,null): Int;

	/**
		Indicates the depth of the alpha mask buffer.  This buffer is used only
		for vector graphics.

		Default: 0 Criteria: [AtLeast] Order: [Smaller] Priority: 9
	**/
	public var alphaMaskSize(default,null): Int;

	/**
		Indicates whether the color buffers of a pbuffer created with this
		[Config] can be bound to an OpenGL ES RGB texture.  Currently only
		pbuffers can be bound as textures, so this attribute may only be True
		if the value of the [surfaceType] attribute includes [PBUFFER_BIT].  It
		is possible to bind a RGBA visual to a RGB texture, in which case the
		values in the alpha component of the visual are ignored when the color
		buffer is used as a RGB texture.

		Implementations may choose not to support [bindToTextureRGB] for RGBA
		visuals.

		Texture binding to OpenGL textures is not supported.

		Default: [DontCare] Criteria: [Exact]
	**/
	public var bindToTextureRGB(default,null): Bool;

	/**
		Indicates whether the color buffers of a pbuffer created with this
		[Config] can be bound to an OpenGL ES RGB texture.  Currently only
		pbuffers can be bound as textures, so this attribute may only be True
		if the value of the [surfaceType] attribute includes [PBUFFER_BIT].

		Texture binding to OpenGL textures is not supported.

		Default: [DontCare] Criteria: [Exact]
	**/
	public var bindToTextureRGBA(default,null): Bool;

	/**
		Indicates the color buffer type.  The color buffer contains pixel color
		values, and is shared by all client APIs rendering to a surface.  For
		an RGB buffer, [redSize], [greenSize], [blueSize] must be non-zero, and
		[luminanceSize] must be zero.  For a luminance buffer, [redSize],
		[greenSize], [blueSize] must be zero, and [luminanceSize] must be
		non-zero.  For both RGB and luminance color buffers, [alphaSize] may be
		zero or non-zero (the latter indicates the existence of a destination
		alpha buffer).

		If OpenGL or OpenGL ES rendering is supported for a luminance color
		buffer (as described by the value of the [renderableType] attribute),
		it is treated as RGB rendering with the value of [redBits] equal to
		[luminanceSize] and the values of [greenBits] and [blueBits] equal to
		zero.  The red component of fragments is written to the luminance
		channel of the color buffer, the green and blue components are
		discarded, and the alpha component is written to the alpha channel of
		the color buffer (if present).

		Default: [rgb] Criteria: [Exact] Order: [Special] Priority: 2
	**/
	public var colorBufferType(default,null): egl.types.ColorBufferType;

	/**
		If true, then rendering to a surface with this configuration may run at
		reduced performance (for example, the hardware may not support the
		color buffer depths described by the configuration).

		Default: [DontCare] Criteria: [Exact] Order: [Special] Priority: 1
	**/
	public var caveatSlow(default,null): Bool;

	/**
		A unique integer identifying different [Config]s.  Configuration IDs
		must be small positive integers starting at 1 and ID assignment should
		be compact; that is, if there are N [Config]s defined by the EGL
		implementation, their configuration IDs should be in the range [1, N].
		Small gaps in the sequence are allowed, but should only occur when
		removing configurations defined in previous revisions of an EGL
		implementation.

		Default: [DontCare] Criteria: [Exact] Order: [Smaller] Priority: 11 (last)
	**/
	public var configID(default,null): Int;

	/**
		A mask indicating if a client API context created with respect to this
		[Config] will pass the required conformance tests for that API.  The
		valid bit settings are the same as for [renderableType], but the
		presence or absence of each client API bit determines whether the
		corresponding context will be conformant or non-conformant.

		API conformance requires that a set of [Config]s supporting certain
		defined minimum attributes (such as the number, type, and depth of
		supported buffers) be supplied by any conformant implementation.  Those
		requirements are documented only in the conformance specifications for
		client APIs.

		Default: 0 Criteria: [Mask]
	**/
	public var conformant(default,null): Int;

	/**
		Indicates the depth of the depth buffer in bits.  This buffer is used
		for 3D graphics rendering and contains fragment depth (Z) information
		generated during rasterization.

		Default: 0 Criteria: [AtLeast] Order: [Smaller] Priority: 7
	**/
	public var depthSize(default,null): Int;

	/**
		The framebuffer overlay or underlay level in which a [Surface] created
		with [Surface.createWindow] will be placed.  Level zero indicates the
		default layer.  The behavior of windows placed in overlay and underlay
		levels depends on the underlying native window system.

		Default: 0 Criteria: [Exact]
	**/
	public var level(default,null): Int;

	/** Indicates the maximum width that can be passed into [Surface.createPbuffer] **/
	public var maxPbufferWidth(default,null): Int;

	/** Indicates the maximum height that can be passed into [Surface.createPbuffer] **/
	public var maxPbufferHeight(default,null): Int;

	/**
		Indicates the maximum number of pixels (width times height) for a
		pbudffer surface.  Note that an implementation may provide a value for
		[maxPbufferPixels] that is less than the maximum width times the
		maximum height.  The value for [maxPbufferPixels] is static and assumes
		that no other pbuffers or native resources are contending for the
		framebuffer memory.  Thus it may not be possible to allocate a pbuffer
		of the size given by [maxPbufferPixels].
	**/
	public var maxPbufferPixels(default,null): Int;

	/**
		[maxSwapInterval] is the maxmimum value that can be passed to
		[swapInterval], and indicates the number of swap intervals that will
		elapse before a buffer swap takes place after calling [swapBuffers].
		Larger values will be silently clamped to this value.

		Default: [DontCare] Criteria: [Exact]
	**/
	public var maxSwapInterval(default,null): Int;

	/**
		[minSwapInterval] is the minimum value that can be passed to
		[swapInterval], and indicates the number of swap intervals that will
		elapse before a buffer swap takes place after calling [swapBuffers].
		Smaller values will be silently clamped to this value.

		Default: [DontCare] Criteria: [Exact]
	**/
	public var minSwapInterval(default,null): Int;

	/**
		Indicates whether the native window system can be used to render into a
		surface created with this [Config].

		Default: [DontCare] Criteria: [Exact]
	**/
	public var nativeRenderable(default,null): Bool;

	/**
		If a [Config] supports windows then it may have an associated native
		visual.  [nativeVisual] specifies this visual.  If a [Config] does not
		support windows, or if there is no associated native visual, then
		[nativeVisual] will be null.

		The interpretation of the native visual is platform-dependent.

		Default: [DontCare] Criteria: [Exact] Order: [Special] Priority: 10
	**/
	public var nativeVisual(default,null): Dynamic;

	/** [renderableType] mask bit indicating OpenGL ES 1.x **/
	public static inline var OPENGL_ES_BIT : Int = 0x0001;

	/** [renderableType] mask bit indicating OpenVG 1.x **/
	public static inline var OPENVG_BIT : Int = 0x0002;

	/** [renderableType] mask bit indicating OpenGL ES 2.x **/
	public static inline var OPENGL_ES2_BIT : Int = 0x0004;

	/** [renderableType] mask bit indicating OpenGL 1.x or 2.x **/
	public static inline var OPENGL_BIT : Int = 0x0008;

	/**
		A mask indicating which client APIs can render into a surface created
		with respect to this [Config].  The valid bit settings are
		[OPENGL_BIT], [OPENGL_ES_BIT], [OPENGL_ES2_BIT], [OPENVG_BIT].

		Creation of a client API context based on a [Config] will fail unless
		the [Config]'s [renderableType] attribute includes the bit
		corresponding to that API and version.

		Default: [OPENGL_ES_BIT] Criteria: [Mask]
	**/
	public var renderableType(default,null): Int;

	/**
		Indicates the number of multisample buffers, which must be zero or one.
		[samples] gives the number of samples per pixel; if [sampleBuffers] is
		zero, then [samples] will also be zero.  If [sampleBuffers] is one,
		then the number of color, depth, and stencil bits for each sample in
		the multisample buffer are as specified by the [*Size] attributes.

		The multisample buffer contains multisample information (color values,
		and possibly stencil and depth values) generated by multisample
		rasterization.  The format of the multisample buffer is not specified,
		and its contents are not directly accessible.  Only the existence of
		the multisample buffer, together with the number of samples it
		contains, are exposed by EGL.

		Operations such as posting a surface with [swapBuffers], copying a
		surface with [copyBuffers], reading from the color buffer using client
		API commands, and binding a client API context to a surface, may cause
		resolution of the multisample buffer to the color buffer.

		Multisample resolution combines and filters per-sample information in
		the multisample buffer to create per-pixel colors stored in the color
		buffer.  The details of this filtering process are normally chosen by
		the implementation, but under some circumstances may be controlled on a
		per-surface basis using surface attributes.

		There are no single-sample depth or stencil buffers for a multisample
		[Config]; the only depth and stencil buffers are those in the
		multisample buffer.  If the color samples in the multisample buffer
		store fewer bits than are stored in the color buffers, this fact wil
		not be reported accurately.  Presumably a compression scheme is being
		employed, and is expected to maintain an aggregate resolution equal to
		that of the color buffers.

		Default: 0 Criteria: [AtLeast] Order: [Smaller] Priority: 5
	**/
	public var sampleBuffers(default,null): Int;

	/**
		Gives the number of samples per pixel; if [sampleBuffers] is
		zero, then [samples] will also be zero.  If [sampleBuffers] is one,
		then the number of color, depth, and stencil bits for each sample in
		the multisample buffer are as specified by the [*Size] attributes.

		There are no single-sample depth or stencil buffers for a multisample
		[Config]; the only depth and stencil buffers are those in the
		multisample buffer.  If the color samples in the multisample buffer
		store fewer bits than are stored in the color buffers, this fact wil
		not be reported accurately.  Presumably a compression scheme is being
		employed, and is expected to maintain an aggregate resolution equal to
		that of the color buffers.

		Default: 0 Criteria: [AtLeast] Order: [Smaller] Priority: 6
	**/
	public var samples(default,null): Int;

	/**
		Indicates the depth of the stencil buffer in bits.  This buffer is used
		for 3D graphics rendering and contains fragment stencil information
		generated during rasterization.

		Default: 0 Criteria: [AtLeast] Order: [Smaller] Priority: 8
	**/
	public var stencilSize(default,null): Int;

	/** [surfaceType] mask bit indicating support for pbuffers **/
	public static inline var PBUFFER_BIT : Int = 0x0001;

	/** [surfaceType] mask bit indicating support for pixmaps **/
	public static inline var PIXMAP_BIT : Int = 0x0002;

	/** [surfaceType] mask bit indicating support for windows **/
	public static inline var WINDOW_BIT : Int = 0x0004;
	
	/**
		[surfaceType] mask bit indicating support for vector graphics rendering in linear colorspace.

		If [VG_COLORSPACE_LINEAR_BIT] is set in [surfaceType], then the
		[vgColorspace] attribute may be set to [vgColorspaceLinear] when
		creating a window, pixmap, or pbuffer surface.
	**/
	public static inline var VG_COLORSPACE_LINEAR_BIT : Int = 0x0020;

	/**
		[surfaceType] mask bit indicating support for vector graphics rendering with premultiplied alpha.

		If [VG_ALPHA_FORMAT_PRE_BIT] is set in [surfaceType], then the
		[vgAlphaFormat] attribute may be set to [vgAlphaFormatPre] when
		creating a window, pixmap, or pbuffer surface.
	**/
	public static inline var VG_ALPHA_FORMAT_PRE_BIT : Int = 0x0040;

	/**
		[surfaceType] mask bit indicating support for box filtered multisample resolve.

		If [MULTISAMPLE_RESOLVE_BOX_BIT] is set in [surfaceType], then the
		[multisampleResolve] attribute of a surface can be specified as a box
		filter.
	**/
	public static inline var MULTISAMPLE_RESOLVE_BOX_BIT : Int = 0x0200;

	/**
		[surfaceType] mask bit indicating support for setting swap behavior for color buffers.

		If [SWAP_BEHAVIOR_PRESERVED_BIT] is set in [surfaceType], then the
		[swapBehavior] attribute of a surface can be specified to preserve
		color buffer contents.
	**/
	public static inline var SWAP_BEHAVIOR_PRESERVED_BIT : Int = 0x0400;

	/**
		Indicates capabilities of surface that can be created with this
		[Config] (the config is said to support these surface types).  Valid
		bit settings are [WINDOW_BIT], [PIXMAP_BIT], [PBUFFER_BIT],
		[MULTISAMPLE_RESOLVE_BOX_BIT], [SWAP_BEHAVIOR_PRESERVED_BIT],
		[VG_COLORSPACE_LINEAR_BIT], and [ALPHA_FORMAT_PRE_BIT].
		
		For example, a [Config] for which the value of the [surfaceType]
		attribute is [WINDOW_BIT][|][PIXMAP_BIT][|][PBUFFER_BIT] can be used to
		create any type of EGL surface, while a [Config] for which this
		attribute value is [WINDOW_BIT] cannot be used to create a pbuffer or
		pixmap.

		Default: [WINDOW_BIT] Criteria: [Mask]
	**/
	public var surfaceType(default,null): Int;

	/**
		Indicates whether or not a configuration supports transparency and the
		type supported.

		If [transparentType] is [none], then the values for
		[transparentRedValue], [transparentGreenValue], and
		[transparentBlueValue] are undefined.  Otherwise, they are interpreted
		as integer framebuffer values between 0 and the maximum framebuffer
		value for the component.

		Default: [none] Criteria: [Mask]
	**/
	public var transparentType(default,null): egl.types.TransparentType;

	/**
		transparent red value

		Default: [DontCare] Criteria: [Exact]
	**/
	public var transparentRedValue(default,null): Int;

	/**
		transparent green value

		Default: [DontCare] Criteria: [Exact]
	**/
	public var transparentGreenValue(default,null): Int;

	/**
		transparent blue value

		Default: [DontCare] Criteria: [Exact]
	**/
	public var transparentBlueValue(default,null): Int;

}


