#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)

# Build the local library consumed by the compiler-library assembly step.
make -C "$repo_root/srcgen1" -f Makefile_xpyemit libats3pydev

# The Makefile uses paths relative to srcgen1/UTIL.
exec make -C "$repo_root/srcgen1/UTIL" lib2xatsoptdev
