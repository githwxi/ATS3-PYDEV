#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)

"$script_dir/generate-ats3-pydev-lib2xatsopt.sh"
exec make -C "$repo_root/srcgen1/TEST" -f Makefile_testall
