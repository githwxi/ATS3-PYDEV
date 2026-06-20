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
#
@dataclass
class d2con_tbox(ABC):
    lctn: loctn
    name: symbl
    stmp: stamp
    def __str__(self)->strn:
        return f"D2CON({self.name};{self.stmp})"
    def __repr__(self)->strn:
        return f"D2CON({self.name!r};{self.stmp!r})"
    pass
@dataclass
class d2cst_tbox(ABC):
    lctn: loctn
    name: symbl
    stmp: stamp
    def __str__(self)->strn:
        return f"D2CST({self.name};{self.stmp})"
    def __repr__(self)->strn:
        return f"D2CST({self.name!r};{self.stmp!r})"
    pass
#
@dataclass
class d2var_tbox(ABC):
    lctn: loctn
    name: symbl
    stmp: stamp
    def __str__(self)->strn:
        return f"D2VAR({self.name};{self.stmp})"
    def __repr__(self)->strn:
        return f"D2VAR({self.name!r};{self.stmp!r})"
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
    ctag = "D2P000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
    pass
type d2pat = D2P000
type d2patlst = fnlist[d2pat]
type d2patopt = fnoptn[d2pat]
########################################################################
@dataclass
class D2E000(ABC):
    lctn: loctn
    ctag = "D2E000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
    pass
type d2exp = D2E000
type d2explst = fnlist[d2exp]
type d2expopt = fnoptn[d2exp]
########################################################################
@dataclass
class D2C000(ABC):
    lctn: loctn
    ctag = "D2C000"
    def __str__(self)->strn:
        return f"{self.ctag}(...)"
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
    def __repr__(self)->strn:
        return f"{self.ctag}(d2pat)"
    pass
########################################################################
@dataclass
class D2Ea3src(D2E000):
    arg1: pyobj
    ctag = "D2Ea3src"
    def __repr__(self)->strn:
        return f"{self.ctag}(d2exp)"
    pass
########################################################################
@dataclass
class D2Ca3src(D2C000):
    arg1: pyobj
    ctag = "D2Ca3src"
    def __repr__(self)->strn:
        return f"{self.ctag}(d2ecl)"
    pass
########################################################################
@dataclass
class F2ARG000(ABC):
    lctn: loctn
    pass
@dataclass
class F2ARGmets(F2ARG000):
    arg1: s2explst
    ctag = "F2ARGmets"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class F2ARGsapp(F2ARG000):
    arg1: s2varlst
    arg2: s2explst
    ctag = "F2ARGsapp"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
@dataclass
class F2ARGdapp(F2ARG000):
    arg1: sint
    arg2: d2patlst
    ctag = "F2ARGdapp"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
type f2arg = F2ARG000
type f2arglst = fnlist[f2arg]
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
    wsxp: wths2exp
    def __str__(self)->strn:
        return f"D2VALDCL({self.dpat};{self.tdxp};{self.wsxp})"
    def __repr__(self)->strn:
        return f"D2VALDCL({self.dpat!r};{self.tdxp!r};{self.wsxp!r})"
    pass
@dataclass
class d2vardcl_tbox(ABC):
    lctn: loctn
    dpid: d2var
    vpid: d2varopt
    sres: s2expopt
    tdxp: teqd2exp
    def __str__(self)->strn:
        return f"D2VARDCL({self.dpid};{self.vpid};{self.sres};{self.tdxp})"
    def __repr__(self)->strn:
        return f"D2VARDCL({self.dpid!r};{self.vpid!r};{self.sres!r};{self.tdxp!r})"
    pass
@dataclass
class d2fundcl_tbox(ABC):
    lctn: loctn
    dpid: d2var
    farg: pyobj
    sres: s2res
    tdxp: teqd2exp
    wsxp: wths2exp
    def __str__(self)->strn:
        return f"D2FUNDCL({self.dpid};{self.farg};{self.sres};{self.tdxp};{self.wsxp})"
    def __repr__(self)->strn:
        return f"D2FUNDCL({self.dpid!r};{self.farg!r};{self.sres!r};{self.tdxp!r};{self.wsxp!r})"
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
    arg1: d2con
    ctag = "D2Pcon"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D2Pvar(D2P000):
    arg1: d2var
    ctag = "D2Pvar"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
########################################################################
########################################################################
#
@dataclass
class D2Eint(D2E000):
    arg1: token
    ctag = "D2Eint"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D2Ebtf(D2E000):
    arg1: symbl
    ctag = "D2Ebtf"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D2Echr(D2E000):
    arg1: token
    ctag = "D2Echr"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D2Eflt(D2E000):
    arg1: token
    ctag = "D2Eflt"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D2Estr(D2E000):
    arg1: token
    ctag = "D2Estr"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
########################################################################
#
@dataclass
class D2Ei00(D2E000):
    arg1: sint
    ctag = "D2Ei00"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    pass
@dataclass
class D2Eb00(D2E000):
    arg1: bool
    ctag = "D2Eb00"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    pass
@dataclass
class D2Ec00(D2E000):
    arg1: char
    ctag = "D2Ec00"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    pass
@dataclass
class D2Ef00(D2E000):
    arg1: dflt
    ctag = "D2Ef00"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    pass
@dataclass
class D2Es00(D2E000):
    arg1: strn
    ctag = "D2Es00"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    pass
#
########################################################################
#
@dataclass
class D2Econ(D2E000):
    arg1: d2con
    ctag = "D2Econ"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D2Ecst(D2E000):
    arg1: d2cst
    ctag = "D2Ecst"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
@dataclass
class D2Evar(D2E000):
    arg1: d2var
    ctag = "D2Evar"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
########################################################################
#
@dataclass
class D2Edap0(D2E000):
    arg1: d2exp
    ctag = "D2Edap0"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D2Edapp(D2E000):
    arg1: d2exp
    arg2: sint
    arg3: d2exp
    ctag = "D2Edapp"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2};{self.arg3})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r};{self.arg3!r})"
    pass
#
########################################################################
#
@dataclass
class D2Elet0(D2E000):
    arg1: d2eclist
    arg2: d2exp
    ctag = "D2Elet0"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
@dataclass
class D2Eseqn(D2E000):
    arg1: d2explst
    arg2: d2exp
    ctag = "D2Eseqn"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
@dataclass
class D2Ewhere(D2E000):
    arg1: d2exp
    arg2: d2eclist
    ctag = "D2Ewhere"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
@dataclass
class D2Et2pck(D2E000):
    arg1: d2exp
    arg2: s2typ
    ctag = "D2Et2pck"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
@dataclass
class D2Et2ped(D2E000):
    arg1: d2exp
    arg2: s2typ
    ctag = "D2Et2ped"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
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
    ctag = "D2Cvaldclst"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
@dataclass
class D2Cvardclst(D2C000):
    arg1: token
    arg2: d2vardclist
    ctag = "D2Cvardclst"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
#
@dataclass
class D2Cfundclst(D2C000):
    arg1: token
    arg2: pyobj
    arg3: d2cstlst
    arg4: d2fundclist
    ctag = "D2Cfundclst"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg4})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg4!r})"
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
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg8})"
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
#
def \
PY_F2ARGdapp\
(lctn: loctn, \
 arg1: sint, arg2: d2patlst)->F2ARGdapp:
    return F2ARGdapp(lctn, arg1, arg2)
#
def \
PY_F2ARGmets\
(lctn: loctn, arg1: s2explst)->F2ARGmets:
    return F2ARGmets(lctn, arg1)
#
def \
PY_F2ARGsapp\
(lctn: loctn, \
 arg1: s2varlst, arg2: s2explst)->F2ARGsapp:
    return F2ARGsapp(lctn, arg1, arg2)
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
#
@dataclass
class d2parsed(ABC):
    stadyn: sint
    nerror: sint
    source: lcsrc
    t1penv: pyobj
    t2penv: pyobj
    parsed: d2eclistopt
    def __str__(self)->strn:
        return f"D2PARSED({self.stadyn};{self.nerror};{self.source};{self.parsed})"
    def __repr__(self)->strn:
        return f"D2PARSED({self.stadyn!r};{self.nerror!r};{self.source!r};{self.parsed!r})"
    pass
#
def \
PY_d2parsed\
(stadyn: sint,
 nerror: sint,
 source: lcsrc,
 t1penv: pyobj,
 t2penv: pyobj,
 parsed: d2eclistopt) -> d2parsed:
    return d2parsed(stadyn, nerror, source, t1penv, t2penv, parsed)
#
########################################################################
########################################################################
# end of [ATS3-PYDEV/srcgen1/DATS/CATS/dynexp2.py]
########################################################################
########################################################################
