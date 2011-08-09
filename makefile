doc : doc/index.html

.PHONY : doc

%/index.html : %/haxedoc.xml
	cd "$*" && haxedoc haxedoc.xml

%/haxedoc.xml : */*.hx */*/*.hx
	mkdir -p "$*"
	haxe -xml "$@" $^
