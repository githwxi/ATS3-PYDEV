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
type strn = str
########################################################################
from filpath import fpath
########################################################################
@dataclass
class LCSRC000(ABC):
    pass
@dataclass
class LCSRCnone0(LCSRC000):
    pass
@dataclass
class LCSRCsome1(LCSRC000):
    arg1: str
@dataclass
class LCSRCfpath(LCSRC000):
    arg1: fpath
########################################################################
type lcsrc = LCSRC000 \
    | LCSRCnone0 | LCSRCsome1 | LCSRCfpath
########################################################################
class postn:
    pass
########################################################################
@dataclass
class loctn:
    arg1: lcsrc
    arg2: postn
    arg3: postn
######
def \
loctn_make_fpath \
(arg1: fpath, arg2: postn, arg3: postn) -> loctn:
    return loctn(LCSRCfpath(arg1), arg2, arg3)
########################################################################
# end of [ATS3-PYDEV/srcgen1/CATS/locinfo.py]
########################################################################
########################################################################
