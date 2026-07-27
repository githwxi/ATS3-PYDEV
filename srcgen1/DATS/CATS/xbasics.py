########################################################################
#
# HX-2026-06-06:
# Sat Jun  6 12:04:46 PM EDT 2026
#
########################################################################
type sint = int
type strn = str
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
########################################################################
@dataclass
class F2CL000(ABC):
    ctag = "F2CL000"
    pass
type f2clknd = F2CL000
@dataclass
class F2CLfun(F2CL000):
    ctag = "F2CLfun"
    def __str__(self)->strn:
        return f"{self.ctag}()"
    def __repr__(self)->strn:
        return f"{self.ctag}()"
    pass
@dataclass
class F2CLclo(F2CL000):
    ctag = "F2CLclo"
    arg1: sint
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
########################################################################
#
def PY_F2CLfun() -> F2CLfun:
    return F2CLfun()
def PY_F2CLclo(knd: sint) -> F2CLclo:
    return F2CLclo(knd)
#
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/xbasics.py]
########################################################################
########################################################################
