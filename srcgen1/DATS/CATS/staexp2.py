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
from DATS.CATS.xstamp0 import *
from DATS.CATS.xbasics import *
from DATS.CATS.xsymbol import *
from DATS.CATS.locinfo import *
########################################################################
@dataclass
class S2T000(ABC):
    ctag = "S2T000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
    def __repr__(self)->strn:
        return f"{self.ctag}(...)"
    pass
type sort2 = S2T000
type sort2lst = fnlist[sort2]
type sort2opt = fnoptn[sort2]
########################################################################
@dataclass
class S2E000(ABC):
    sort: sort2
    ctag = "S2E000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
    def __repr__(self)->strn:
        return f"{self.ctag}(...)"
    pass
type s2exp = S2E000
type s2explst = fnlist[s2exp]
type s2expopt = fnoptn[s2exp]
########################################################################
@dataclass
class S2Ta3src(S2T000):
    arg1: pyobj
    ctag = "S2Ta3src"
    def __str__(self)->strn:
        return f"{self.ctag}(sort2)"
    def __repr__(self)->strn:
        return f"{self.ctag}(sort2)"
    pass
########################################################################
@dataclass
class S2Ea3src(S2E000):
    arg1: pyobj
    ctag = "S2Ea3src"
    def __str__(self)->strn:
        return f"{self.ctag}(s2exp)"
    def __repr__(self)->strn:
        return f"{self.ctag}(s2exp)"
    pass
########################################################################
@dataclass
class s2var_tbox(ABC):
    name: symbl
    sort: sort2
    stmp: stamp
    def __str__(self)->strn:
        return f"S2VAR({self.name};{self.sort};{self.stmp})"
    def __repr__(self)->strn:
        return f"S2VAR({self.name!r};{self.sort!r};{self.stmp!r})"
    pass
type s2var = s2var_tbox
type s2varlst = fnlist[s2var]
type s2varopt = fnoptn[s2var]
########################################################################
@dataclass
class s2cst_tbox(ABC):
    lctn: loctn
    name: symbl
    sort: sort2
    stmp: stamp
    def __str__(self)->strn:
        return f"S2CST({self.name};{self.sort};{self.stmp})"
    def __repr__(self)->strn:
        return f"S2CST({self.name!r};{self.sort!r};{self.stmp!r})"
    pass
type s2cst = s2cst_tbox
type s2cstlst = fnlist[s2cst]
type s2cstopt = fnoptn[s2cst]
########################################################################
########################################################################
#
@dataclass
class S2Ecst(S2E000):
    arg1: s2cst
    ctag = "S2Ecst"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
@dataclass
class S2Evar(S2E000):
    arg1: s2var
    ctag = "S2Evar"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
########################################################################
#
@dataclass
class S2Earg1(S2E000):
    arg1: sint
    arg2: s2exp
    ctag = "S2Earg1"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
@dataclass
class S2Eatx2(S2E000):
    arg1: s2exp
    arg2: s2exp
    ctag = "S2Earg1"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
########################################################################
#
@dataclass
class S2Eapps(S2E000):
    arg1: s2exp
    arg2: s2explst
    ctag = "S2Eapps"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
@dataclass
class S2Elam1(S2E000):
    arg1: s2varlst
    arg2: s2exp#bd
    ctag = "S2Elam1"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
########################################################################
#
@dataclass
class S2Efun1(S2E000):
    arg1: f2clknd
    arg2: sint
    arg3: s2explst
    arg4: s2exp
    ctag = "S2Efun1"
    def __str__(self)->strn:
        return \
        f"{self.ctag}({self.arg1};{self.arg2};{self.arg3};{self.arg4})"
    def __repr__(self)->strn:
        return \
        f"{self.ctag}({self.arg1!r};{self.arg2!r};{self.arg3!r};{self.arg4!r})"
    pass
#
########################################################################
#
@dataclass
class S2Etext(S2E000):
    arg1: strn
    arg2: s2explst
    ctag = "S2Etext"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
########################################################################
########################################################################
#
def \
PY_S2Ta3src(arg1: pyobj)->S2Ta3src:
    return S2Ta3src(arg1)
def PY_S2Ea3src\
(s2t0: sort2, arg1: pyobj)->S2Ea3src:
    return S2Ea3src(s2t0, arg1)
#
########################################################################
########################################################################
#
def \
PY_s2var_make_args\
(name: symbl, sort: sort2, stmp: stamp)->s2var_tbox:
    return s2var_tbox(name, sort, stmp)
#
########################################################################
#
def \
PY_s2cst_make_args\
(lctn: loctn, \
 name: symbl, sort: sort2, stmp: stamp)->s2cst_tbox:
    return s2cst_tbox(lctn, name, sort, stmp)
#
########################################################################
########################################################################
#
def PY_S2Ecst(s2t0: sort2, arg1: s2cst)->S2Ecst:
    return S2Ecst(s2t0, arg1)
def PY_S2Evar(s2t0: sort2, arg1: s2var)->S2Evar:
    return S2Evar(s2t0, arg1)
#
########################################################################
#
def PY_S2Earg1\
(s2t0: sort2, arg1: sint, arg2: s2exp)->S2Earg1:
    return S2Earg1(s2t0, arg1, arg2)
#
def PY_S2Eatx2\
(s2t0: sort2, arg1: s2exp, arg2: s2exp)->S2Eatx2:
    return S2Eatx2(s2t0, arg1, arg2)
#
########################################################################
#
def PY_S2Eapps\
(s2t0: sort2, arg1: s2exp, arg2: s2explst)->S2Eapps:
    return S2Eapps(s2t0, arg1, arg2)
#
def PY_S2Elam1\
(s2t0: sort2, arg1: s2varlst, arg2: s2exp)->S2Elam1:
    return S2Elam1(s2t0, arg1, arg2)
#
########################################################################
#
def PY_S2Efun1(s2t0: sort2, \
 arg1: f2clknd, arg2: sint, arg3: s2explst, arg4: s2exp)->S2Efun1:
    return S2Efun1(s2t0, arg1, arg2, arg3, arg4)
#
########################################################################
#
def PY_S2Etext(\
    s2t0: sort2, name: strn, s2es: s2explst)->S2Etext:
    return S2Etext(s2t0, name, s2es)
#
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/staexp2.py]
########################################################################
########################################################################
