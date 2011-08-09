package egl;

import Surface.RenderBufferValue;

enum TextureFormatValue {
	noTexture;
	rgb;
	rgba;
}

enum TextureTargetValue {
	noTexture;
	texture2D;
}

/**
	EGL supports off-screen rendering surfaces in pbuffers.  Pbuffers differ
	from windows in the following ways:

	1. Pbuffers are typically allocated in offscreen (non-visible) graphics
	memory and are intended only for accelerated offscreen rendering.
	Allocation can fail if there are insufficient graphics resources
	(implementations are not required to virtualize framebuffer memory).
	Clients should deallocate pbuffers when they are no longer in use, since
	graphics memory is often a scarce resource.

	2. Pbuffers are EGL resources and have no associated native window or
	native window type.  It may not be possible to render to pbuffers using
	native rendering APIs.
**/
class PbufferSurface extends Surface {

	/**
		Create a single pbuffer surface object.

		[attribList] specifies a list of attributes for the pbuffer.  The list
		has the same structure as for [chooseConfig].  Attributes that can be
		specified in [attribList] include [width], [height], [largestPbuffer],
		[textureFormat], [textureTarget], [mipmapTexture], [vgColorspace], and
		[vgAlphaFormat].

		It is possible that some platforms will define additional attributes
		specific to those environments, as an EGL extension.

		[attribList] may be null or empty, in which case all the attributes
		assume their default values.

		If the value of [textureFormat] is not [noTexture], then the pbuffer
		width and height specify the size of the level zero texture image.

		The resulting pbuffer will contain color buffers and ancillary buffers
		as specified by [config].

		The contents of the depth and stencil buffers may not be preserved when
		rendering an OpenGL ES texture to the pbuffer and switching which image
		of the texture is rendered to (e.g., switching from rendering one
		mipmap level to rendering another).

		If the pbuffer could not be created due to insufficient resources, then
		an [egl.errors.BadAlloc] error is thrown.  If [config] is not a valid
		[Config], an [egl.errors.BadConfig] error is thrown.  If the value
		specified for either [width] or [height] is less than zero, an
		[egl.errors.BadParameter] error is thrown.  If [config] does not
		support pbuffers, and [egl.errors.BadMatch] error is thrown.  In
		addition, an [egl.errors.BadMatch] error is thrown if any of the
		following conditions are true:

		- The [textureFormat] attribute is not [noTexture], and [width] or
		[height] specify an invalid size (e.g., the texture size is not a power
		of two, and the underlying OpenGL ES implementation does not support
		non-power-of-two textures).

		- The [textureFormat] attribute is [noTexture], and [textureTarget] is
		something other than [noTexture]; or, [textureFormat] is something
		other than [noTexture], and [textureTarget] is [noTexture].

		Finally, an [egl.errors.BadAttribute] error is thrown if any of the
		[textureFormat], [textureTarget], or [mipmapTexture] attributes are
		specified, but [config] does not support OpenGL ES rendering (e.g. the
		[renderableType] attribute does not include at least one of
		[OPENGL_ES_BIT] or [OPENGL_ES2_BIT].

		Pbuffers may also be created by binding renderable buffers created in
		client APIs to EGL.  Currently, the only client API resources which may
		be bound in this fashion are OpenVG [Image] objects.
		
		To bind a client API renderable buffer to a pbuffer, provide a value
		for the [buffer] parameter.  This creates a single pbuffer surface
		bound to the specified [buffer] for part or all of its buffer storage.
		The width and height of the pbuffer are determined by the width and
		height of [buffer], and the [vgColorspace] and [vgAlphaFormat]
		attributes of the surface are determined by the [ImageFormat] of
		[buffer].

		The resulting pbuffer will contain color and ancillary buffers as
		specified by [config].  Buffers which are present in [buffer]
		(normally, just the color buffer) will be bound to EGL.  Buffers which
		are not present in [buffer] (such as depth and stencil, if [config]
		includes those buffers) will be allocated by EGL in the same fashion as
		for a surface created without a client buffer.

		In addition to the errors described above, creating a pbuffer from a
		client buffer may fail and throw errors for the following reasons:

		- If the buffer type is not a recognized client API resource type, an
		[egl.errors.BadParameter] error is thrown.

		- If [buffer] is not a valid client API resource in the currently bound
		context corresponding to its type, an [egl.errors.BadParameter]
		error is thrown.

		- If the buffers contained in [buffer] do no correspond to a proper
		subset of the buffers described by [config], and match the bit depths
		for those buffers specified in [config], then an [egl.errors.BadMatch]
		error is thrown.  For example, an [Image] with pixel format
		[lRGBA_8888] corresponds to a [Config] with [redSize],
		[greenSize], [blueSize], and [alphaSize] values of 8.

		- If no context corresponding to the specified buffer type is current,
		an [egl.errors.BadAccess] error is thrown.

		- There may be additional constraints on which types of buffers may be
		bound to EGL surfaces, as described in client API specifications.  If
		those constraints are violated, then an [egl.errors.BadMatch] error is
		thrown.  An example of such an additional constraint is an
		implementation which cannot support an OpenVG [Image] being bound to a
		pbuffer which will be used as a mipmapped OpenGL ES texture (e.g. whose
		[mipmapTexture] attribute is True).

		- If [buffer] is already bound to another pbuffer, or is in use by a
		client API, an [egl.errors.BadAccess] error is thrown.

		Binding client API buffers to EGL pbuffers create the possibility of
		race conditions, and of buffers being deleted through one API while
		still in use in another API.  To avoid these problems, a number of
		constraints apply to bound client API buffers:

		- Bound buffers may be used exclusively by either EGL, or the client
		API that originally created them.

		For example, if an [Image] is bound to a pbuffer, and that pbuffer is
		bound to any client API rendering context, then the [Image] may not
		be used as the explicit source or destination of any OpenVG
		operation.  Errors resulting from such use are described in client
		API specifications.

		Similarly, while an [Image] is in use by OpenVG, the pbuffer it is
		bound to may not be made current to any client API context.

		- Binding a buffer creates an additional reference to it, and
		implementations must respect outstanding references when destroying
		objects.

		For example, if an [Image] is bound to a pbuffer, destroying the image
		with [destroy] will not free the underlying buffer, because it is still
		in use by EGL.  However, following [destroy] the buffer may only be
		referred to via the EGL pbuffer handle, since the OpenVG handle to that
		buffer no longer exists.

		Similarly, destroying the pbuffer with [destroy] will not free the
		underlying buffer, because it is still in use by OpenVG.  However,
		following [destroy] the buffer may only be referred to via the OpenVG
		[Image] handle, since the EGL pbuffer handle no longer exists.
	**/
	public function new( dpy : Display, ?buffer : Dynamic, config : Config, attribList : Dynamic ) {
		// TODO: STUB
	}

	/**
		Defines a two-dimensional texture image.  The texture image consists of
		the image data in [buffer] for this surface, and need not be copied.
		Currently the only value accepted for [buffer] is [backBuffer], which
		indicates the buffer into which OpenGL ES rendering is taking place
		(this is true even when using a single-buffered surface, such as a
		pixmap).  In future versions of EGL, additional [buffer] values may be
		allowed to bind textures to other buffers in a [Surface].

		The texture target, the texture format and the size of the texture
		components are derived from attributes of this surface, which must
		support one of the [bindToTextureRGB] or [bindToTextureRGBA]
		attributes.

		Note that any existing images associated with the different mipmap
		levels of the texture object are freed.

		The attribute [textureFormat] determines the base internal format of the texture.  The component sizes are also determined by the [redSize], [greenSize], [blueSize], and [alphaSize] attributes.

		The texture target is derived from the [textureTarget] attribute.  If
		the attribute value is [texture2D], then [buffer] defines a texture for
		the two-dimensional texture object which is bound to the current
		context (hereafter referred to as the current texture object).

		If the display and surface are those of the calling thread's current
		context, [bindTexImage] performs an implicit [flush].  For other
		surfaces, [bindTexImage] waits for all effects from previously issued
		client API commands drawing to the surface to complete before defining
		the texture image, as though [finish] were called on the last context
		to which that surface were bound.

		After [bindTexImage] is called, this surface is no longer available for
		reading or writing.  Any read operation, such as [readPixels] or
		[copyBuffers], which reads values from any of the surface's color
		buffers or ancillary buffers will produce indeterminate results.  In
		addition, draw operations that are done to the surface before its color
		buffer is released from the texture produce indeterminate results.
		Specifically, if the surface is current to a context and thread then
		rendering commands will be processed and the context state will be
		updated, but the surface may or may not be written.  [swapBuffers] has
		no effect if it is called on a bound surface.

		Client APIs other than OpenGL ES may be used to render into a surface
		later bound as a texture.  The effects of binding a surface as an
		OpenGL ES texture when the surface is current to a client API context
		other than OpenGL ES are generally similar to those described above,
		but there may be additional restrictions.  Applications using
		mixed-mode render-to-texture in this fashion should unbind surface from
		all client API contexts before binding those surfaces as OpenGL ES
		textures.

		Note that the color buffer is bound to a texture object.  If the
		texture object is shared between contexts, then the color buffer is
		also shared.  If a texture object is deleted before [releaseTexImage]
		is called, then the color buffer is released and the surface is made
		available for reading and writing.

		Texture mipmap levels are automatically generated when all of the
		following conditions are met while calling [bindTexImage]:

		- The [mipmapTexture] attribute of the pbuffer being bound is True.

		- The OpenGL ES texture parameter [generateMipmap] is True for the
		currently bound texture.

		- The value of the [mipmapLevel] attribute of the pbuffer being bound
		is equal to the value of the texture parameter [textureBaseLevel].

		In this case, additional mipmap levels are generated as described in
		section 3.8 of the OpenGL ES 1.1 Specification.

		It is not an error to call [texImage2D] or [copyTextImage2D] to replace
		an image of a texture object that has a color buffer bound to it.
		However, these calls will cause the color buffer to be released
		back to the surface and new memory will be allocated for the
		texture.  Note that the color buffer is released even if the image
		that is being defined is a mipmap level that was not defined by the
		color buffer.

		If [bindTexImage] is called an the surface attribute [textureFormat] is
		set to [noTexture], then an [egl.errors.badMatch] error is thrown.  If
		[buffer] is already bound to a texture then an [egl.errors.BadAccess]
		error is thrown.  If [buffer] is not a valid buffer, then an
		[egl.errors.BadParameter] error is generated.  If this is not a valid
		[PbufferSurface] supporting texture binding, then an
		[egl.errors.BadSurface] error is generated.

		[bindTexImage] is ignored if there is no current rendering context.

		Note that conformant OpenGL ES implementations are not required to
		support render to texture; that is, there may be no [Config]s
		supporting the [bindToTextureRGB] or [bindToTextureRGBA] attributes.
		Render t otexture is functionally subsumed by the newer framebuffer
		object extension to OpenGL ES, and may eventually be deprecated.
		Render to texture is not supported for OpenGL contexts.
	**/
	public function bindTexImage( dpy : Display, ?buffer : RenderBufferValue ) {
		// TODO: STUB
	}

	/**
		Release a color buffer that is being used as a texture.  The color
		buffer is released back to the surface.  The surface is made available
		for reading and writing when it no longer has any color buffers bound
		as textures.

		The contents of the color buffer are undefined when it is first
		released.  In particular, there is no guarantee that the texture image
		is still present.  However, the contents of other color buffers are
		unaffected by this call.  Also, the contents of the depth and stencil
		buffers are not affected by [bindTexImage] and [releaseTexImage].

		If the specified color buffer is no longer bound to a texture (e.g.,
		because the texture object was deleted) then [releaseTexImage] has no
		effect.  No error is thrown.

		After a color buffer is released from a texture (either explicitly by
		calling [releaseTexImage] or implicitly by calling a routine such as
		[texImage2D], all texture images that were defined by the color buffer
		become null.

		If [releaseTexImage] is called and the value of surface attribute
		[textureFormat] is [noTexture], then an [egl.errors.BadMatch] error is
		returned.  If [buffer] is not a valid buffer (currently only
		[backBuffer] may be specified), then an [egl.errors.BadParameter] error
		is thrown.  If [surface] is not a valid bound pbuffer surface, then an
		[egl.errors.BadSurface] error is thrown.
	**/
	public function releaseTexImage( dpy : Display, ?buffer : RenderBufferValue ) {
		// TODO: STUB
	}

	/**
		Specifies the format of the OpenGL ES texture that will be created when
		a pbuffer is bound to a texture map.  The default value of
		[textureFormat] is [noTexture].
	**/
	public var textureFormat(default,never) : TextureFormatValue;

	/**
		Specifies the target for the OpenGL ES texture that will be created
		when the pbuffer is created with a texture format of [rgb] or [rgba].
		The target can be set to [noTexture] or [texture2D].  The default value
		of [textureTarget] is [noTexture].
	**/
	public var textureTarget(default,never) : TextureTargetValue;

	/**
		Indicates whether storage for OpenGL ES mipmaps should be allocated.
		Space for mipmaps will be set aside if the attribute value is True and
		[textureFormat] is not [noTexture].  The default value for
		[mipmapTexture] is False.
	**/
	public var mipmapTexture(default,never) : Bool;

	/**
		Indicates which level of the OpenGL ES mipmap texture should be
		rendered.  If the value of this attribute is outside the range of
		supported mipmap levels, the closest valid mipmap level is selected for
		rendering.  The initial value of this attribute is 0.

		If the value of [textureFormat] is [noTexture], or if the value of
		[textureTarget] is [noTexture], then [mipmapLevel] may be set, but has
		no effect.

		If OpenGL ES rendering is not supported by this surface, then trying to
		set [mipmapLevel] will cause an [egl.errors.BadParameter] error.
	**/
	public var mipmapLevel(default,default) : Int;

	/**
		Use to get the largest available pbuffer when the allocation of the
		pbuffer would otherwise fail.  The width and height of the allocated
		pbuffer will never exceed the values of [width] and [height],
		respectively.  If the pbuffer will be used as an OpenGL ES texture
		(i.e., the value of [textureTarget] is [texture2D], and the value of
		[textureFormat] is [rgb] or [rgba]), then the aspect ratio will be
		preserved and the new width and height will be valid sizes for the
		texture target (e.g. if the underlying OpenGL ES implementation does
		not support non-power-of-two textures, both the width and height will
		be a power of 2).  The default value of [largestPbuffer] is False.
	**/
	public var largestPbuffer(default,never) : Bool;
}
