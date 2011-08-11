/**
	This class exposes every function and constant of the EGL specification.
	Based on egl.h from Khronos.
**/
extern class EGL {

	/* EGL Versioning */
	public static inline var VERSION_1_0 : Bool = true;
	public static inline var VERSION_1_1 : Bool = true;
	public static inline var VERSION_1_2 : Bool = true;
	public static inline var VERSION_1_3 : Bool = true;
	public static inline var VERSION_1_4 : Bool = true;

	/* EGL Enumerants. Bitmasks and other exceptional cases aside, most
	 * enums are assigned unique values starting at 0x3000.
	 */
	
	/* EGL aliases */
	public static inline var FALSE : EGLBoolean = 0;
	public static inline var TRUE : EGLBoolean = 1;
	
	/* Out-of-band handle values */
	public static inline var DEFAULT_DISPLAY : EGLNativeDisplayType = null;
	public static inline var NO_CONTEXT : EGLContext = 0;
	public static inline var NO_DISPLAY : EGLDisplay = 0;
	public static inline var NO_SURFACE : EGLSurface = 0;
	
	/* Out-of-band attribute value */
	public static inline var DONT_CARE : EGLint = 0;
	
	/* Errors / GetError return values */
	public static inline var SUCCESS : EGLint = 0x3000;
	public static inline var NOT_INITIALIZED : EGLint = 0x3001;
	public static inline var BAD_ACCESS : EGLint = 0x3002;
	public static inline var BAD_ALLOC : EGLint = 0x3003;
	public static inline var BAD_ATTRIBUTE : EGLint = 0x3004;
	public static inline var BAD_CONFIG : EGLint = 0x3005;
	public static inline var BAD_CONTEXT : EGLint = 0x3006;
	public static inline var BAD_CURRENT_SURFACE : EGLint = 0x3007;
	public static inline var BAD_DISPLAY : EGLint = 0x3008;
	public static inline var BAD_MATCH : EGLint = 0x3009;
	public static inline var BAD_NATIVE_PIXMAP : EGLint = 0x300A;
	public static inline var BAD_NATIVE_WINDOW : EGLint = 0x300B;
	public static inline var BAD_PARAMETER : EGLint = 0x300C;
	public static inline var BAD_SURFACE : EGLint = 0x300D;
	/** EGL 1.1 - IMG_power_management **/
	public static inline var CONTEXT_LOST : EGLint = 0x300E;
	
	/* Reserved 0x300F-0x301F for additional errors */
	
	/* Config attributes */
	public static inline var BUFFER_SIZE : EGLint = 0x3020;
	public static inline var ALPHA_SIZE : EGLint = 0x3021;
	public static inline var BLUE_SIZE : EGLint = 0x3022;
	public static inline var GREEN_SIZE : EGLint = 0x3023;
	public static inline var RED_SIZE : EGLint = 0x3024;
	public static inline var DEPTH_SIZE : EGLint = 0x3025;
	public static inline var STENCIL_SIZE : EGLint = 0x3026;
	public static inline var CONFIG_CAVEAT : EGLint = 0x3027;
	public static inline var CONFIG_ID : EGLint = 0x3028;
	public static inline var LEVEL : EGLint = 0x3029;
	public static inline var MAX_PBUFFER_HEIGHT : EGLint = 0x302A;
	public static inline var MAX_PBUFFER_PIXELS : EGLint = 0x302B;
	public static inline var MAX_PBUFFER_WIDTH : EGLint = 0x302C;
	public static inline var NATIVE_RENDERABLE : EGLint = 0x302D;
	public static inline var NATIVE_VISUAL_ID : EGLint = 0x302E;
	public static inline var NATIVE_VISUAL_TYPE : EGLint = 0x302F;
	public static inline var SAMPLES : EGLint = 0x3031;
	public static inline var SAMPLE_BUFFERS : EGLint = 0x3032;
	public static inline var SURFACE_TYPE : EGLint = 0x3033;
	public static inline var TRANSPARENT_TYPE : EGLint = 0x3034;
	public static inline var TRANSPARENT_BLUE_VALUE : EGLint = 0x3035;
	public static inline var TRANSPARENT_GREEN_VALUE : EGLint = 0x3036;
	public static inline var TRANSPARENT_RED_VALUE : EGLint = 0x3037;
	/** Attrib list terminator **/
	public static inline var NONE : EGLint = 0x3038;
	public static inline var BIND_TO_TEXTURE_RGB : EGLint = 0x3039;
	public static inline var BIND_TO_TEXTURE_RGBA : EGLint = 0x303A;
	public static inline var MIN_SWAP_INTERVAL : EGLint = 0x303B;
	public static inline var MAX_SWAP_INTERVAL : EGLint = 0x303C;
	public static inline var LUMINANCE_SIZE : EGLint = 0x303D;
	public static inline var ALPHA_MASK_SIZE : EGLint = 0x303E;
	public static inline var COLOR_BUFFER_TYPE : EGLint = 0x303F;
	public static inline var RENDERABLE_TYPE : EGLint = 0x3040;
	/** Pseudo-attribute (not queryable) **/
	public static inline var MATCH_NATIVE_PIXMAP : EGLint = 0x3041;
	public static inline var CONFORMANT : EGLint = 0x3042;
	
	/* Reserved 0x3041-0x304F for additional config attributes */
	
	/* Config attribute values */
	/** CONFIG_CAVEAT value **/
	public static inline var SLOW_CONFIG : EGLint = 0x3050;
	/** CONFIG_CAVEAT value **/
	public static inline var NON_CONFORMANT_CONFIG : EGLint = 0x3051;
	/** TRANSPARENT_TYPE value **/
	public static inline var TRANSPARENT_RGB : EGLint = 0x3052;
	/** COLOR_BUFFER_TYPE value **/
	public static inline var RGB_BUFFER : EGLint = 0x308E;
	/** COLOR_BUFFER_TYPE value **/
	public static inline var LUMINANCE_BUFFER : EGLint = 0x308F;
	
	/* More config attribute values, for EGL_TEXTURE_FORMAT */
	public static inline var NO_TEXTURE : EGLint = 0x305C;
	public static inline var TEXTURE_RGB : EGLint = 0x305D;
	public static inline var TEXTURE_RGBA : EGLint = 0x305E;
	public static inline var TEXTURE_2D : EGLint = 0x305F;
	
	/* Config attribute mask bits */
	/** SURFACE_TYPE mask bits **/
	public static inline var PBUFFER_BIT : EGLint = 0x0001;
	/** SURFACE_TYPE mask bits **/
	public static inline var PIXMAP_BIT : EGLint = 0x0002;
	/** SURFACE_TYPE mask bits **/
	public static inline var WINDOW_BIT : EGLint = 0x0004;
	/** SURFACE_TYPE mask bits **/
	public static inline var VG_COLORSPACE_LINEAR_BIT : EGLint = 0x0020;
	/** SURFACE_TYPE mask bits **/
	public static inline var VG_ALPHA_FORMAT_PRE_BIT : EGLint = 0x0040;
	/** SURFACE_TYPE mask bits **/
	public static inline var MULTISAMPLE_RESOLVE_BOX_BIT : EGLint = 0x0200;
	/** SURFACE_TYPE mask bits **/
	public static inline var SWAP_BEHAVIOR_PRESERVED_BIT : EGLint = 0x0400;
	
	/** RENDERABLE_TYPE mask bits **/
	public static inline var OPENGL_ES_BIT : EGLint = 0x0001;
	/** RENDERABLE_TYPE mask bits **/
	public static inline var OPENVG_BIT : EGLint = 0x0002;
	/** RENDERABLE_TYPE mask bits **/
	public static inline var OPENGL_ES2_BIT : EGLint = 0x0004;
	/** RENDERABLE_TYPE mask bits **/
	public static inline var OPENGL_BIT : EGLint = 0x0008;
	
	/* QueryString targets */
	public static inline var VENDOR : EGLint = 0x3053;
	public static inline var VERSION : EGLint = 0x3054;
	public static inline var EXTENSIONS : EGLint = 0x3055;
	public static inline var CLIENT_APIS : EGLint = 0x308D;
	
	/* QuerySurface / SurfaceAttrib / CreatePbufferSurface targets */
	public static inline var HEIGHT : EGLint = 0x3056;
	public static inline var WIDTH : EGLint = 0x3057;
	public static inline var LARGEST_PBUFFER : EGLint = 0x3058;
	public static inline var TEXTURE_FORMAT : EGLint = 0x3080;
	public static inline var TEXTURE_TARGET : EGLint = 0x3081;
	public static inline var MIPMAP_TEXTURE : EGLint = 0x3082;
	public static inline var MIPMAP_LEVEL : EGLint = 0x3083;
	public static inline var RENDER_BUFFER : EGLint = 0x3086;
	public static inline var VG_COLORSPACE : EGLint = 0x3087;
	public static inline var VG_ALPHA_FORMAT : EGLint = 0x3088;
	public static inline var HORIZONTAL_RESOLUTION : EGLint = 0x3090;
	public static inline var VERTICAL_RESOLUTION : EGLint = 0x3091;
	public static inline var PIXEL_ASPECT_RATIO : EGLint = 0x3092;
	public static inline var SWAP_BEHAVIOR : EGLint = 0x3093;
	public static inline var MULTISAMPLE_RESOLVE : EGLint = 0x3099;
	
	/* RENDER_BUFFER values / BindTexImage / ReleaseTexImage buffer targets */
	public static inline var BACK_BUFFER : EGLint = 0x3084;
	public static inline var SINGLE_BUFFER : EGLint = 0x3085;
	
	/* OpenVG color spaces */
	/** VG_COLORSPACE value **/
	public static inline var VG_COLORSPACE_sRGB : EGLint = 0x3089;
	/** VG_COLORSPACE value **/
	public static inline var VG_COLORSPACE_LINEAR : EGLint = 0x308A;
	
	/* OpenVG alpha formats */
	/** ALPHA_FORMAT value **/
	public static inline var VG_ALPHA_FORMAT_NONPRE : EGLint = 0x308B;
	/** ALPHA_FORMAT value **/
	public static inline var VG_ALPHA_FORMAT_PRE : EGLint = 0x308C;
	
	/**
		Constant scale factor by which fractional display resolutions &
		aspect ratio are scaled when queried as integer values.
	**/
	public static inline var DISPLAY_SCALING : EGLint = 10000;
	
	/** Unknown display resolution/aspect ratio **/
	public static inline var UNKNOWN : EGLint = -1;
	
	/* Back buffer swap behaviors */
	/** SWAP_BEHAVIOR value **/
	public static inline var BUFFER_PRESERVED : EGLint = 0x3094;
	/** SWAP_BEHAVIOR value **/
	public static inline var BUFFER_DESTROYED : EGLint = 0x3095;
	
	/** CreatePbufferFromClientBuffer buffer types **/
	public static inline var OPENVG_IMAGE : EGLint = 0x3096;
	
	/** QueryContext targets **/
	public static inline var CONTEXT_CLIENT_TYPE : EGLint = 0x3097;
	
	/** CreateContext attributes **/
	public static inline var CONTEXT_CLIENT_VERSION : EGLint = 0x3098;
	
	/* Multisample resolution behaviors */
	/** MULTISAMPLE_RESOLVE value **/
	public static inline var MULTISAMPLE_RESOLVE_DEFAULT : EGLint = 0x309A;
	/** MULTISAMPLE_RESOLVE value **/
	public static inline var MULTISAMPLE_RESOLVE_BOX : EGLint = 0x309B;
	
	/* BindAPI/QueryAPI targets */
	public static inline var OPENGL_ES_API : EGLenum = 0x30A0;
	public static inline var OPENVG_API : EGLenum = 0x30A1;
	public static inline var OPENGL_API : EGLenum = 0x30A2;
	
	/* GetCurrentSurface targets */
	public static inline var DRAW : EGLint = 0x3059;
	public static inline var READ : EGLint = 0x305A;
	
	/** WaitNative engines **/
	public static inline var CORE_NATIVE_ENGINE : EGLint = 0x305B;
	
	/* EGL 1.2 tokens renamed for consistency in EGL 1.3 */
	public static inline var COLORSPACE : EGLint = VG_COLORSPACE;
	public static inline var ALPHA_FORMAT : EGLint = VG_ALPHA_FORMAT;
	public static inline var COLORSPACE_sRGB : EGLint = VG_COLORSPACE_sRGB;
	public static inline var COLORSPACE_LINEAR : EGLint = VG_COLORSPACE_LINEAR;
	public static inline var ALPHA_FORMAT_NONPRE : EGLint = VG_ALPHA_FORMAT_NONPRE;
	public static inline var ALPHA_FORMAT_PRE : EGLint = VG_ALPHA_FORMAT_PRE;
	
	/* EGL extensions must request enum blocks from the Khronos
	 * API Registrar, who maintains the enumerant registry. Submit
	 * a bug in Khronos Bugzilla against task "Registry".
	 */
	
	
	
	/* EGL Functions */
	
	/**
		Retrieve the error code for the most recent EGL function in this thread.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.1">3.1 Errors</a>
	**/
	public static function GetError() : EGLint;
	
	/**
		Obtain a display.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.2">3.2 Initialization</a>
	**/
	public static function GetDisplay(display_id : EGLNativeDisplayType) : EGLDisplay;
	
	/**
		Initialize EGL on a display.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.2">3.2 Initialization</a>
	**/
	public static function Initialize(dpy : EGLDisplay, major : EGLintPtr, minor : EGLintPtr ) : EGLBoolean;
	
	/**
		Release resources associated with use of EGL and client APIs on a display.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.2">3.2 Initialization</a>
	**/
	public static function Terminate(dpy : EGLDisplay) : EGLBoolean;
	
	/**
		Query some aspect of the EGL implementation running on the specified display.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.3">3.3 Versioning</a>
	**/
	public static function QueryString(dpy : EGLDisplay, name : EGLint) : String;
	
	/**
		Get the list of all EGLConfigs that are available on the specified display.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.4.1">3.4.1 Querying Configurations</a>
	**/
	public static function GetConfigs(dpy : EGLDisplay, configs : Array<EGLConfig>,
	                                  config_size : EGLint) : EGLBoolean;
	
	/**
		Get EGLConfigs that match a list of attributes.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.4.1">3.4.1 Querying Configurations</a>
	**/
	public static function ChooseConfig(dpy : EGLDisplay, attrib_list : EGLintArray,
	                                    configs : Array<EGLConfig>, config_size : EGLint) : EGLBoolean;
	
	/**
		Get the value of an EGLConfig attribute.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.4.3">3.4.3 Querying Configuration Attributes</a>
	**/
	public static function GetConfigAttrib(dpy : EGLDisplay, config : EGLConfig,
	                                       attribute : EGLint, value : EGLintPtr) : EGLBoolean;
	
	/**
		Create an onscreen EGLSurface.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.5.1">3.5.1: Creating On-Screen Rendering Surfaces</a>
	**/
	public static function CreateWindowSurface(dpy : EGLDisplay, config : EGLConfig,
	                                           win : EGLNativeWindowType,
	                                           attrib_list : EGLintArray) : EGLSurface;

	/**
		Create a pbuffer.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.5.2">3.5.2: Creating Off-Screen Rendering Surfaces</a>
	**/
	public static function CreatePbufferSurface(dpy : EGLDisplay, config : EGLConfig,
	                                            attrib_list : EGLintArray) : EGLSurface;

	/**
		Create a pixmap rendering surface.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.5.4">3.5.4 Creating Native Pixmap Rendering Surfaces</a>
	**/
	public static function CreatePixmapSurface(dpy : EGLDisplay, config : EGLConfig,
	                                           pixmap : EGLNativePixmapType,
	                                           attrib_list : EGLintArray) : EGLSurface;

	/**
		Destroy an EGLSurface of any type.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.5.5">3.5.5 Destroying Rendering Surfaces</a>
	**/
	public static function DestroySurface(dpy : EGLDisplay, surface : EGLSurface) : EGLBoolean;

	/**
		Query an attribute associated with an EGLSurface.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.5.6">3.5.6 Surface Attributes</a>
	**/
	public static function QuerySurface(dpy : EGLDisplay, surface : EGLSurface,
	                                    attribute : EGLint, value : EGLintPtr) : EGLBoolean;
	
	/**
		Set the current rendering API.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.7">3.7 Rendering Contexts</a>
	**/
	public static function BindAPI(api : EGLenum) : EGLBoolean;
	
	/**
		Obtain the value of the current rendering API.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.7">3.7 Rendering Contexts</a>
	**/
	public static function QueryAPI() : EGLenum;
	
	/**
		Prevent native rendering API functions from executing until any
		outstanding client API rendering affecting the same surface is
		complete.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.8">3.8 Synchronization Primitives</a>
	**/
	public static function WaitClient() : EGLBoolean;
	
	/**
		Return EGL to its state at thread initialization.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.11">3.11 Releasing Thread State</a>
	**/
	public static function ReleaseThread() : EGLBoolean;
	
	/**
		Bind a client API renderable buffer to a pbuffer.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.5.3">3.5.3: Binding Off-Screen Rendering Surfaces To Client Buffers</a>
	**/
	public static function CreatePbufferFromClientBuffer(
			dpy : EGLDisplay, buftype : EGLenum, buffer : EGLClientBuffer,
			config : EGLConfig, attrib_list : EGLintArray ) : EGLSurface;
	
	/**
		Set an attribute for an EGLSurface.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.5.6">3.5.6 Surface Attributes</a>
	**/
	public static function SurfaceAttrib(dpy : EGLDisplay, surface : EGLSurface,
	                                     attribute : EGLint, value : EGLint) : EGLBoolean;
	
	/**
		Define a two-dimensional texture image.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.6.1">3.6.1 Binding a Surface to an OpenGL ES Texture</a>
	**/
	public static function BindTexImage(dpy : EGLDisplay, surface : EGLSurface, buffer : EGLint) : EGLBoolean;

	/**
		Release a color buffer that is being used as a texture.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.6.2">3.6.2 Releasing a surface from an OpenGL ES Texture</a>
	**/
	public static function ReleaseTexImage(dpy : EGLDisplay, surface : EGLSurface, buffer : EGLint) : EGLBoolean;
	
	
	/**
		Specify the minimum number of video frame periods per buffer swap for the window associated with the current context.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.9.3">3.9.3 Posting Semantics</a>
	**/
	public static function SwapInterval(dpy : EGLDisplay, interval : EGLint) : EGLBoolean;
	
	
	/**
		Create a rendering context for the current rendering API.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.7.1">3.7.1 Creating Rendering Contexts</a>
	**/
	public static function CreateContext(dpy : EGLDisplay, config : EGLConfig,
	                                     share_context : EGLContext,
	                                     attrib_list : EGLintArray) : EGLContext;
	
	/**
		Destroy a rendering context.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.7.2">3.7.2 Destroying Rendering Contexts</a>
	**/
	public static function DestroyContext(dpy : EGLDisplay, ctx : EGLContext) : EGLBoolean;
	
	/**
		Make a context current.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.7.3">3.7.3 Binding Contexts and Drawables</a>
	**/
	public static function MakeCurrent(dpy : EGLDisplay, draw : EGLSurface,
	                                   read : EGLSurface, ctx : EGLContext) : EGLBoolean;
	
	/**
		Get the current context for the current rendering API.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.7.4">3.7.4 Context Queries</a>
	**/
	public static function GetCurrentContext() : EGLContext;
	
	/**
		Get the surfaces used for rendering by a current context.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.7.4">3.7.4 Context Queries</a>
	**/
	public static function GetCurrentSurface(readdraw : EGLint) : EGLSurface;
	
	/**
		Get the display associated with a current context.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.7.4">3.7.4 Context Queries</a>
	**/
	public static function GetCurrentDisplay() : EGLDisplay;
	
	/**
		Obtain the value of context attributes.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.7.4">3.7.4 Context Queries</a>
	**/
	public static function QueryContext(dpy : EGLDisplay, ctx : EGLContext,
	                                    attribute : EGLint, value : EGLintPtr) : EGLBoolean;
	
	/**
		For backwards compatibility.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.8">3.8 Synchronization Primitives</a>
	**/
	public static function WaitGL() : EGLBoolean;

	/**
		Prevent a client API command sequence from executing until any
		outstanding native rendering affecting the same surface is complete.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.8">3.8 Synchronization Primitives</a>
	**/
	public static function WaitNative(engine : EGLint) : EGLBoolean;
	
	/**
		Post the color buffer to a window.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.9.1">3.9.1 Posting to a Window</a>
	**/
	public static function SwapBuffers(dpy : EGLDisplay, surface : EGLSurface) : EGLBoolean;
	
	/**
		Copy the color buffer to a native pixmap.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#subsection.3.9.2">3.9.2 Copying to a Native Pixmap</a>
	**/
	public static function CopyBuffers(dpy : EGLDisplay, surface : EGLSurface,
	                                   target : EGLNativePixmapType) : EGLBoolean;

	/**
		Query an extension function.
		See <a target="_blank" href="http://www.khronos.org/registry/egl/specs/eglspec.1.4.20110406.pdf#section.3.10">3.10 Obtaining Extension Function Pointers</a>
	**/
	public static function GetProcAddress<T>(procname : String) : T;
}

/* C-Style EGL Types */

typedef EGLint = Int;
typedef EGLBoolean = Int;
typedef EGLenum = Int;

typedef EGLConfig = Dynamic;
typedef EGLContext = Dynamic;
typedef EGLDisplay = Dynamic;
typedef EGLSurface = Dynamic;
typedef EGLClientBuffer = Dynamic;

import egl.types.Native;
typedef EGLNativeDisplayType = NativeDisplay;
typedef EGLNativePixmapType = NativePixmap;
typedef EGLNativeWindowType = NativeWindow;

/* EGL 1.2 types, renamed for consistency in EGL 1.3 */
typedef NativeDisplayType = EGLNativeDisplayType;
typedef NativePixmapType = EGLNativePixmapType;
typedef NativeWindowType = EGLNativeWindowType;

/** Allows the the use of EGLints by reference **/
class EGLintPtr {
	public var value : EGLint;
	public function new() {}
}

/** For attribute lists **/
typedef EGLintArray = Array<EGLint>;
