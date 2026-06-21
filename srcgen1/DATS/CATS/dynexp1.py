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
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
########################################################################
from DATS.CATS.a3pydev import *
from DATS.CATS.xstamp0 import *
from DATS.CATS.xsymbol import *
from DATS.CATS.locinfo import *
from DATS.CATS.lexing0 import *
########################################################################
@dataclass
class D1P000(ABC):
    lctn: loctn
    ctag = "D1P000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
    pass
type d1pat = D1P000
type d1patlst = fnlist[d1pat]
type d1patopt = fnoptn[d1pat]
########################################################################
@dataclass
class D1E000(ABC):
    lctn: loctn
    ctag = "D1E000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
    pass
type d1exp = D1E000
type d1explst = fnlist[d1exp]
type d1expopt = fnoptn[d1exp]
########################################################################
@dataclass
class D1C000(ABC):
    lctn: loctn
    ctag = "D1C000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
    pass
type d1ecl = D1C000
type d1ecllst = fnlist[d1ecl]
type d1eclopt = fnoptn[d1ecl]
########################################################################
@dataclass
class D1Pa3src(D1P000):
    arg1: pyobj
    ctag = "D1Pa3src"
    def __repr__(self)->strn:
        return f"{self.ctag}(d1pat)"
    pass
########################################################################
@dataclass
class D1Ea3src(D1E000):
    arg1: pyobj
    ctag = "D1Ea3src"
    def __repr__(self)->strn:
        return f"{self.ctag}(d1exp)"
    pass
########################################################################
@dataclass
class D1Ca3src(D1C000):
    arg1: pyobj
    ctag = "D1Ca3src"
    def __repr__(self)->strn:
        return f"{self.ctag}(d1ecl)"
    pass
########################################################################
########################################################################
def PY_D1Pa3src\
(lctn: loctn, arg1: pyobj)->D1Pa3src:
    return D1Pa3src(lctn, arg1)
########################################################################
def PY_D1Ea3src\
(lctn: loctn, arg1: pyobj)->D1Ea3src:
    return D1Ea3src(lctn, arg1)
########################################################################
def PY_D1Ca3src\
(lctn: loctn, arg1: pyobj)->D1Ca3src:
    return D1Ca3src(lctn, arg1)
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/dynexp1.py]
########################################################################
########################################################################
