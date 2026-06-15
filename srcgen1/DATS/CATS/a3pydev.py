########################################################################
#
# HX-2026-06-15:
# Mon Jun 15 08:16:24 AM EDT 2026
#
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
from typing import \
    Generic, TypeVar, Callable
########################################################################
type sint = int
type char = int
type strn = str
type dflt = float
########################################################################
T = TypeVar("T")
X = TypeVar("X")
Y = TypeVar("Y")
##################################################################
@dataclass
class fnlist[T](ABC):
    pass
@dataclass
class fnlist_nil(fnlist[T]):
    pass
@dataclass
class fnlist_cons(fnlist[T]):
    arg1: T
    arg2: fnlist[T]
    pass
##################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/a3pydev.py]
########################################################################
########################################################################
