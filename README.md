# rmath

This repository comprises of Nim bindings to [libRmath](http://github.com/sdwfrost/libRmath-nim), which has been patched to provide a cleaner interface to Nim.

This is currently a work in progress, and while the low-level wrapper is mostly complete, the high level wrappers have yet to be written.

## Compiling libRmath-nim

```sh
git clone http://github.com/sdwfrost/libRmath-nim.git
cd libRmath-nim
make
```

You will need to ensure that the shared library (libRmath-nim.dylib, libRmath-nim.so, or Rmath-nim.dll) can be found (e.g. by setting `LD_LIBRARY_PATH`).

## Installation

The package can be installed using [nimble]().

```sh
git clone http://github.com/sdwfrost/rmath.git
cd rmath
nimble install
```

## Usage

```nim
import random
import rmath

randomize()
set_seed(random(2500),random(2500))

var x=unif_rand()
echo x

var z=norm_rand()
echo z

var y=pchisq(3.84,1,true,false)
echo y
```

## Testing

```sh
cd test
nim c --app:console -d:release --run test.nim
```

The above should give something like the following.

```sh
0.4356026948512537
-0.1727166441552057
0.9499564787512947
```
