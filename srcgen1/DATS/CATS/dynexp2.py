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
type pyobj = object
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
########################################################################
from DATS.CATS.a3pydev import *
from DATS.CATS.locinfo import *
from DATS.CATS.staexp2 import *
from DATS.CATS.statyp2 import *
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
type d2conlst = fnlist[d2con]
type d2cstlst = fnlist[d2cst]
type d2varlst = fnlist[d2var]
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
@dataclass
class d2valdcl(ABC):
    pass
@dataclass
class d2vardcl(ABC):
    pass
@dataclass
class d2fundcl(ABC):
    pass
type d2valdclist = fnlist[d2valdcl]
type d2vardclist = fnlist[d2vardcl]
type d2fundclist = fnlist[d2fundcl]
########################################################################
@dataclass
class D2Pa3src(D2P000):
    arg1: pyobj
    ctag = "D2Pa3src"
    pass
########################################################################
@dataclass
class D2Ea3src(D2E000):
    arg1: pyobj
    ctag = "D2Ea3src"
    pass
########################################################################
@dataclass
class D2Ca3src(D2C000):
    arg1: pyobj
    ctag = "D2Ca3src"
    pass
########################################################################
def PY_D2Pa3src\
(lctn: loctn, arg1: pyobj)->D2Pa3src:
    return D2Pa3src(lctn, arg1)
########################################################################
def PY_D2Ea3src\
(lctn: loctn, arg1: pyobj)->D2Ea3src:
    return D2Ea3src(lctn, arg1)
########################################################################
def PY_D2Ca3src\
(lctn: loctn, arg1: pyobj)->D2Ca3src:
    return D2Ca3src(lctn, arg1)
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
@dataclass
class D2Et2ped(D2E000):
    arg1: d2exp
    arg2: s2typ
    ctag = "D2Et2ped"
    pass
@dataclass
class D2Ewhere(D2E000):
    arg1: d2exp
    arg2: d2eclist
    ctag = "D2Ewhere"
    pass
########################################################################
@dataclass
class D2Clocal0(D2C000):
    arg1: d2eclist
    arg2: d2eclist
    ctag = "D2Clocal0"
    pass
########################################################################
@dataclass
class D2Cfundclst(D2C000):
    arg1: pyobj
    arg2: pyobj
    arg3: d2cstlst
    arg4: d2fundclist
########################################################################
@dataclass
class D2Cimplmnt0(D2C000):
    arg1: pyobj
    arg2: pyobj
    arg3: pyobj
    arg4: pyobj
    arg5: pyobj
    arg6: pyobj
    arg7: pyobj
    arg8: d2exp
    ctag = "D2Cimplmnt0"
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
def PY_D2Et2ped\
(loc0: loctn, \
 arg1: d2exp, arg2: s2typ)->D2Et2ped:
    print\
    ("PY_D2Et2ped: arg1 = ", arg1)
    print\
    ("PY_D2Et2ped: arg2 = ", arg2)
    return D2Ewhere(loc0, arg1, arg2)
########################################################################
def PY_D2Ewhere\
(loc0: loctn, \
 arg1: d2exp, arg2: d2eclist)->D2Ewhere:
    print\
    ("PY_D2Ewhere: arg1 = ", arg1)
    return D2Ewhere(loc0, arg1, arg2)
########################################################################
########################################################################
def PY_D2Clocal0\
(loc0: loctn, \
 arg1: d2eclist, arg2: d2eclist)->D2Clocal0:
    return D2Clocal0(loc0, arg1, arg2)
########################################################################
def PY_D2Cimplmnt0\
(loc0: loctn, \
 arg1: pyobj, arg2: pyobj, \
 arg3: pyobj, arg4: pyobj, \
 arg5: pyobj, arg6: pyobj, \
 arg7: pyobj, arg8: d2exp)->D2Cimplmnt0:
    return \
    D2Cimplmnt0(loc0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
########################################################################
########################################################################
@dataclass
class d2parsed(ABC):
    arg1: sint
    arg2: sint
    arg3: lcsrc
    arg4: pyobj # d1topenv
    arg5: pyobj # d2topenv
    arg6: d2eclistopt
    pass
#
def \
PY_d2parsed\
(arg1: sint,
 arg2: sint,
 arg3: lcsrc,
 arg4: pyobj,
 arg5: pyobj,
 arg6: d2eclistopt) -> d2parsed:
    return d2parsed(arg1, arg2, arg3, arg4, arg5, arg6)
#
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/dynexp2.py]
########################################################################
########################################################################
