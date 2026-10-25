#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)

# The Makefile uses paths relative to srcgen1/UTIL.
exec make -C "$repo_root/srcgen1/UTIL" lib2xatsoptdev
