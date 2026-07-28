#!/usr/bin/env python3
########################################################################
########################################################################
#
# HX-2026-06-07:
# Sun Jun  7 12:10:48 PM EDT 2026
#
########################################################################
########################################################################
import os
import sys
########################################################################
########################################################################
sys.setrecursionlimit(66000)
########################################################################
########################################################################
from \
ats3_pydev_lib2xatsopt \
import \
PYDEV_d3parsed_pytrcpy, \
PYDEV_xatsopt_args_fildats_d3parsdx
########################################################################
from \
DATS.CATS.dynexp3_mywork \
import PY000_d3parsed_mywork
########################################################################
########################################################################
#
if __name__ == "__main__":
    argv = sys.argv
    # print\
    # ("ats3_pydev: argv =", argv)
    def farg(work):
        for xarg in argv: work(xarg)
    if len(argv) <= 1:
        print("Usage: " + \
        "python3 ats3_pydev_main.py input.dats")
    if len(argv) >= 2:
        fpth = sys.argv[1]
#
#       d2parsed = \
#       PYDEV_xatsopt_args_fildats_d2parsed(farg, fpth)
#       PY_d2parsed = PYDEV_d2parsed_pytrcpy(d2parsed)
#       print("ats3_pydev: PY_d2parsed =", PY_d2parsed)
#
#       d3parsed = \
#       PYDEV_xatsopt_args_fildats_d3parsed(farg, fpth)
#       PY_d3parsed = PYDEV_d3parsed_pytrcpy(d3parsed)
#       print("ats3_pydev: PY_d3parsed =", PY_d3parsed)        
#
        d3parsdx = \
        PYDEV_xatsopt_args_fildats_d3parsdx(farg, fpth)
        PYDEV_d3parsdx = PYDEV_d3parsed_pytrcpy(d3parsdx)
        # print("ats3_pydev: PYDEV_d3parsdx =", PYDEV_d3parsdx)
#
        PY000_d3parsed_mywork(PYDEV_d3parsdx)
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj003@260725/UTIL/ats3_mywork_main.py]
########################################################################
########################################################################
