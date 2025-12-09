# Puzzle Box
Makes OpenSCAD code for a cylindrical puzzle box.

## Building
### Windows (MSYS2 MinGW64)
1. Install [MSYS2](https://www.msys2.org/) and open the **MSYS2 MinGW64** shell.
2. Install the toolchain: `pacman -S --needed mingw-w64-x86_64-gcc make`.
3. Build the binary: `make CC=gcc`.

### Linux or macOS
Simply run `make`. You can override the compiler with `make CC=gcc` if you prefer.

The build produces a single executable named `puzzlebox` (or `puzzlebox.exe` on Windows).

## Usage
The program writes the OpenSCAD model to standard output. Redirect it to a file and open the
resulting `.scad` in OpenSCAD to export an STL.

```
./puzzlebox > box.scad
```

Use `--help` to see all supported parameters and their defaults:

```
./puzzlebox --help
```

### Example commands
* Default box: `./puzzlebox > box.scad`
* Taller maze with more twists: `./puzzlebox --core-height 80 --maze-complexity 7 > tall_box.scad`
* Round outer wall with tighter spacing: `./puzzlebox --outer-sides 0 --maze-step 2.5 --core-diameter 14 > round_box.scad`

The executable returns `0` on success and only writes OpenSCAD code to stdout. Any errors or
debug information are printed to stderr.

(c) Copyright 2019 Adrian Kennard. See LICENSE file (GPL)
