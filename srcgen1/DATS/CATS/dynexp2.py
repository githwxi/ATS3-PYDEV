########################################################################
########################################################################
#
# HX-2026-06-06:
# Sat Jun  6 12:04:46 PM EDT 2026
# For "copying" level-2 abstract syntax of ATS3
#
########################################################################
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
from DATS.CATS.a3pydev import *
from DATS.CATS.xstamp0 import *
from DATS.CATS.xsymbol import *
from DATS.CATS.locinfo import *
from DATS.CATS.lexing0 import *
from DATS.CATS.staexp2 import *
from DATS.CATS.statyp2 import *
########################################################################
########################################################################
@dataclass
class d2con_tbox(ABC):
    lctn: loctn
    name: symbl
    stmp: stamp
    pass
@dataclass
class d2cst_tbox(ABC):
    lctn: loctn
    name: symbl
    stmp: stamp
    pass
@dataclass
class d2var_tbox(ABC):
    lctn: loctn
    name: symbl
    stmp: stamp
    pass
#
type d2con = d2con_tbox
type d2cst = d2con_tbox
type d2var = d2var_tbox
#
type d2conlst = fnlist[d2con]
type d2cstlst = fnlist[d2cst]
type d2varlst = fnlist[d2var]
#
type d2conopt = fnoptn[d2con]
type d2cstopt = fnoptn[d2cst]
type d2varopt = fnoptn[d2var]
#
########################################################################
#
def PY_d2con\
(lctn: loctn, name: symbl, stmp: stamp)->d2con:
    return d2con_tbox(lctn, name, stmp)
#
def PY_d2cst\
(lctn: loctn, name: symbl, stmp: stamp)->d2cst:
    return d2cst_tbox(lctn, name, stmp)
#
def PY_d2var\
(lctn: loctn, name: symbl, stmp: stamp)->d2var:
    return d2var_tbox(lctn, name, stmp)
#
########################################################################
########################################################################
#
@dataclass
class S2RES000(ABC):
    pass
@dataclass
class \
S2RESnone(S2RES000):
    pass
@dataclass
class \
S2RESsome(S2RES000):
    arg1: pyobj
    arg2: s2exp
    pass
type s2res = S2RES000
########################################################################
#
def \
PY_S2RESnone()->S2RESnone:
    return S2RESnone()
def \
PY_S2RESsome\
(arg1: pyobj, arg2: s2exp)->S2RESsome:
    return S2RESsome(arg1, arg2)
#
########################################################################
########################################################################
@dataclass
class D2P000(ABC):
    lctn: loctn
    pass
type d2pat = D2P000
type d2patlst = fnlist[d2pat]
type d2patopt = fnoptn[d2pat]
########################################################################
@dataclass
class D2E000(ABC):
    lctn: loctn
    pass
type d2exp = D2E000
type d2explst = fnlist[d2exp]
type d2expopt = fnoptn[d2exp]
########################################################################
@dataclass
class D2C000(ABC):
    lctn: loctn
    pass
type d2ecl = D2C000
type d2eclist = fnlist[d2ecl]
type d2eclopt = fnoptn[d2ecl]
type d2eclistopt = fnoptn[d2eclist]
########################################################################
@dataclass
class D2Pa3src(D2P000):
    arg1: pyobj
    ctag = "D2Pa3src"
    pass
########################################################################
@dataclass
class D2Ea3src(D2E000):
    arg1: pyobj
    ctag = "D2Ea3src"
    pass
########################################################################
@dataclass
class D2Ca3src(D2C000):
    arg1: pyobj
    ctag = "D2Ca3src"
    pass
########################################################################
#
@dataclass
class TEQD2EXP000(ABC):
    pass
@dataclass
class \
TEQD2EXPnone(TEQD2EXP000):
    pass
@dataclass
class \
TEQD2EXPsome(TEQD2EXP000):
    arg1: token
    arg2: d2exp
    pass
type teqd2exp = TEQD2EXP000
#
########################################################################
#
@dataclass
class WTHS2EXP000(ABC):
    pass
@dataclass
class \
WTHS2EXPnone(WTHS2EXP000):
    pass
@dataclass
class \
WTHS2EXPsome(WTHS2EXP000):
    arg1: token
    arg2: s2exp
    pass
type wths2exp = WTHS2EXP000
#
########################################################################
#
@dataclass
class d2valdcl_tbox(ABC):
    lctn: loctn
    dpat: d2pat
    tdxp: teqd2exp
    wsxp: pyobj
    pass
@dataclass
class d2vardcl_tbox(ABC):
    lctn: loctn
    dpid: pyobj
    vpid: pyobj
    sres: s2expopt
    tdxp: teqd2exp
    pass
@dataclass
class d2fundcl_tbox(ABC):
    lctn: loctn
    dpid: pyobj
    farg: pyobj
    sres: s2res
    tdxp: teqd2exp
    wsxp: wths2exp
    pass
#
type d2valdcl = d2valdcl_tbox
type d2vardcl = d2vardcl_tbox
type d2fundcl = d2fundcl_tbox
#
type d2valdclist = fnlist[d2valdcl]
type d2vardclist = fnlist[d2vardcl]
type d2fundclist = fnlist[d2fundcl]
#
########################################################################
########################################################################
def PY_D2Pa3src\
(lctn: loctn, arg1: pyobj)->D2Pa3src:
    return D2Pa3src(lctn, arg1)
########################################################################
def PY_D2Ea3src\
(lctn: loctn, arg1: pyobj)->D2Ea3src:
    return D2Ea3src(lctn, arg1)
########################################################################
def PY_D2Ca3src\
(lctn: loctn, arg1: pyobj)->D2Ca3src:
    return D2Ca3src(lctn, arg1)
########################################################################
########################################################################
@dataclass
class D2Pcon(D2P000):
    """
    HX: for data constructors
    """
    arg1: d2con
    ctag = "D2Pcon"
    pass
@dataclass
class D2Pvar(D2P000):
    """
    HX: for dynamic variables
    """
    arg1: d2var
    ctag = "D2Pvar"
    pass
########################################################################
########################################################################
#
@dataclass
class D2Eint(D2E000):
    arg1: token
    ctag = "D2Eint"
    pass
@dataclass
class D2Ebtf(D2E000):
    arg1: symbl
    ctag = "D2Ebtf"
    pass
@dataclass
class D2Echr(D2E000):
    arg1: token
    ctag = "D2Echr"
    pass
@dataclass
class D2Eflt(D2E000):
    arg1: token
    ctag = "D2Eflt"
    pass
@dataclass
class D2Estr(D2E000):
    arg1: token
    ctag = "D2Estr"
    pass
#
########################################################################
#
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
#
########################################################################
#
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
#
########################################################################
#
@dataclass
class D2Edap0(D2E000):
    arg1: d2exp
    ctag = "D2Edap0"
    pass
@dataclass
class D2Edapp(D2E000):
    arg1: d2exp
    arg2: sint
    arg3: d2exp
    ctag = "D2Edapp"
    pass
#
########################################################################
#
@dataclass
class D2Elet0(D2E000):
    arg1: d2eclist
    arg2: d2exp
    ctag = "D2Elet0"
    pass
#
@dataclass
class D2Eseqn(D2E000):
    arg1: d2explst
    arg2: d2exp
    ctag = "D2Eseqn"
    pass
#
@dataclass
class D2Ewhere(D2E000):
    arg1: d2exp
    arg2: d2eclist
    ctag = "D2Ewhere"
    pass
#
@dataclass
class D2Et2pck(D2E000):
    arg1: d2exp
    arg2: s2typ
    ctag = "D2Et2pck"
    pass
@dataclass
class D2Et2ped(D2E000):
    arg1: d2exp
    arg2: s2typ
    ctag = "D2Et2ped"
    pass
#
########################################################################
@dataclass
class D2Clocal0(D2C000):
    arg1: d2eclist
    arg2: d2eclist
    ctag = "D2Clocal0"
    pass
########################################################################
#
@dataclass
class D2Cvaldclst(D2C000):
    arg1: token
    arg2: d2valdclist
@dataclass
class D2Cvardclst(D2C000):
    arg1: token
    arg2: d2vardclist
#
@dataclass
class D2Cfundclst(D2C000):
    arg1: token
    arg2: pyobj
    arg3: d2cstlst
    arg4: d2fundclist
#
########################################################################
@dataclass
class D2Cimplmnt0(D2C000):
    arg1: token
    arg2: pyobj
    arg3: pyobj
    arg4: pyobj
    arg5: pyobj
    arg6: pyobj
    arg7: pyobj
    arg8: d2exp
    ctag = "D2Cimplmnt0"
    pass
########################################################################
########################################################################
#
def PY_D2Pcon\
(lctn: loctn, arg1: d2con)->D2Pcon:
    return D2Pcon(lctn, arg1)
def PY_D2Pvar\
(lctn: loctn, arg1: d2var)->D2Pvar:
    return D2Pvar(lctn, arg1)
#
########################################################################
########################################################################
#
def PY_D2Eint\
(lctn: loctn, arg1: token)->D2Eint:
    return D2Eint(lctn, arg1)
def PY_D2Ebtf\
(lctn: loctn, arg1: symbl)->D2Ebtf:
    return D2Ebtf(lctn, arg1)
def PY_D2Estr\
(lctn: loctn, arg1: token)->D2Estr:
    return D2Estr(lctn, arg1)
#
########################################################################
#
def PY_D2Econ\
(lctn: loctn, arg1: d2con)->D2Econ:
    return D2Econ(lctn, arg1)
def PY_D2Ecst\
(lctn: loctn, arg1: d2cst)->D2Ecst:
    return D2Ecst(lctn, arg1)
def PY_D2Evar\
(lctn: loctn, arg1: d2var)->D2Evar:
    return D2Evar(lctn, arg1)
#
########################################################################
#
def PY_D2Edap0\
(loc0: loctn, arg1: d2exp)->D2Edap0:
    return D2Edap0(loc0, arg1)
def PY_D2Edapp\
(loc0: loctn, \
 arg1: d2exp, arg2: sint, arg3: d2exp)->D2Edapp:
    return D2Edapp(loc0, arg1, arg2, arg3)
#
########################################################################
def PY_D2Elet0\
(loc0: loctn, arg1: d2eclist, arg2: d2exp)->D2Elet0:
    # print\
    # ("PY_D2Elet0: arg2 = ", arg2)
    return D2Elet0(loc0, arg1, arg2)
########################################################################
def PY_D2Eseqn\
(loc0: loctn, arg1: d2explst, arg2: d2exp)->D2Eseqn:
    # print\
    # ("PY_D2Eseqn: arg1 = ", arg1)
    # print\
    # ("PY_D2Eseqn: arg2 = ", arg2)
    return D2Eseqn(loc0, arg1, arg2)
########################################################################
def PY_D2Ewhere\
(loc0: loctn, arg1: d2exp, arg2: d2eclist)->D2Ewhere:
    # print\
    # ("PY_D2Ewhere: arg1 = ", arg1)
    return D2Ewhere(loc0, arg1, arg2)
########################################################################
def PY_D2Et2pck\
(loc0: loctn, arg1: d2exp, arg2: s2typ)->D2Et2pck:
    # print\
    # ("PY_D2Et2pck: arg1 = ", arg1)
    # print\
    # ("PY_D2Et2pck: arg2 = ", arg2)
    return D2Et2pck(loc0, arg1, arg2)
def PY_D2Et2ped\
(loc0: loctn, arg1: d2exp, arg2: s2typ)->D2Et2ped:
    # print\
    # ("PY_D2Et2ped: arg1 = ", arg1)
    # print\
    # ("PY_D2Et2ped: arg2 = ", arg2)
    return D2Et2ped(loc0, arg1, arg2)
########################################################################
########################################################################
def PY_D2Clocal0\
(loc0: loctn, \
 arg1: d2eclist, arg2: d2eclist)->D2Clocal0:
    return D2Clocal0(loc0, arg1, arg2)
########################################################################
#
def PY_D2Cvaldclst\
(loc0: loctn, \
 arg1: token, arg2: d2valdclist)->D2Cvaldclst:
    return D2Cvaldclst(loc0, arg1, arg2)
def PY_D2Cvardclst\
(loc0: loctn, \
 arg1: token, arg2: d2vardclist)->D2Cvardclst:
    return D2Cvardclst(loc0, arg1, arg2)
#
def PY_D2Cfundclst\
(loc0: loctn, \
 arg1: token, arg2: pyobj, \
 arg3: d2cstlst, arg4: d2fundclist)->D2Cfundclst: 
    return D2Cfundclst(loc0, arg1, arg2, arg3, arg4) 
#
########################################################################
def PY_D2Cimplmnt0\
(loc0: loctn, \
 arg1: token, arg2: pyobj, arg3: pyobj, arg4: pyobj, \
 arg5: pyobj, arg6: pyobj, arg7: pyobj, arg8: d2exp)->D2Cimplmnt0:
    return \
    D2Cimplmnt0(loc0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
########################################################################
########################################################################
@dataclass
class d2parsed(ABC):
    arg1: sint
    arg2: sint
    arg3: lcsrc
    arg4: pyobj # d1topenv
    arg5: pyobj # d2topenv
    arg6: d2eclistopt
    pass
#
def \
PY_d2parsed\
(arg1: sint,
 arg2: sint,
 arg3: lcsrc,
 arg4: pyobj,
 arg5: pyobj,
 arg6: d2eclistopt) -> d2parsed:
    return d2parsed(arg1, arg2, arg3, arg4, arg5, arg6)
#
########################################################################
#
def \
PY_TEQD2EXPnone()->teqd2exp:
    return TEQD2EXPnone()
def \
PY_TEQD2EXPsome\
(arg1: token, arg2: d2exp)->teqd2exp:
    return TEQD2EXPsome(arg1, arg2)
#
########################################################################
#
def \
PY_WTHS2EXPnone()->wths2exp:
    return WTHS2EXPnone()
def \
PY_WTHS2EXPsome\
(arg1: token, arg2: s2exp)->wths2exp:
    return WTHS2EXPsome(arg1, arg2)
#
########################################################################
#
def \
PY_d2valdcl_make_args\
(lctn: loctn, \
 dpat: d2pat, \
 tdxp: teqd2exp, wsxp: pyobj)->d2valdcl:
    return d2valdcl_tbox(lctn, dpat, tdxp, wsxp)
#
def \
PY_d2vardcl_make_args\
(lctn: loctn, \
 dpid: pyobj, \
 vpid: pyobj, \
 sres: s2expopt, tdxp: teqd2exp)->d2vardcl:
    return d2vardcl_tbox(lctn, dpid, vpid, sres, tdxp)
#
def \
PY_d2fundcl_make_args\
(lctn: loctn, \
 dpid: pyobj, \
 farg: pyobj,
 sres: s2res,
 tdxp: teqd2exp, wsxp: wths2exp)->d2fundcl:
    return d2fundcl_tbox(lctn, dpid, farg, sres, tdxp, wsxp)
#
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/dynexp2.py]
########################################################################
########################################################################
