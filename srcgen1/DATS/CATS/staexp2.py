########################################################################
#
# HX-2026-06-06:
# Sat Jun  6 12:04:46 PM EDT 2026
# For "copying" level-2 abstract syntax of ATS3
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
from DATS.CATS.a3pydev import *
from DATS.CATS.locinfo import *
########################################################################
@dataclass
class S2T000(ABC):
    pass
type sort2 = S2T000
########################################################################
@dataclass
class S2E000(ABC):
    sort: sort2
    pass
type s2exp = S2E000
type s2explst = fnlist[s2exp]
type s2expopt = fnoptn[s2exp]
########################################################################
@dataclass
class S2Ta3src(S2T000):
    arg1: pyobj
    ctag = "S2Ta3src"
    pass
@dataclass
class S2Ea3src(S2E000):
    arg1: pyobj
    ctag = "S2Ea3src"
    pass
########################################################################
def \
PY_S2Ta3src(arg1: pyobj)->S2Ta3src:
    return S2Ta3src(arg1)
def PY_S2Ea3src\
(s2t0: sort2, arg1: pyobj)->S2Ea3src:
    return S2Ea3src(s2t0, arg1)
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/staexp2.py]
########################################################################
########################################################################
