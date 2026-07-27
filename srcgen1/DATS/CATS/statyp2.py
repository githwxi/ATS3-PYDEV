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
########################################################################
@dataclass
class T2P000(ABC):
    sort: sort2
    ctag = "T2P000"
    pass
type s2typ = T2P000
type s2typlst = fnlist[s2typ]
type s2typopt = fnoptn[s2typ]
########################################################################
########################################################################
@dataclass
class T2Pa3src(T2P000):
    arg1: pyobj
    ctag = "T2Pa3src"
    def __str__(self)->strn:
        return f"{self.ctag}(s2typ)"
    def __repr__(self)->strn:
        return f"{self.ctag}(s2typ)"
    pass
########################################################################
@dataclass
class T2Pcst(T2P000):
    arg1: s2cst
    ctag = "T2Pcst"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class T2Pvar(T2P000):
    arg1: s2var
    ctag = "T2Pvar"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class T2Plft(T2P000):
    arg1: s2typ
    ctag = "T2Plft"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
########################################################################
@dataclass
class T2Ptop0(T2P000):
    arg1: s2typ
    ctag = "T2Ptop0"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class T2Ptop1(T2P000):
    arg1: s2typ
    ctag = "T2Ptop1"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
########################################################################
@dataclass
class T2Parg1(T2P000):
    pass
@dataclass
class T2Patx2(T2P000):
    pass
########################################################################
#
@dataclass
class T2Plam1(T2P000):
    arg1: s2varlst
    arg2: s2typ#bd
    ctag = "T2Plam1"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
@dataclass
class T2Papps(T2P000):
    arg1: s2typ
    arg2: s2typlst
    ctag = "T2Papps"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
########################################################################
#
@dataclass
class T2Pf2cl(T2P000):
    arg1: pyobj
    ctag = "T2Pf2cl"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
@dataclass
class T2Pfun1(T2P000):
    arg1: s2typ
    arg2: sint
    arg3: s2typlst
    arg4: s2typ
    ctag = "T2Pfun1"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2};{self.arg3};{self.arg4})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r};{self.arg3!r};{self.arg4!r})"
    pass
#
########################################################################
#
@dataclass
class T2Ptext(T2P000):
    arg1: strn
    arg2: s2typlst
    ctag = "T2Ptext"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
########################################################################
@dataclass
class T2Puni0(T2P000):
    pass
@dataclass
class T2Pexi0(T2P000):
    pass
########################################################################
@dataclass
class T2Ptrcd(T2P000):
    pass
########################################################################
#
@dataclass
class T2Pnone0(T2P000):
    ctag = "T2Pnone0"
    def __str__(self)->strn:
        return f"{self.ctag}()"
    def __repr__(self)->strn:
        return f"{self.ctag}()"
    pass
@dataclass
class T2Pnone1(T2P000):
    arg1: s2typ
    ctag = "T2Pnone1"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class T2Ps2exp(T2P000):
    arg1: s2exp
    ctag = "T2Ps2exp"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
########################################################################
@dataclass
class T2Perrck(T2P000):
    arg1: sint
    arg2: s2typ
    ctag = "T2Perrck"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
########################################################################
########################################################################
@dataclass
class s2vtp_type(ABC):
    svar: s2var
    styp: s2typ
    def __str__(self)->strn:
        return f"S2VTP({self.svar},{self.styp})"
    def __repr__(self)->strn:
        return f"S2VTP({self.svar!r},{self.styp!r})"
    pass
type s2vtp = s2vtp_type
type s2vts = fnlist[s2vtp]
type s2vtplst = fnlist[s2vtp]
########################################################################
########################################################################
def PY_T2Pa3src\
(s2t0: sort2, arg1: pyobj)->T2Pa3src:
    return T2Pa3src(s2t0, arg1)
########################################################################
########################################################################
def PY_s2vtp_make_args\
(s2v1: s2var, t2p2: s2typ)->s2vtp_type:
    return s2vtp_type(s2v1, t2p2)
########################################################################
########################################################################
#
def \
PY_T2Pcst(sort: sort2, arg1: s2cst)->T2Pcst:
    return T2Pcst(sort, arg1)
def \
PY_T2Pvar(sort: sort2, arg1: s2var)->T2Pvar:
    return T2Pvar(sort, arg1)
#
def \
PY_T2Plft(sort: sort2, arg1: s2typ)->T2Plft:
    return T2Plft(sort, arg1)
#
########################################################################
#
def \
PY_T2Ptop0(sort: sort2, arg1: s2typ)->T2Ptop0:
    return T2Ptop0(sort, arg1)
def \
PY_T2Ptop1(sort: sort2, arg1: s2typ)->T2Ptop1:
    return T2Ptop1(sort, arg1)
#
########################################################################
#
def \
PY_T2Plam1(\
sort: sort2, arg1: s2varlst, arg2: s2typ)->T2Plam1:
    return T2Plam1(sort, arg1, arg2)
#
def \
PY_T2Papps(\
sort: sort2, arg1: s2typ, arg2: s2typlst)->T2Papps:
    return T2Papps(sort, arg1, arg2)
#
########################################################################
#
def \
PY_T2Ptext\
(sort: sort2, arg1: strn, arg2: s2typlst)->T2Ptext:
    return T2Ptext(sort, arg1, arg2)
#
########################################################################
#
def PY_T2Pnone0(sort: sort2)->T2Pnone0:
    return T2Pnone0(sort)
def PY_T2Pnone1(sort: sort2, arg1: s2typ)->T2Pnone1:
    return T2Pnone1(sort, arg1)
def PY_T2Ps2exp(sort: sort2, arg1: s2exp)->T2Ps2exp:
    return T2Ps2exp(sort, arg1)
#
########################################################################
#
def PY_T2Perrck\
  (sort: sort2, arg1: sint, arg2: s2typ)->T2Perrck:
    return T2Perrck(sort, arg1, arg2)
#
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/statyp2.py]
########################################################################
########################################################################
