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
class D2E000(ABC):
    pass
type d2exp = D2E000
########################################################################
class D2Eint(D2E000):
    """
    HX: for signed ints
    """
    ctag = "D2Eint"
    pass
class D2Ebtf(D2E000):
    """
    HX: for true / false
    """
    ctag = "D2Ebtf"
    pass
class D2Echr(D2E000):
    """
    HX: for chars(==int8)
    """
    ctag = "D2Echr"
    pass
class D2Eflt(D2E000):
    """
    HX: for double floats
    """
    ctag = "D2Eflt"
    pass
class D2Estr(D2E000):
    """
    HX: for constant strings
    """
    ctag = "D2Estr"
    pass
######
class D2Ei00(D2E000):
    """
    HX: for macdef ints
    """
    ctag = "D2Ei00"
    pass
class D2Eb00(D2E000):
    """
    HX: for macdef bools
    """
    ctag = "D2Eb00"
    pass
class D2Ec00(D2E000):
    """
    HX: for macdef chars
    """
    ctag = "D2Ec00"
    pass
class D2Ef00(D2E000):
    """
    HX: for macdef floats
    """
    ctag = "D2Ef00"
    pass
class D2Es00(D2E000):
    """
    HX: for static strings
    """
    ctag = "D2Es00"
    pass
######
class D2Econ(D2E000):
    """
    HX: for data constructors
    """
    ctag = "D2Econ"
    pass
class D2Ecst(D2E000):
    """
    HX: for dynamic constants
    HX: (values and functions)
    """
    ctag = "D2Ecst"
    pass
class D2Evar(D2E000):
    """
    HX: for dynamic variables
    """
    ctag = "D2Evar"
    pass
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/CATS/dynexp2.py]
########################################################################
########################################################################
