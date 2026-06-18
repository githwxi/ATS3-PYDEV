########################################################################
########################################################################
#
# HX-2026-06-06:
# Sat Jun  6 12:04:46 PM EDT 2026
# For "copying" level-2 abstract syntax of ATS3
#
########################################################################
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
from DATS.CATS.locinfo import *
########################################################################
########################################################################
@dataclass
class d2con(ABC):
    pass
@dataclass
class d2cst(ABC):
    pass
@dataclass
class d2var(ABC):
    pass
########################################################################
########################################################################
@dataclass
class D2P000(ABC):
    lctn: loctn
    pass
type d2pat = D2P000
type d2patlst = fnlist[d2pat]
type d2patopt = fnoptn[d2pat]
########################################################################
@dataclass
class D2E000(ABC):
    lctn: loctn
    pass
type d2exp = D2E000
type d2explst = fnlist[d2exp]
type d2expopt = fnoptn[d2exp]
########################################################################
@dataclass
class D2C000(ABC):
    lctn: loctn
    pass
type d2ecl = D2C000
type d2eclist = fnlist[d2ecl]
type d2eclopt = fnoptn[d2ecl]
type d2eclistopt = fnoptn[d2eclist]
########################################################################
########################################################################
@dataclass
class D2Pother(D2P000):
    arg1: object
    ctag = "D2Pother"
    pass
########################################################################
@dataclass
class D2Eother(D2E000):
    arg1: object
    ctag = "D2Eother"
    pass
########################################################################
@dataclass
class D2Cother(D2C000):
    arg1: object
    ctag = "D2Cother"
    pass
########################################################################
def PY_D2Pother\
(lctn: loctn, arg1: object)->D2Pother:
    return D2Pother(lctn, arg1)
########################################################################
def PY_D2Eother\
(lctn: loctn, arg1: object)->D2Eother:
    return D2Eother(lctn, arg1)
########################################################################
def PY_D2Cother\
(lctn: loctn, arg1: object)->D2Cother:
    return D2Cother(lctn, arg1)
########################################################################
########################################################################
@dataclass
class D2Pcon(D2P000):
    """
    HX: for data constructors
    """
    arg1: d2con
    ctag = "D2Pcon"
    pass
@dataclass
class D2Pvar(D2P000):
    """
    HX: for dynamic variables
    """
    arg1: d2var
    ctag = "D2Pvar"
    pass
########################################################################
########################################################################
@dataclass
class D2Eint(D2E000):
    """
    HX: for signed ints
    """
    ctag = "D2Eint"
    pass
@dataclass
class D2Ebtf(D2E000):
    """
    HX: for true / false
    """
    ctag = "D2Ebtf"
    pass
@dataclass
class D2Echr(D2E000):
    """
    HX: for chars(==int8)
    """
    ctag = "D2Echr"
    pass
@dataclass
class D2Eflt(D2E000):
    """
    HX: for double floats
    """
    ctag = "D2Eflt"
    pass
@dataclass
class D2Estr(D2E000):
    """
    HX: for constant strings
    """
    ctag = "D2Estr"
    pass
########################################################################
@dataclass
class D2Ei00(D2E000):
    """
    HX: for macdef ints
    """
    arg1: sint
    ctag = "D2Ei00"
    pass
@dataclass
class D2Eb00(D2E000):
    """
    HX: for macdef bools
    """
    arg1: bool
    ctag = "D2Eb00"
    pass
@dataclass
class D2Ec00(D2E000):
    """
    HX: for macdef chars
    """
    arg1: char
    ctag = "D2Ec00"
    pass
@dataclass
class D2Ef00(D2E000):
    """
    HX: for macdef floats
    """
    arg1: dflt
    ctag = "D2Ef00"
    pass
@dataclass
class D2Es00(D2E000):
    """
    HX: for static strings
    """
    arg1: strn
    ctag = "D2Es00"
    pass
########################################################################
@dataclass
class D2Econ(D2E000):
    """
    HX: for data constructors
    """
    arg1: d2con
    ctag = "D2Econ"
    pass
@dataclass
class D2Ecst(D2E000):
    """
    HX: for dynamic constants
    HX: (values and functions)
    """
    arg1: d2cst
    ctag = "D2Ecst"
    pass
@dataclass
class D2Evar(D2E000):
    """
    HX: for dynamic variables
    """
    arg1: d2var
    ctag = "D2Evar"
    pass
########################################################################
@dataclass
class D2Elet0(D2E000):
    arg1: d2eclist
    arg2: d2exp
    ctag = "D2Elet0"
    pass
########################################################################
########################################################################
@dataclass
class D2Clocal0(D2C000):
    arg1: d2eclist
    arg2: d2eclist
    ctag = "D2Clocal0"
    pass
########################################################################
########################################################################
def PY_D2Pcon\
(lctn: loctn, arg1: d2con)->D2Pcon:
    return D2Pcon(lctn, arg1)
def PY_D2Pvar\
(lctn: loctn, arg1: d2var)->D2Pvar:
    return D2Pvar(lctn, arg1)
########################################################################
########################################################################
def PY_D2Econ\
(lctn: loctn, arg1: d2con)->D2Econ:
    return D2Econ(lctn, arg1)
def PY_D2Ecst\
(lctn: loctn, arg1: d2cst)->D2Ecst:
    return D2Ecst(lctn, arg1)
def PY_D2Evar\
(lctn: loctn, arg1: d2var)->D2Evar:
    return D2Evar(lctn, arg1)
########################################################################
def PY_D2Elet0\
(loc0: loctn, \
 arg1: d2eclist, arg2: d2exp)->D2Elet0:
    return D2Elet0(loc0, arg1, arg2)
########################################################################
########################################################################
def PY_D2Clocal0\
(loc0: loctn, \
 arg1: d2eclist, arg2: d2eclist)->D2Clocal0:
    return D2Clocal0(loc0, arg1, arg2)
########################################################################
########################################################################
@dataclass
class d2parsed(ABC):
    arg1: sint
    arg2: sint
    arg3: lcsrc
    arg4: object # d1topenv
    arg5: object # d2topenv
    arg6: d2eclistopt
    pass
#
def \
PY_d2parsed\
(arg1: sint,
 arg2: sint,
 arg3: lcsrc,
 arg4: object,
 arg5: object,
 arg6: d2eclistopt) -> d2parsed:
    return d2parsed(arg1, arg2, arg3, arg4, arg5, arg6)
#
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/dynexp2.py]
########################################################################
########################################################################
