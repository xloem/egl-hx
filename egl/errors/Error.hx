package egl.errors;

/**
	An error generated by an EGL call.  This class is not used directly;
	rather, its subclasses each individually represent a given EGL error code.
 **/
class Error {

	/**
		An instance of the most recent error in this thread.
	**/
	public static var MOST_RECENT(getMostRecent, never) : Error;

	private static inline function getMostRecent() : Error {
		return fromCode( EGL.GetError() );
	}

	/**
		The EGL error code associated with this error.
	**/
	public var code(getCode, never) : Int;

	/**
		The meaning of this error.
	**/
	public var meaning(getMeaning, never) : String;
	

	/**
		Acquire an Error subclass object for the associated EGL error code.
	**/
	public static inline function fromCode( code : Int ) : Error {
		switch ( code ) {
		case Success.CODE:
			return new Success();
		case NotInitialized.CODE:
			return new NotInitialized();
		case BadAccess.CODE:
			return new BadAccess();
		case BadAlloc.CODE:
			return new BadAlloc();
		case BadAttribute.CODE:
			return new BadAttribute();
		case BadConfig.CODE:
			return new BadConfig();
		case BadContext.CODE:
			return new BadContext();
		case BadCurrentSurface.CODE:
			return new BadCurrentSurface();
		case BadDisplay.CODE:
			return new BadDisplay();
		case BadMatch.CODE:
			return new BadMatch();
		case BadNativePixmap.CODE:
			return new BadNativePixmap();
		case BadNativeWindow.CODE:
			return new BadNativeWindow();
		case BadParameter.CODE:
			return new BadParameter();
		case BadSurface.CODE:
			return new BadSurface();
		case ContextLost.CODE:
			return new ContextLost();
		default:
			return null;
		};
	}

	private function getCode() : Int { return 0; }
	private function getMeaning() : String { return ""; }
}
