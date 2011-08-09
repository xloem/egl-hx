package egl;

typedef NativeDisplayType = Dynamic;

/**
  Represents the abstract display on which graphics are drawn.  In most
  environments a display corresponds to a single physical screen.  The
  initialization routines include a method for querying a default display, and
  platform-specific EGL extensions may be defined to obtain other displays.
  All EGL objects are associated with a [Display], and exist in a namespace
  defined by that display.
**/
class Display {

	/*************************************/
	/**** EGLSpec 3.2: Initialization ****/
	/*************************************/
	
	public static inline var DEFAULT_DISPLAY : NativeDisplayType = null;
	public static inline var NO_DISPLAY : Display = null;

	/**
		Obtain a display object.
		
		The type of [displayID] is implementation-specific, and it describes a
		specific display provided by the system EGL is running on.  If
		[displayID] is [DEFAULT_DISPLAY], a default display is returned.
		Multiple calls made to [get] with the same [displayID] will all return
		the same display object.

		If no display matching [displayID] is available, [NO_DISPLAY] is
		returned.  No error is thrown in this case.
	**/
	public static function get( ?displayID : NativeDisplayType = DEFAULT_DISPLAY ) : Display {
		// TODO: STUB
		return null;
	}

	/**
		Initialize EGL on a display.

		[version] is updated with the major and minor version numbers of the
		EGL implementation (for example, in an EGL 1.2 implementation, the
		values of [major] and [minor] would be 1 and 2, respectively).
		[version] is not updated if it is not specified.

		[egl.errors.BadDisplay] is thrown if this is not a valid display
		object.  [egl.errors.NotInitialized] is thrown if EGL cannot be
		initialized for an otherwise valid display object.

		Initializing an already-initialized display is allowed, but the only
		effect of such a call is to update the EGL version numbers.  An
		initialized display may be used from other threads in the same address
		space without being initialized again in those threads.

		At any point a display may either be initialized or uninitialized.  All
		displays start out uninitialized.  A display becomes initialized after
		[initialize] is successfully called on it.  A display becomes
		uninitialized after [terminate] is successfully called on it.  The
		functions [initialize], [terminate], and in some cases [makeCurrent]
		may be called on an uninitialized display.  All other EGL functions
		which require a display object will failed and throw an
		[egl.errors.NotInitialized] error when passed a valid but uninitialized
		display.
	**/
	public function initialize( ?version : { major : Int, minor : Int } ) : Void {
		// TODO: STUB
		if ( version != null ) {
			version.major = 1;
			version.minor = 4;
		}
	}

	/**
		Release resources associated with use of EGL and client APIs on a
		display.

		Termination marks all EGL-specific resources, such as contexts and
		surfaces, associated with this display for deletion.  All such resource
		objects are invalid as soon as [terminate] returns, but the display
		object istelf remains valid.  Passing such objects to any other EGL
		command will throw [egl.errors.BadSurface] or [egl.errors.BadContext]
		errors.  Applications should not try to perform useful work with such
		resources following [terminate]; only [makeCurrent] or [releaseThread]
		should be called, to complete deletion of these resources.

		If contexts or surfaces created with respect to this display are
		current to any thread, then they are not actually destroyed while they
		remain current.  Such contexts an surfaces will be destroyed as soon as
		[releaseThread] is called from the thread they are bound to, or
		[makeCurrent] is called from that thread with the current rendering API
		set such that the current context is affected.  Use of bound contexts
		and surfaces (that is, continuing to issue commands to a bound client
		API context) will not result in interruption or termination of
		applications, but rendering results are undefined, and client APIs may
		generate errors.

		If this is not a valid display object, an [egl.errors.BadDisplay] error
		is thrown.

		Termination of a display that has already been terminated, or has not
		yet been initialized, is allowed, but there is no effect of such a
		call, since there are no EGL resources associated with the display to
		release.  A terminated display may be re-initialized by calling
		[initialize] again.  When re-initializing a terminated display,
		resources which were marked for deletion as a result of the earlier
		termination remain so marked, and objects which previously referred to
		them remain invalid.

		At any point a display may either be initialized or uninitialized.  All
		displays start out uninitialized.  A display becomes initialized after
		[initialize] is successfully called on it.  A display becomes
		uninitialized after [terminate] is successfully called on it.  The
		functions [initialize], [terminate], and in some cases [makeCurrent]
		may be called on an uninitialized display.  All other EGL functions
		which require a display object will failed and throw an
		[egl.errors.NotInitialized] error when passed a valid but uninitialized
		display.
	**/
	public function terminate() : Void {
		// TODO: STUB
	}

	/*************************************/
	/**** EGLSpec 3.3: EGL Versioning ****/
	/*************************************/

	/**
		Returns an array of strings describing which client rendering APIs are
		supported, which must include at least one of "OpenGL", "OpenGL_ES", or
		"OpenVG".

		An [egl.errors.NotInitialized] error is thrown if EGL is not
		initialized on this display.
	**/
	public function queryClientApis() : Array<String> {
		// TODO: STUB
		return [];
	}

	/**
		Returns an array of strings describing which EGL extensions are
		supported by the EGL implementation running on this display.  Extension
		names do not contain spaces.  If there are no extensions to EGL, then
		an empty array is returned.

		An [egl.errors.NotInitialized] error is thrown if EGL is not
		initialized on this display.
	**/
	public function queryExtensions() : Array<String> {
		// TODO: STUB
		return [];
	}

	/**
		Returns an implementation dependent string describing some aspect of
		the EGL implementation running on this display.

		An [egl.errors.NotInitialized] error is thrown if EGL is not
		initialized on this display.
	**/
	public function queryVendor() : String {
		// TODO: STUB
		return "";
	}

	/**
		Returns a string of the format:
			<major_version.minor_version><space><vendor_specific_info>

		Both the major and minor portions of the version number are numeric.
		Their values must match the [major] and [minor] values returned by
		[initialize].  The vendor-specific information is optional; if present,
		its format and contents are implementation specific.

		An [egl.errors.NotInitialized] error is thrown if EGL is not
		initialized on this display.
	**/
	public function queryVersion() : String {
		// TODO: STUB
		return "1.4";
	}

	/************************************************/
	/**** EGLSpec 3.4.1: Querying Configurations ****/
	/************************************************/

	/**
		Return the total number of configurations available on this display.
		
		An [egl.errors.NotInitialized] error is thrown if EGL is not
		initialized on this display.
	**/
	public function getNumConfigs() : Int {
		// TODO: STUB
		return 0;
	}

	/**
		Get a list of all [Config]s that are available on this display.  
		
		An [egl.errors.NotInitialized] error is thrown if EGL is not
		initialized on this display.
	**/
	public function getConfigs() : Array<Config> {
		// TODO: STUB
		return [];
	}

	/**

		Get [Config]s that match a list of attributes.  The return value is the
		same as for [getConfigs].  However, only configurations matching
		[attribList] will be returned.

		If an attribute is not included in [attribList], then the default value
		is used (it is said to be specified implicitly).  If [DontCare] is
		specified as an attribute value, then the attribute will not be
		checked.  [DontCare] may be specified for all attributes except [level]
		and [matchNativePixmap].  If [attribList] is null or empty, then
		selection and sorting of [Config]s is done according to the default
		criteria mentioned in the documentation for each [Config] attribute.

		Attributes are matched in an attribute-specific manner, as shown in the
		"Criteria" item of each attribute's documentation.  The criteria have
		the following meanings:

		[AtLeast] : Only [Config]s with an attribute value that meets or
		exceeds the specified value are selected.
		
		[Exact] : Only [Config]s whose attribute value equals the specified
		value are matched.

		[Mask] : Only [Config]s for which the bits set in the attribute value
		include all the bits that are set in the specified value are selected
		(additional bits mgiht be set in the attribute value).  Another way to
		think of it is to say that any bits present in the mask attribute must
		also be present in the [Config] attribute.  Thus, setting a mask
		attribute value of zero means that all configs will match that value.

		To retrieve a [Config] given its unique integer ID, use the [configID]
		attribute.  When [configID] is specified, all other attributes are
		ignored, and only the [Config] with the given ID is returned.

		If [maxPbufferWidth], [maxPbufferHeight], [maxPbufferPixels] are
		specified in attribList, then they are ignored.  [nativeVisual], if
		set, must be a [Class], the type of the requested native visual.  If
		[surfaceType] is specified in [attribList] and the mask that follows
		does not have [windowBit] set, or if there are no native visual types,
		then the [nativeVisual] attribute is ignored.

		If [transparentType] is set to [none] in [attribList], then the
		[transparentRedValue], [transparentGreenValue],
		and[transparentBlueValue] attributes are ignored.

		If [matchNativePixmap] is specified in [attribList], it must be
		followed by an attribute value which is a valid native pixmap.  Only
		[Config]s which support rendering to that pixmap will match this
		attribute.

		If no [Config] matching the attribute list exists, then the call
		succeeds, but returns no [Config]s.

		If more than one matching [Config] is found, then a list of [Config]s
		is returned.  The list is sorted by proceeding in ascending order of
		the priorities of the attributes.  That is, configurations that are not
		ordered by a lower numbered rule are sorted by the next higher numbered
		rule.

		Sorting for each rule is either numerically [Smaller] or [Larger] as
		described in the "Order" item of each attribute's documentation, or a
		[Special] sort order as described for each sort rule below:

		1. [Special]: by [caveatSlow] where the precedence is False, True.

		2. [Special]: by [colorBufferType] where the precedence is [rgb],
		[luminance].

		3. [Special]: by larger total number of color bits (for an RGB color
		buffer, this is the sum of [redSize], [greenSize], [blueSize], and
		[alphaSize]; for a luminance color buffer, the sum of [luminanceSize]
		and [alphaSize])  If the requested number of bits in [attribList] for a
		particular color component is 0 or [DontCare], then the number of bits
		for that component is not considered.

		4. [Smaller] [bufferSize].

		5. [Smaller] [sampleBuffers].

		6. [Smaller] [samples].

		7. [Smaller] [depthSize].

		8. [Smaller] [stencilSize].

		9. [Smaller] [alphaMaskSize].

		10. [Special]: by [nativeVisual] (the actual sort order is
		implementation-defined, depending on the meaning of native visual types).

		11. [Smaller] [configID] (this is always the last sorting rule, and
		guarantees a unique ordering).

		[Config]s are not sorted with respect to the parameters
		[bindToTextureRGB], [bindToTextureRGBA], [conformant], [level],
		[nativeRenderable], [maxSwapInterval], [minSwapInterval],
		[renderableType], [surfaceType], [transparentType],
		[transparentRedValue], [transparentGreenValue], and
		[transparentBlueValue].

	**/
	public function chooseConfig( attribList : Dynamic ) : Array<Config> {
		// TODO: STUB
		return [];
	}
}
