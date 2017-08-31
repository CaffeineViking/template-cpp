config="debug"
# config="debug_static"
all: FORCE
	premake5 gmake
	make -j8 -C build config=${config}
test: FORCE
	premake5 gmake
	make -j8 -C build project-tests config=${config}
	bin/project-tests ${args}
# lib: FORCE
# 	premake5 gmake
# 	make -j8 -C build project config=${config}
run: FORCE
	premake5 gmake
	make -j8 -C build project config=${config}
	bin/project ${args}

docs: FORCE
	doxygen docs/Doxyfile
	mv docs/html docs/reference
	make -C docs/latex
	mv docs/latex/refman.pdf docs/manual.pdf
tags: FORCE
	ctags -R src/project include/project
	cscope -Rb -s src/project -s include/project

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

# Clarifies gmake that these aren't real deps.
.PHONY: all test run docs tags clean distclean
