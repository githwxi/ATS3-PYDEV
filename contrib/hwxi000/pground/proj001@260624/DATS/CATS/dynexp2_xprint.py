#!/usr/bin/env python3
########################################################################
########################################################################
#
# HX-2026-07-01:
# Wed Jul  1 04:06:18 AM EDT 2026
#
########################################################################
type sint = int
type char = int
type strn = str
type dflt = float
type pyobj = object
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
########################################################################
########################################################################
from DATS.CATS.a3pydev import *
from DATS.CATS.staexp2 import *
from DATS.CATS.statyp2 import *
from DATS.CATS.dynexp2 import *
########################################################################
from DATS.CATS.a3pydev_xprint import *
from DATS.CATS.staexp2_xprint import *
from DATS.CATS.statyp2_xprint import *
########################################################################
########################################################################
#
def dimpl_xprenv\
(dimp: dimpl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
    elif isinstance(dimp, DIMPLnon1):
        print("DIMPLnon1")
        xenv.indpr()
        print(f"DIMPLone1.dqid: {dimp.arg1}")
    elif isinstance(dimp, DIMPLone1):
        print("DIMPLone1:")
        xenv.indpr()
        print(f"DIMPLone1.dcst: {dimp.arg1}")
    elif isinstance(dimp, DIMPLone2):
        print("DIMPLone2:")
        xenv.indpr()
        print(f"DIMPLone2.dcst: {dimp.arg1}")
    return None # end(dimpl_xprenv(...))
#
def dimpl_nind_xprenv\
(dimp: dimpl, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    dimpl_xprenv(dimp, xenv); xenv.decby(dlta)
    return None # end(dimpl_nind_xprenv(...))
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/DATS/CATS/dynexp2_xprint.py]
########################################################################
########################################################################
