package egl.types;

enum RenderBuffer {
	// TODO: add more documentation from section 2.2.2
	/** Client APIs should render directly into the visible window.  **/
	singleBuffer;
	/** All client APIs should render into the back buffer.  **/
	backBuffer;
}
