########################################################################
#
# HX-2026-06-06:
# Sat Jun  6 12:04:46 PM EDT 2026
# For "copying" level-1 abstract syntax of ATS3
#
########################################################################
type sint = int
type strn = str
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
from DATS.CATS.statyp2 import *
########################################################################
@dataclass
class D3P000(ABC):
    lctn: loctn
    ctag = "D3P000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
    pass
type d3pat = D3P000
type d3patlst = fnlist[d3pat]
type d3patopt = fnoptn[d3pat]
########################################################################
@dataclass
class D3E000(ABC):
    lctn: loctn
    ctag = "D3E000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
    pass
type d3exp = D3E000
type d3explst = fnlist[d3exp]
type d3expopt = fnoptn[d3exp]
########################################################################
@dataclass
class D3C000(ABC):
    lctn: loctn
    ctag = "D3C000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
    pass
type d3ecl = D3C000
type d3eclist = fnlist[d3ecl]
type d3eclopt = fnoptn[d3ecl]
type d3eclistopt = fnoptn[d3eclist]
########################################################################
@dataclass
class D3Pa3src(D3P000):
    arg1: pyobj
    ctag = "D3Pa3src"
    def __repr__(self)->strn:
        return f"{self.ctag}(d3pat)"
    pass
########################################################################
@dataclass
class D3Ea3src(D3E000):
    arg1: pyobj
    ctag = "D3Ea3src"
    def __repr__(self)->strn:
        return f"{self.ctag}(d3exp)"
    pass
########################################################################
@dataclass
class D3Ca3src(D3C000):
    arg1: pyobj
    ctag = "D3Ca3src"
    def __repr__(self)->strn:
        return f"{self.ctag}(d3ecl)"
    pass
########################################################################
########################################################################
def PY_D3Pa3src\
(lctn: loctn, arg1: pyobj)->D3Pa3src:
    return D3Pa3src(lctn, arg1)
########################################################################
def PY_D3Ea3src\
(lctn: loctn, arg1: pyobj)->D3Ea3src:
    return D3Ea3src(lctn, arg1)
########################################################################
def PY_D3Ca3src\
(lctn: loctn, arg1: pyobj)->D3Ca3src:
    return D3Ca3src(lctn, arg1)
########################################################################
########################################################################
#
@dataclass
class d3parsed(ABC):
    stadyn: sint
    nerror: sint
    source: lcsrc
    t1penv: pyobj
    t2penv: pyobj
    t3penv: pyobj
    parsed: d3eclistopt
    def __str__(self)->strn:
        return f"D3PARSED({self.stadyn};{self.nerror};{self.source};{self.parsed})"
    def __repr__(self)->strn:
        return f"D3PARSED({self.stadyn!r};{self.nerror!r};{self.source!r};{self.parsed!r})"
    pass
#
def \
PY_d3parsed\
(stadyn: sint,
 nerror: sint,
 source: lcsrc,
 t1penv: pyobj,
 t2penv: pyobj,
 t3penv: pyobj,
 parsed: d3eclistopt) -> d3parsed:
    return d3parsed(stadyn, nerror, source, t1penv, t2penv, t3penv, parsed)
#
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/dynexp3.py]
########################################################################
########################################################################
