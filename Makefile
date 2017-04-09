config="debug"
# config="debug_static"
all: FORCE
	premake5 gmake
	make -j8 -C build config=${config}
test: FORCE
	premake5 gmake
	make -j8 -C build template-tests config=${config}
	bin/template-tests ${args}
# lib: FORCE
# 	premake5 gmake
# 	make -j8 -C build template config=${config}
run: FORCE
	premake5 gmake
	make -j8 -C build template config=${config}
	bin/template ${args}

docs: FORCE
	doxygen docs/Doxyfile
	mv docs/html docs/reference
	make -C docs/latex
	mv docs/latex/refman.pdf docs/manual.pdf
tags: FORCE
	ctags -R src/template include/template
	cscope -Rb -s src/template -s include/template

clean: FORCE
	rm -rf build
	rm -rf docs/latex
	rm -rf docs/build
distclean: clean
	rm -rf bin
	# rm -rf lib
	rm -rf docs/reference
	rm -f docs/manual.pdf
FORCE:

# Clarifies that these are not file deps...
.PHONY: all test run docs tags clean distclean
