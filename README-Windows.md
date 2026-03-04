## How to build on Windows

1. Install Ruby with RIDK
2. Start Powershell as Administrator and run the following commands:
  a. `ridk enable`
  b. `pacman -S mingw-w64-ucrt-x86_64-cmake bison flex python`
  c. `pacman -S mingw-w64-ucrt-x86_64-libxml2 libxml2-devel`
  d. `pacman -S mingw-w64-ucrt-x86_64-glib2 glib2-devel`
  e. `pacman -S mingw-w64-ucrt-x86_64-cairo mingw-w64-ucrt-x86_64-pango mingw-w64-ucrt-x86_64-gdk-pixbuf2`
3. Start Powershell as a non-privileged user and run the following commands:
  a. `ridk enable`
  b. `git submodule update --init --recursive`
  c. `bundle install`
  d. `rake compile`
4. Copy **liblasem.dll** to somewhere in the system $PATH
5. The package can be tested by running `rake test` now in the non-privileged shell

NOTE: Installing the plain **cmake** package with pacman will result in build errors when building
this package. That version of CMake doesn't understand Windows paths and will prepend the current 
build directory to the CFLAGs include directories.
