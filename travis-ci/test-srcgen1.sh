#!/bin/sh
set -eu

script_dir=\
$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
myrepo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)

"$script_dir/generate-ats3-pydev-lib2xatsopt.sh"
make -C "$myrepo_root/srcgen1/TEST" -f Makefile_testall
make -C "$myrepo_root/contrib/hwxi000/pground/proj001@260624/TEST"
exit 0 ## HX-2026-10-25: this is redundant, but harmless ...
