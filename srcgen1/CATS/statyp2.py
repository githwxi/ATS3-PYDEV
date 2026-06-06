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
type s2typ = T2P000 \
    | T2Pcst | T2Pvar | T2Plft \
    | T2Ptop0 | T2Ptop1 | T2Parg1 | T2Patx2 \
    | T2Plam1 | T2Papps | T2Pf2cl | T2Pfun1 \
    | T2Ptext | T2Puni0 | T2Pexi0 | T2Ptrcd \
    | T2Pnone0 | T2Pnone1 | T2Perrck | T2Pother
########################################################################
@dataclass
class T2P000(ABC):
    pass
########################################################################
@dataclass
class T2Pcst(T2P000):
    """
    HX: for a type-consant
    """
    pass
@dataclass
class T2Pvar(T2P000):
    """
    HX: for a type-variable
    """
    pass
########################################################################
@dataclass
class T2Plft(T2P000):
    """
    HX: type for a left-value
    """
    pass
########################################################################
# end of [ATS3-PYDEV/srcgen1/CATS/statyp2.py]
########################################################################
########################################################################
