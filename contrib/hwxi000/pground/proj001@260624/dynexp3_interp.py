#!/usr/bin/env python3
########################################################################
########################################################################
#
# HX-2026-06-24:
# Wed Jun 24 12:48:46 PM EDT 2026
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
from DATS.CATS.dynexp2 import *
from DATS.CATS.dynexp3 import *
########################################################################
@dataclass
class I0VAL000(ABC):
    pass
type i0val = I0VAL000
@dataclass
class I0ENV000(ABC):
    pass
type i0env = I0ENV000
########################################################################
@datclass
class I0VALint(I0VAL000):
    arg1: sint
@datclass
class I0VALbtf(I0VAL000):
    arg1: bool
@datclass
class I0VALstr(I0VAL000):
    arg1: strn
########################################################################
@dataclass
class I0ENVnil(I0ENV000):
    pass
@dataclass
class I0ENVcons(I0ENV000):
    arg1: d2var
    arg2: i0val
    arg3: i0env
    pass
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/dynexp3_interp.py]
########################################################################
########################################################################
