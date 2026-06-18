########################################################################
#
# HX-2026-06-15:
# Mon Jun 15 08:16:24 AM EDT 2026
#
########################################################################
type sint = int
type char = int
type strn = str
type dflt = float
########################################################################
def PY_repr(obj):
    return obj.__repr__()
########################################################################
from abc import ABC
from enum import Enum
from dataclasses import dataclass
from typing import \
    Generic, TypeVar, Callable
########################################################################
T = TypeVar("T")
X = TypeVar("X")
Y = TypeVar("Y")
########################################################################
@dataclass
class fnoptn[T](ABC):
    pass
@dataclass
class fnoptn_nil[T](fnoptn[T]):
    pass
@dataclass
class fnoptn_cons[T](fnoptn[T]):
    arg1: T
    pass
########################################################################
#
def \
PY_optn_nil() -> fnoptn[T]:
    return fnoptn_nil()
def \
PY_optn_cons(x0: T) -> fnoptn[T]:
    return fnoptn_cons(x0)
#
########################################################################
########################################################################
@dataclass
class fnlist[T](ABC):
    pass
@dataclass
class fnlist_nil[T](fnlist[T]):
    pass
@dataclass
class fnlist_cons[T](fnlist[T]):
    arg1: T
    arg2: fnlist[T]
    pass
########################################################################
#
def \
PY_list_nil() -> fnlist[T]:
    return fnlist_nil()
def \
PY_list_cons\
(x0: T, xs: fnlist[T]) -> fnlist[T]:
    return fnlist_cons(x0, xs)
#
def \
PY_list_reverse(xs: fnlist[T]) -> fnlist[T]:
    rs: fnlist[T] = fnlist_nil()
    while True:
        if isinstance(xs, fnlist_cons):
            x1 = xs.arg1
            xs = xs.arg2
            rs = fnlist_cons(x1, rs)
            continue
        else:
            return rs
    # endof(while(True))
#
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/a3pydev.py]
########################################################################
########################################################################
