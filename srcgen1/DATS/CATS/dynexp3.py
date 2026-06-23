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
from DATS.CATS.staexp1 import *
from DATS.CATS.dynexp1 import *
from DATS.CATS.staexp2 import *
from DATS.CATS.statyp2 import *
from DATS.CATS.dynexp2 import *
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
#
@dataclass
class D3CLS000(ABC):
    lctn: loctn
    pass
@dataclass
class D3GUA000(ABC):
    lctn: loctn
    pass
@dataclass
class D3GPT000(ABC):
    lctn: loctn
    pass
type d3cls = D3CLS000
type d3gua = D3GUA000
type d3gpt = D3GPT000
type d3clslst = fnlist[d3cls]
type d3gualst = fnlist[d3gua]
#
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
#
@dataclass
class D3Pcon(D3P000):
    arg1: d2con
    ctag = "D3Pcon"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D3Pvar(D3P000):
    arg1: d2var
    ctag = "D3Pvar"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
@dataclass
class D3Pannot(D3P000):
    arg1: d3pat
    arg2: s1exp
    arg3: s2exp
    ctag = "D3Pannot"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2};{self.arg3})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg3!r};{self.arg3!r})"
    pass
#
########################################################################
########################################################################
#
@dataclass
class D3Eint(D3E000):
    arg1: token
    ctag = "D3Eint"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D3Ebtf(D3E000):
    arg1: symbl
    ctag = "D3Ebtf"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D3Echr(D3E000):
    arg1: token
    ctag = "D3Echr"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D3Eflt(D3E000):
    arg1: token
    ctag = "D3Eflt"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D3Estr(D3E000):
    arg1: token
    ctag = "D3Estr"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
########################################################################
#
@dataclass
class D3Econ(D3E000):
    arg1: d2con
    ctag = "D3Econ"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D3Ecst(D3E000):
    arg1: d2cst
    ctag = "D3Ecst"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
@dataclass
class D3Evar(D3E000):
    arg1: d2var
    ctag = "D3Evar"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
########################################################################
#
@dataclass
class D3Edap0(D3E000):
    arg1: d3exp
    ctag = "D3Edap0"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D3Edapp(D3E000):
    arg1: d3exp
    arg2: sint
    arg3: d3exp
    ctag = "D3Edapp"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2};{self.arg3})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r};{self.arg3!r})"
    pass
#
########################################################################
#
@dataclass
class D3Elet0(D3E000):
    arg1: d3eclist
    arg2: d3exp
    ctag = "D3Elet0"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
########################################################################
#
@dataclass
class D3Eift0(D3E000):
    arg1: d3exp
    arg2: d3expopt
    arg3: d3expopt
    ctag = "D3Eift0"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2};{self.arg3})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r};{self.arg3!r})"
    pass
#
########################################################################
#
@dataclass
class D3Eift0(D3E000):
    arg1: d3exp
    arg2: d3expopt
    arg3: d3expopt
    ctag = "D3Eift0"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2};{self.arg3})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r};{self.arg3!r})"
    pass
#
@dataclass
class D3Ecas0(D3E000):
    arg1: token
    arg2: d3exp
    arg3: d3clslst
    ctag = "D3Ecas0"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2};{self.arg3})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r};{self.arg3!r})"
    pass
#
########################################################################
#
@dataclass
class D3Eseqn(D3E000):
    arg1: d3explst
    arg2: d3exp
    ctag = "D3Eseqn"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
########################################################################
#
@dataclass
class D3Ewhere(D3E000):
    arg1: d3exp
    arg2: d3eclist
    ctag = "D3Ewhere"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
########################################################################
#
@dataclass
class D3Et2pck(D3E000):
    arg1: d3exp
    arg2: s2typ
    ctag = "D3Et2pck"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
@dataclass
class D3Et2ped(D3E000):
    arg1: d3exp
    arg2: s2typ
    ctag = "D3Et2ped"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
########################################################################
########################################################################
#
@dataclass
class D3CLSgpt(D3CLS000):
    arg1: d3gpt
    ctag = "D3CLSgpt"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D3CLScls(D3CLS000):
    arg1: d3gpt
    arg2: d3exp
    ctag = "D3CLScls"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
@dataclass
class D3GPTpat(D3GPT000):
    arg1: d3pat
    ctag = "D3GPTpat"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D3GPTgua(D3GPT000):
    arg1: d3pat
    arg2: d3gualst
    ctag = "D3GPTgua"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
@dataclass
class D3GUAexp(D3GUA000):
    arg1: d3exp
    ctag = "D3GUAexp"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
@dataclass
class D3GUAmat(D3GUA000):
    arg1: d3exp
    arg2: d3pat
    ctag = "D3GUAmat"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
########################################################################
########################################################################
#
@dataclass
class F3ARG000(ABC):
    lctn: loctn
    pass
#
@dataclass
class F3ARGmets(F3ARG000):
    arg1: s2explst
    ctag = "F3ARGmets"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r})"
    pass
#
@dataclass
class F3ARGsapp(F3ARG000):
    arg1: s2varlst
    arg2: s2explst
    ctag = "F3ARGsapp"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
#
@dataclass
class F3ARGdapp(F3ARG000):
    arg1: sint
    arg2: d3patlst
    ctag = "F3ARGdapp"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
    pass
type f3arg = F3ARG000
type f3arglst = fnlist[f3arg]
#
########################################################################
########################################################################
#
@dataclass
class TEQD3EXP000(ABC):
    pass
@dataclass
class \
TEQD3EXPnone(TEQD3EXP000):
    pass
@dataclass
class \
TEQD3EXPsome(TEQD3EXP000):
    arg1: token
    arg2: d3exp
    pass
type teqd3exp = TEQD3EXP000
#
########################################################################
#
@dataclass
class d3valdcl_tbox(ABC):
    lctn: loctn
    dpat: d3pat
    tdxp: teqd3exp
    wsxp: wths2exp
    def __str__(self)->strn:
        return f"D3VALDCL({self.dpat};{self.tdxp};{self.wsxp})"
    def __repr__(self)->strn:
        return f"D3VALDCL({self.dpat!r};{self.tdxp!r};{self.wsxp!r})"
    pass
@dataclass
class d3vardcl_tbox(ABC):
    lctn: loctn
    dpid: d2var
    vpid: d2varopt
    sres: s2expopt
    tdxp: teqd3exp
    def __str__(self)->strn:
        return f"D3VARDCL({self.dpid};{self.vpid};{self.sres};{self.tdxp})"
    def __repr__(self)->strn:
        return f"D3VARDCL({self.dpid!r};{self.vpid!r};{self.sres!r};{self.tdxp!r})"
    pass
@dataclass
class d3fundcl_tbox(ABC):
    lctn: loctn
    dpid: d2var
    farg: pyobj
    sres: s2res
    tdxp: teqd3exp
    wsxp: wths2exp
    def __str__(self)->strn:
        return f"D3FUNDCL({self.dpid};{self.farg};{self.sres};{self.tdxp};{self.wsxp})"
    def __repr__(self)->strn:
        return f"D3FUNDCL({self.dpid!r};{self.farg!r};{self.sres!r};{self.tdxp!r};{self.wsxp!r})"
    pass
#
type d3valdcl = d3valdcl_tbox
type d3vardcl = d3vardcl_tbox
type d3fundcl = d3fundcl_tbox
#
type d3valdclist = fnlist[d3valdcl]
type d3vardclist = fnlist[d3vardcl]
type d3fundclist = fnlist[d3fundcl]
#
########################################################################
########################################################################
@dataclass
class D3Clocal0(D3C000):
    arg1: d3eclist
    arg2: d3eclist
    ctag = "D3Clocal0"
    pass
########################################################################
#
@dataclass
class D3Cvaldclst(D3C000):
    arg1: token
    arg2: d3valdclist
    ctag = "D3Cvaldclst"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
@dataclass
class D3Cvardclst(D3C000):
    arg1: token
    arg2: d3vardclist
    ctag = "D3Cvardclst"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg2})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg2!r})"
#
@dataclass
class D3Cfundclst(D3C000):
    arg1: token
    arg2: pyobj
    arg3: d2cstlst
    arg4: d3fundclist
    ctag = "D3Cfundclst"
    def __str__(self)->strn:
        return f"{self.ctag}({self.arg1};{self.arg3};{self.arg4})"
    def __repr__(self)->strn:
        return f"{self.ctag}({self.arg1!r};{self.arg3!r};{self.arg4!r})"
#
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
def PY_D3Pcon\
(lctn: loctn, arg1: d2con)->D3Pcon:
    return D3Pcon(lctn, arg1)
def PY_D3Pvar\
(lctn: loctn, arg1: d2var)->D3Pvar:
    return D3Pvar(lctn, arg1)
#
def PY_D3Pannot\
(lctn: loctn, \
 arg1: d3pat, arg2: s1exp, arg3: s2exp)->D3Pannot:
    return D3Pannot(lctn, arg1, arg2, arg3)
#
########################################################################
########################################################################
#
def PY_D3Eint\
(lctn: loctn, arg1: token)->D3Eint:
    return D3Eint(lctn, arg1)
def PY_D3Ebtf\
(lctn: loctn, arg1: symbl)->D3Ebtf:
    return D3Ebtf(lctn, arg1)
def PY_D3Estr\
(lctn: loctn, arg1: token)->D3Estr:
    return D3Estr(lctn, arg1)
#
########################################################################
#
def PY_D3Econ\
(lctn: loctn, arg1: d2con)->D3Econ:
    return D3Econ(lctn, arg1)
def PY_D3Ecst\
(lctn: loctn, arg1: d2cst)->D3Ecst:
    return D3Ecst(lctn, arg1)
def PY_D3Evar\
(lctn: loctn, arg1: d2var)->D3Evar:
    return D3Evar(lctn, arg1)
#
########################################################################
#
def PY_D3Edap0\
(loc0: loctn, arg1: d3exp)->D3Edap0:
    return D3Edap0(loc0, arg1)
def PY_D3Edapp\
(loc0: loctn, \
 arg1: d3exp, arg2: sint, arg3: d3exp)->D3Edapp:
    return D3Edapp(loc0, arg1, arg2, arg3)
#
########################################################################
def PY_D3Elet0\
(loc0: loctn, arg1: d3eclist, arg2: d3exp)->D3Elet0:
    return D3Elet0(loc0, arg1, arg2)
########################################################################
def PY_D3Eift0\
(loc0: loctn, \
 arg1: d3exp, \
 arg2: d3expopt, arg3: d3expopt)->D3Eift0:
    return D3Eift0(loc0, arg1, arg2, arg3)
########################################################################
def PY_D3Ecas0\
(loc0: loctn, \
 arg1: token, arg2: d3exp, arg3: d3clslst)->D3Ecas0:
    return D3Ecas0(loc0, arg1, arg2, arg3)
########################################################################
def PY_D3Eseqn\
(loc0: loctn, arg1: d3explst, arg2: d3exp)->D3Eseqn:
    return D3Eseqn(loc0, arg1, arg2)
########################################################################
def PY_D3Ewhere\
(loc0: loctn, arg1: d3exp, arg2: d3eclist)->D3Ewhere:
    return D3Ewhere(loc0, arg1, arg2)
########################################################################
#
def PY_D3Et2pck\
(loc0: loctn, arg1: d3exp, arg2: s2typ)->D3Et2pck:
    # print\
    # ("PY_D3Et2pck: arg1 = ", arg1)
    # print\
    # ("PY_D3Et2pck: arg2 = ", arg2)
    return D3Et2pck(loc0, arg1, arg2)
def PY_D3Et2ped\
(loc0: loctn, arg1: d3exp, arg2: s2typ)->D3Et2ped:
    # print\
    # ("PY_D3Et2ped: arg1 = ", arg1)
    # print\
    # ("PY_D3Et2ped: arg2 = ", arg2)
    return D3Et2ped(loc0, arg1, arg2)
#
########################################################################
########################################################################
#
def \
PY_D3GUAexp\
(loc0: loctn, arg1: d3exp)->D3GUAexp:
    return D3GUAexp(loc0, arg1)
def \
PY_D3GUAmat\
(loc0: loctn, arg1: d3exp, arg2: d3pat)->D3GUAmat:
    return D3GUAmat(loc0, arg1, arg2)
#
def \
PY_D3CLSgpt\
(loc0: loctn, arg1: d3gpt)->D3CLSgpt:
    return D3CLSgpt(loc0, arg1)
def \
PY_D3CLScls\
(loc0: loctn, arg1: d3gpt, arg2: d3exp)->D3CLScls:
    return D3CLScls(loc0, arg1, arg2)
#
def \
PY_D3GPTpat\
(loc0: loctn, arg1: d3pat)->D3GPTpat:
    return D3GPTpat(loc0, arg1)
def \
PY_D3GPTgua\
(loc0: loctn, arg1: d3pat, arg2: d3gualst)->D3GPTgua:
    return D3GPTgua(loc0, arg1, arg2)
#
########################################################################
########################################################################
#
def \
PY_F3ARGdapp\
(lctn: loctn, \
 arg1: sint, arg2: d3patlst)->F3ARGdapp:
    return F3ARGdapp(lctn, arg1, arg2)
#
def \
PY_F3ARGmets\
(lctn: loctn, arg1: s2explst)->F3ARGmets:
    return F3ARGmets(lctn, arg1)
#
def \
PY_F3ARGsapp\
(lctn: loctn, \
 arg1: s2varlst, arg2: s2explst)->F3ARGsapp:
    return F3ARGsapp(lctn, arg1, arg2)
#
########################################################################
########################################################################
#
def \
PY_TEQD3EXPnone()->teqd3exp:
    return TEQD3EXPnone()
def \
PY_TEQD3EXPsome\
(arg1: token, arg2: d3exp)->teqd3exp:
    return TEQD3EXPsome(arg1, arg2)
#
########################################################################
########################################################################
#
def \
PY_d3valdcl_make_args\
(lctn: loctn, \
 dpat: d3pat, \
 tdxp: teqd3exp, wsxp: wths2exp)->d3valdcl:
    return d3valdcl_tbox(lctn, dpat, tdxp, wsxp)
#
def \
PY_d3vardcl_make_args\
(lctn: loctn, \
 dpid: d2var, \
 vpid: d2varopt, \
 sres: s2expopt, tdxp: teqd3exp)->d3vardcl:
    return d3vardcl_tbox(lctn, dpid, vpid, sres, tdxp)
#
def \
PY_d3fundcl_make_args\
(lctn: loctn, \
 dpid: d2var, \
 farg: f3arglst, sres: s2res, \
 tdxp: teqd3exp, wsxp: wths2exp)->d3fundcl:
    return d3fundcl_tbox(lctn, dpid, farg, sres, tdxp, wsxp)
#
########################################################################
########################################################################
#
def PY_D3Clocal0\
(loc0: loctn, \
 arg1: d3eclist, arg2: d3eclist)->D3Clocal0:
    return D3Clocal0(loc0, arg1, arg2)
#
########################################################################
#
def PY_D3Cvaldclst\
(loc0: loctn, \
 arg1: token, arg2: d3valdclist)->D3Cvaldclst:
    return D3Cvaldclst(loc0, arg1, arg2)
def PY_D3Cvardclst\
(loc0: loctn, \
 arg1: token, arg2: d3vardclist)->D3Cvardclst:
    return D3Cvardclst(loc0, arg1, arg2)
#
def PY_D3Cfundclst\
(loc0: loctn, \
 arg1: token, arg2: pyobj, \
 arg3: d2cstlst, arg4: d3fundclist)->D3Cfundclst: 
    return D3Cfundclst(loc0, arg1, arg2, arg3, arg4) 
#
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
