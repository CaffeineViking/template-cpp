C++14 Project Template
======================

Project template for C++14 using the Premake 5 build system.

Compiling and Testing
---------------------

1. Place yourself in the root directory of this project.
2. Execute `git submodule update --init --recursive`.
3. Acquire the latest version of the `premake5` build system.
4. Thereafter, execute `premake5 gmake` if building on Make.
5. Finally, issue the command `make -j8 -C build` and wait.
6. When complete, either `bin` or `lib` have been built.
7. Tests can be run with the `bin/*-tests` programs.
8. **Shortcuts:** `make run` and `make test`.

Usage and Documents
-------------------

See the `docs` directory for *maybe* the project documentation.

System Requirements
-------------------

Should run on anything, even on toaster-like potato-ish hardware.

Dependencies
------------

Fortunately, there aren't any dependencies besides `premake` now.

Structure
---------

* `bin`: contains the built software and accompanying testing suite.
* `build`: stores intermediate object files and generated GNU Make files.
    * `obj`: has all of the generated object files given under compilation.
    * `Makefile`: automatically generated by executing `premake5 gmake`.
    * `*.make`: program specific make config for augmenting `Makefile`.
* `docs`: any generated documentation for this project is over here.
* `foreign`: external headers and source for libraries and Catch.
* `include`: only internal headers from this project should go here.
    * `project directories`: internal headers for the project.
* `lib`: any generated libraries from the project reside here.
* `license.md`: please look through this very carefully.
* `premake5.lua`: configuration file for the build system.
* `readme.md`: this file, contains information on the project.
* `share`: any extra data that needs to be bundled should be here.
* `src`: all source code for the project should be located below here.
    * `project directories`: source code for specific project build.
    * `main.cc`:
* `tests`: source code for the project's testing suite, using Catch syntax.
    * `project directories`: project specific testing suite for one build.
    * `main.cc`:
* `utils`: any sort of helper scripts or similar should be over here.

Contributing
------------

1. See if there any updates upstream: `git remote update`
2. If you are already working on a feature branch, jump to step 4.
3. Create a new branch for your feature: `git branch <feature>`
4. Change to the feature branch by: `git checkout <feature>`
5. Start/continue building the feature. Jump to 7 if done.
6. Push your changes to your remote feature branch with:
   * `git add -A` (everything) or `git add -u` (updates).
   * `git commit -m "Message describing the additions."`
   * Publish remotely: `git push origin <feature>`
   * Go back to step 1 or 5 (if working quickly).
7. Your feature is done (single/many commits).
8. Fetch the changes from upstream first:
   * Go to master: `git checkout -b master`
   * Pull changes: `git pull origin master`
8. Rebase your changes on top of `master`:
   * Back to feature: `git checkout <feature>`
   * Thereafter, issue: `git rebase master`
   * Fix any conflicts that may happen...
   * Changes now on top of the Git tree.
9. Finally, go to GitHub and issue PR.
   * Listen in on other's feedback!
   * Make changes if necessary.
10. Back to the master: `git checkout master`
11. Pat yourself on the back, then goto 1 again.

Reporting Bugs
--------------

There are definitely no known bugs in this software at this time.

Acknowledgements
----------------

> If I have seen further it is by standing on the shoulders of giants. - Isaac Newton
