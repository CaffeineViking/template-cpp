C/C++ Template
==============

Simple build system for C/C++.

Structure
---------

* `bin`: contains the built software and accompanying testing suite.

* `build`: stores intermediate object files and generated GNU Make files.
    * `obj`: has all of the generated object files given under compilation.
    * `Makefile`: automatically generated file by calling `premake5 gmake`.
    * `*.make`: program specific make parameters for augmenting `Makefile`.

* `docs`: any generated documentation for this project is over here.

* `include`: both external and internal project headers are here.
    * `foreign`: any foreign headers which should be included.
    * `project directories`: internal headers for the project.

* `lib`: any generated libraries from the project reside here.

* `license.md`: please look through this very carefully.

* `premake5.lua`: configuration file for the build system.

* `readme.md`: this file, contains information on the project.

* `share`: any extra data that needs to be bundled should be here.

* `src`: all source code for the project should be located below here.
    * `project directories`: source code for a specific project build.
    * `foreign`: any external source files which might be needed.

* `tests`: source code for the project's testing suite, using Catch syntax.
    * `project directories`: project specific testing suite for a build.

Building
--------

1. Place yourself in the root directory of this project.

2. Acquire the latest version of the `premake5` build system.

3. Thereafter, execute `premake5 gmake` if building on Make.

4. Finally, issue the command `make -C build` and wait.

5. When complete, either `bin` or `lib` are built.

6. Tests can be run with `bin/*-tests` program.
