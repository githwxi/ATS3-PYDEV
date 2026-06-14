########################################################################
#
# HX-2026-06-06:
# Sat Jun  6 12:04:46 PM EDT 2026
# For "copying" level-2 abstract syntax of ATS3
#
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
from typing import Union
########################################################################
type sint = int
type char = int
type strn = str
type dflt = float
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
@dataclass
class D2E000(ABC):
    pass
type d2exp = D2E000
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
######
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
######
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
class D2Eother(D2E000):
    arg1: object
    ctag = "D2Eother"
    pass
########################################################################
def PY_D2Econ(arg1: d2con)->D2Econ:
    return D2Econ(arg1)
def PY_D2Ecst(arg1: d2cst)->D2Ecst:
    return D2Ecst(arg1)
def PY_D2Evar(arg1: d2var)->D2Evar:
    return D2Evar(arg1)
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/dynexp2.py]
########################################################################
########################################################################
