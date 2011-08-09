package egl.types;

enum MultisampleBehavior {
	/**
		Chooses the default implementation-defined filtering method.
	**/
	defaultMethod;

	/**
		Chooses a one-pixel wide box filter placing equal weighting on all
		multisample values.
	**/
	box;
}
