########################################################################
#
# HX-2026-06-06:
# Sat Jun  6 12:04:46 PM EDT 2026
# For "copying" level-1 abstract syntax of ATS3
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
from DATS.CATS.xstamp0 import *
from DATS.CATS.xsymbol import *
from DATS.CATS.locinfo import *
########################################################################
@dataclass
class S1E000(ABC):
    lctn: loctn
    pass
type s1exp = S1E000
########################################################################
@dataclass
class S1Ea3src(S1E000):
    arg1: pyobj
    ctag = "S1Ea3src"
    def __repr__(self)->strn:
        return f"{self.ctag}(s1exp)"
    pass
########################################################################
########################################################################
def PY_S1Ea3src\
(loc0: loctn, arg1: pyobj)->S1Ea3src:
    return S1Ea3src(loc0, arg1)
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/staexp1.py]
########################################################################
########################################################################
