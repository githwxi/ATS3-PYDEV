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
from DATS.CATS.staexp2 import *
########################################################################
@dataclass
class T2P000(ABC):
    sort: sort2
    pass
type s2typ = T2P000
type s2typlst = fnlist[s2typ]
type s2typopt = fnoptn[s2typ]
########################################################################
@dataclass
class T2Pa3src(T2P000):
    arg1: pyobj
    ctag = "T2Pa3src"
    def __repr__(self)->strn:
        return f"{self.ctag}(s2typ)"
    pass
########################################################################
@dataclass
class T2Pcst(T2P000):
    """
    HX: for a type-consant
    """
    pass
@dataclass
class T2Pvar(T2P000):
    """
    HX: for a type-variable
    """
    pass
@dataclass
class T2Plft(T2P000):
    """
    HX: type for a left-value
    """
    pass
########################################################################
@dataclass
class T2Ptop0(T2P000):
    """
    HX: type for uninitization
    """
    pass
@dataclass
class T2Ptop1(T2P000):
    """
    HX: type for delinearization
    """
    pass
########################################################################
@dataclass
class T2Parg1(T2P000):
    pass
@dataclass
class T2Patx2(T2P000):
    pass
########################################################################
@dataclass
class T2Plam1(T2P000):
    pass
@dataclass
class T2Papps(T2P000):
    pass
@dataclass
class T2Pf2cl(T2P000):
    pass
@dataclass
class T2Pfun1(T2P000):
    pass
########################################################################
@dataclass
class T2Ptext(T2P000):
    """
    HX: externally defined
    """
    pass
@dataclass
class T2Puni0(T2P000):
    """
    HX: universally quantified
    """
    pass
@dataclass
class T2Pexi0(T2P000):
    """
    HX: existentially quantified
    """
    pass
@dataclass
class T2Ptrcd(T2P000):
    """
    HX: type for labeled records
    """
    pass
########################################################################
@dataclass
class T2Pnone0(T2P000):
    pass
@dataclass
class T2Pnone1(T2P000):
    pass
########################################################################
@dataclass
class T2Perrck(T2P000):
    pass
########################################################################
@dataclass
class T2Pundef(T2P000):
    pass
########################################################################
def PY_T2Pa3src\
(s2t0: sort2, arg1: pyobj)->T2Pa3src:
    return T2Pa3src(s2t0, arg1)
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/statyp2.py]
########################################################################
########################################################################
