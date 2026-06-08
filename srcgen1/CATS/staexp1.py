########################################################################
#
# HX-2026-06-06:
# Sat Jun  6 12:04:46 PM EDT 2026
# For "copying" level-1 abstract syntax of ATS3
#
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
from typing import Union
########################################################################
type s1exp = S1E000 \
    | S1Eid0 \
    | S1Eint | S1Echr | S1Eflt | S1Estr
########################################################################
class S1E000(ABC):
    pass
######
class S1Eid0(ABC):
    pass
######
class S1Eint(ABC):
    pass
class S1Echr(ABC):
    pass
class S1Eflt(ABC):
    pass
class S1Estr(ABC):
    pass
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/CATS/staexp1.py]
########################################################################
########################################################################
