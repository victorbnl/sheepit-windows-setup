# SheepIt Windows installer

A setup file for SheepIt to install it on Windows.

## Building

**Requirements:** To build the run script, you'll need `windres` (by default in Windows), and `g++`, provided by [mingw-w64](https://www.mingw-w64.org/). To build the installer, you need [Inno Setup](https://jrsoftware.org/isinfo.php)

Then, here is how you build it

1. Go in the `run-script` directory
2. Build the run script resources: `windres resources.res resources.o`
3. Build the run script: `g++ -o run run.cpp resources.o`
4. Go back to the root directory
5. Build the installer: `iscc setup.iss`
