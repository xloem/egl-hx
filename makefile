doc : doc/index.html

.PHONY : doc

%/index.html : %/haxedoc.xml
	cd "$*" && haxedoc haxedoc.xml -f EGL -f egl

%/haxedoc.xml : *.hx */*.hx */*/*.hx
	mkdir -p "$*"
	haxe -xml "$@" $^

clean :
	-rm -rf doc/index.html doc/haxedoc.xml doc/content
