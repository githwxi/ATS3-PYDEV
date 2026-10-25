#!/bin/sh
set -eu

script_dir=\
$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
myrepo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)

cleanup_generated_files() {
  status=$?
  if [ "$status" -eq 0 ]; then
    rm -f "$myrepo_root"/srcgen1/BUILD/PY/*_dats_out1.py
    rm -f "$myrepo_root"/srcgen1/lib/libats3pydev.py
    rm -f "$myrepo_root"/srcgen1/UTIL/ats3_pydev_lib2xatsopt.py
    rm -f "$myrepo_root"/externs/ATS3/srcgen2/lib/lib2xatsopt_opt0.py
  fi
  exit "$status"
}
trap cleanup_generated_files EXIT

"$script_dir/generate-ats3-pydev-lib2xatsopt.sh"
make -C "$myrepo_root/srcgen1/TEST" -f Makefile_testall
make -C "$myrepo_root/contrib/hwxi000/pground/proj001@260624/TEST"
exit 0 ## HX-2026-10-25: this is not needed but it is harmless ...
