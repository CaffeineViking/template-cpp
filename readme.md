C/C++ Template
==============

Simple build system for C/C++.

Structure
---------

* `bin`: contains the built software and accompanying testing suite.

* `build`: stores intermediate object files and generated GNU Make files.

* `docs`: any generated documentation for this project is over here.

* `include`: both external and internal project headers are here.

* `lib`: any generated libraries from the project reside here.

* `license.md`: please look through this very carefully.

* `premake5.lua`: configuration file for the build system.

* `readme.md`: this file, contains information on the project.

* `share`: any extra data that needs to be bundled should be here.

* `src`: all source code for the project should be located below here.

* `tests`: source code for the project's testing suite, using Catch syntax.

Building
--------

1. Place yourself in the root directory of this project.

2. Acquire the latest version of the `premake5` build system.

3. Thereafter, execute `premake5 gmake` if building on Make.

4. Finally, issue the command `make -C build` and wait.

5. When complete, either `bin` or `lib` are built.

6. Tests can be run with `bin/*-tests` program.
