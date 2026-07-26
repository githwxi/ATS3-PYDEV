#!/usr/bin/env python3
########################################################################
########################################################################
#
# HX-2026-07-01:
# Wed Jul  1 04:06:18 AM EDT 2026
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
########################################################################
from DATS.CATS.a3pydev import *
from DATS.CATS.staexp2 import *
from DATS.CATS.statyp2 import *
from DATS.CATS.dynexp2 import *
from DATS.CATS.dynexp3 import *
########################################################################
from DATS.CATS.a3pydev_xprint import *
from DATS.CATS.staexp2_xprint import *
from DATS.CATS.statyp2_xprint import *
########################################################################
########################################################################
#
def d3pat_xprenv\
(dpat: d3pat, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
    elif isinstance(dpat, D3Pany):
        print(f"D3Pany()")
    elif isinstance(dpat, D3Pvar):
        print(f"D3Pvar({dpat.arg1})")
#
    elif isinstance(dpat, D3Pint):
        print(f"D3Pint({dpat.arg1})")
    elif isinstance(dpat, D3Pbtf):
        print(f"D3Pbtf({dpat.arg1})")
    elif isinstance(dpat, D3Pchr):
        print(f"D3Pchr({dpat.arg1})")
    elif isinstance(dpat, D3Pflt):
        print(f"D3Pflt({dpat.arg1})")
    elif isinstance(dpat, D3Pstr):
        print(f"D3Pstr({dpat.arg1})")
#
    elif isinstance(dpat, D3Pcon):
        print(f"D3Pcon({dpat.arg1})")
#
    elif isinstance(dpat, D3Pbang):
        print("D3Pbang:")
        xenv.indpr()
        print("D3Pbang.arg1:")
        d3pat_nind_xprenv(dpat.arg1, dlta, xenv)
    elif isinstance(dpat, D3Pflat):
        print("D3Pflat:")
        xenv.indpr()
        print("D3Pflat.arg1:")
        d3pat_nind_xprenv(dpat.arg1, dlta, xenv)
    elif isinstance(dpat, D3Pfree):
        print("D3Pfree:")
        xenv.indpr()
        print("D3Pfree.arg1:")
        d3pat_nind_xprenv(dpat.arg1, dlta, xenv)
#
    elif isinstance(dpat, D3Ptapq):
        print("D3Ptapq:")
        xenv.indpr()
        print("D3Ptapq.arg1:")
        d3pat_nind_xprenv(dpat.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Ptapq.arg2:")
        # t2jgs_nind_xprenv(dpat.arg2, dlta, xenv)
#
    elif isinstance(dpat, D3Pdapp):
        print("D3Pdapp:")
        xenv.indpr()
        print("D3Pdapp.arg1:")
        d3pat_nind_xprenv(dpat.arg1, dlta, xenv)
        xenv.indpr()
        print(f"D3Pdapp.arg2: {dpat.arg2}")
        xenv.indpr(); print("D3Pdapp.arg3:")
        d3pts_nind_xprenv(dpat.arg3, dlta, xenv)
#
    elif isinstance(dpat, D3Pannot):
        print("D3Pannot:")
        xenv.indpr(); print("D3Pannot.arg1:")
        d3pat_nind_xprenv(dpat.arg1, dlta, xenv)
        xenv.indpr(); print("D3Pannot.arg3:")
        s2exp_nind_xprenv(dpat.arg3, dlta, xenv)
#
    else:
        print(f"d3pat_xprenv: dpat = {dpat}@{dpat.lctn}")
#
def d3patlst_xprenv\
(d3ps: d3patlst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d3ps, xenv, d3pat_xprenv)
    return None # end-of-[d3patlst_xprenv(d3ps,xenv)]
#
########################################################################
#
def d3exp_xprenv\
(dexp: d3exp, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
#
    elif isinstance(dexp, D3Eint):
        print(f"D3Eint({dexp.arg1})")
    elif isinstance(dexp, D3Ebtf):
        print(f"D3Ebtf({dexp.arg1})")
    elif isinstance(dexp, D3Echr):
        print(f"D3Ebtf({dexp.arg1})")
    elif isinstance(dexp, D3Eflt):
        print(f"D3Eflt({dexp.arg1})")
    elif isinstance(dexp, D3Estr):
        print(f"D3Estr({dexp.arg1})")
#
    elif isinstance(dexp, D3Etop):
        print(f"D3Etop({dexp.arg1})")
#
    elif isinstance(dexp, D3Evar):
        print(f"D3Evar({dexp.arg1})")
    elif isinstance(dexp, D3Econ):
        print(f"D3Econ({dexp.arg1})")
    elif isinstance(dexp, D3Ecst):
        print(f"D3Ecst({dexp.arg1})")
#
    elif isinstance(dexp, D3Etimp):
        print("D3Etimp:")
        xenv.indpr()
        print("D3Etimp.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Etimp.arg2:")
        # timpl_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D3Esapp):
        print("D3Esapp:")
        xenv.indpr()
        print("D3Esapp.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Esapp.arg2:")
        s2xps_nind_xprenv(dexp.arg2, dlta, xenv)
    elif isinstance(dexp, D3Esapq):
        print("D3Esapq:")
        xenv.indpr()
        print("D3Esapq.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Esapq.arg2:")
        t2yps_nind_xprenv(dexp.arg2, dlta, xenv)
 #
    elif isinstance(dexp, D3Etapp):
        print("D3Etapp:")
        xenv.indpr()
        print("D3Etapp.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Etapp.arg2:")
        # s2xps_nind_xprenv(dexp.arg2, dlta, xenv)
    elif isinstance(dexp, D3Etapq):
        print("D3Etapq:")
        xenv.indpr()
        print("D3Etapq.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Etapq.arg2:")
        # t2jgs_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D3Edapp):
        print("D3Edapp:")
        xenv.indpr()
        print("D3Edapp.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print(f"D3Edapp.arg2: {dexp.arg2}")
        xenv.indpr(); print("D3Edapp.arg3:")
        d3xps_nind_xprenv(dexp.arg3, dlta, xenv)
#
    elif isinstance(dexp, D3Elet0):
        print("D3Elet0:")
        xenv.indpr()
        print("D3Elet0.arg1:")
        d3cls_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Elet0.arg2:")
        d3exp_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D3Eift0):
        print("D3Eift0:")
        xenv.indpr()
        print("D3Eift0.test:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Eift0.then:")
        d3xpt_nind_xprenv(dexp.arg2, dlta, xenv)
        xenv.indpr()
        print("D3Eift0.else:")
        d3xpt_nind_xprenv(dexp.arg3, dlta, xenv)
    elif isinstance(dexp, D3Ecas0):
        print("D3Ecas0:")
        xenv.indpr()
        print(\
        f"D3Ecas0.arg1: {dexp.arg1}")
        xenv.indpr()
        print("D3Ecas0.arg2:")
        d3exp_nind_xprenv(dexp.arg2, dlta, xenv)
        xenv.indpr()
        print("D3Ecas0.arg3:")
        c3laz_nind_xprenv(dexp.arg3, dlta, xenv)
#
    elif isinstance(dexp, D3Eseqn):
        print("D3Eseqn:")
        xenv.indpr()
        print("D3Eseqn.arg1:")
        d3xps_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Eseqn.arg2:")
        d3exp_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D3Eflat):
        print("D3Eflat:")
        xenv.indpr()
        print("D3Eflat.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
    elif isinstance(dexp, D3Eeval):
        print("D3Eeval:")
        xenv.indpr()
        print("D3Eeval.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
    elif isinstance(dexp, D3Efold):
        print("D3Efold:")
        xenv.indpr()
        print("D3Efold.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
    elif isinstance(dexp, D3Efree):
        print("D3Efree:")
        xenv.indpr()
        print("D3Efree.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
#
    elif isinstance(dexp, D3Ewhere):
        print("D3Ewhere:")
        xenv.indpr()
        print("D3Ewhere.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Ewhere.arg2:")
        d3cls_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D3Eassgn):
        print("D3Eassgn:")
        xenv.indpr()
        print("D3Eassgn.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Eassgn.arg2:")
        d3exp_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D3Eannot):
        print("D3Eannot:")
        xenv.indpr()
        print("D3Eannot.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Eannot.arg3:")
        s2exp_nind_xprenv(dexp.arg3, dlta, xenv)
#
    elif isinstance(dexp, D3Et2pck):
        print("D3Et2pck:")
        xenv.indpr()
        print("D3Et2pck.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Et2pck.arg2:")
        s2typ_nind_xprenv(dexp.arg2, dlta, xenv)
    elif isinstance(dexp, D3Et2ped):
        print("D3Et2ped:")
        xenv.indpr()
        print("D3Et2ped.arg1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D3Et2ped.arg2:")
        s2typ_nind_xprenv(dexp.arg2, dlta, xenv)
#
    else:
        print(f"d3exp_xprenv: dexp = {dexp}@{dexp.lctn}")
#    
def d3explst_xprenv\
(d3es: d3explst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d3es, xenv, d3exp_xprenv)
    return None # end-of-[d3explst_xprenv(d3es,xenv)]
#
def d3expopt_xprenv\
(dopt: d3expopt, xenv: xprnv)->None:
    if isinstance(dopt, fnoptn_nil):
        return None
    if isinstance(dopt, fnoptn_cons):
        return d3exp_xprenv(dopt.arg1, xenv)
    return None # end-of-[d3expopt_xprenv(dopt,xenv)]
#
########################################################################
#
def f3arg_xprenv\
(farg: f3arg, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
    elif isinstance(farg, F3ARGdapp):
        print("F3ARGdapp:")
        xenv.indpr()
        print(\
        f"F3ARGdapp.arg1: {farg.arg1}")
        xenv.indpr()
        print("F3ARGdapp.arg2:")
        d3pts_nind_xprenv(farg.arg2, dlta, xenv)
    elif isinstance(farg, F3ARGsapp):
        print("F3ARGsapp:")
        xenv.indpr()
        print("F3ARGsapp.arg1:")
        # s2vrs_nind_xprenv(farg.arg1, dlta, xenv)
        xenv.indpr()
        print("F3ARGsapp.arg2:")
        # s2xps_nind_xprenv(farg.arg2, dlta, xenv)
    elif isinstance(farg, F3ARGmets):
        print("F3ARGmets:")
        xenv.indpr()
        print("F3ARGmets.arg1:")
        # s2xps_nind_xprenv(farg.arg1, dlta, xenv)
    else:
        return None # end-of-[f3arg_xprenv(farg,...)
#
def f3arglst_xprenv\
(f3as: f3arglst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(f3as, xenv, f3arg_xprenv)
    return None # end-of-[f3arglst_xprenv(f3as,xenv)]
#
########################################################################
#
def d3gua_xprenv\
(dgua: d3gua, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
    elif isinstance(dgua, D3GUAexp):
        print("D3GUAexp:")
        xenv.indpr()
        print("D3GUAexp.arg1:")
        d3exp_nind_xprenv(dgua.arg1, dlta, xenv)
    elif isinstance(dgua, D3GUAmat):
        print("D3GUAmat:")
        xenv.indpr()
        print("D3GUAmat.arg1:")
        d3exp_nind_xprenv(dgua.arg1, dlta, xenv)
        xenv.indpr()
        print("D3GUAmat.arg2:")
        d3pat_nind_xprenv(dgua.arg2, dlta, xenv)
    else:
        return None # end-of-[d3gua_xprenv(dgua,...)
#
def d3gpt_xprenv\
(dgpt: d3gpt, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
    elif isinstance(dgpt, D3GPTpat):
        print("D3GPTpat:")
        xenv.indpr()
        print("D3GPTpat.arg1:")
        d3pat_nind_xprenv(dgpt.arg1, dlta, xenv)
    elif isinstance(dgpt, D3GPTgua):
        print("D3GPTgua:")
        xenv.indpr()
        print("D3GPTgua.arg1:")
        d3pat_nind_xprenv(dgpt.arg1, dlta, xenv)
        xenv.indpr()
        print("D3GPTgua.arg2:")
        g3uas_nind_xprenv(dgpt.arg2, dlta, xenv)
    else:
        return None # end-of-[d3gpt_xprenv(dgpt,...)
#
def c3las_xprenv\
(clas: d3cls, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
    elif isinstance(clas, D3CLSgpt):
        print("D3CLSgpt:")
        xenv.indpr()
        print("D3CLSgpt.arg1:")
        d3gpt_nind_xprenv(clas.arg1, dlta, xenv)
    elif isinstance(clas, D3CLScls):
        print("D3CLScls:")
        xenv.indpr()
        print("D3CLScls.arg1:")
        d3gpt_nind_xprenv(clas.arg1, dlta, xenv)
        xenv.indpr()
        print("D3CLScls.arg2:")
        d3exp_nind_xprenv(clas.arg2, dlta, xenv)
    else:
        return None # end-of-[c3las_xprenv(clas,...)
#
def d3gualst_xprenv\
(d3gs: d3gualst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d3gs, xenv, d3gua_xprenv)
    return None # end-of-[d3gualst_xprenv(d3gs,xenv)]
#
def c3laslst_xprenv\
(claz: d3clslst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(claz, xenv, c3las_xprenv)
    return None # end-of-[c3laslst_xprenv(claz,xenv)]
#
########################################################################
#
def d3pat_nind_xprenv\
(dpat: d3pat, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3pat_xprenv(dpat, xenv); xenv.decby(dlta)
    return None # d3pat_nind_xprenv(...)
#
def d3exp_nind_xprenv\
(dexp: d3exp, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3exp_xprenv(dexp, xenv); xenv.decby(dlta)
    return None # d3exp_nind_xprenv(...)
#
def d3gpt_nind_xprenv\
(dgpt: d3gpt, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3gpt_xprenv(dgpt, xenv); xenv.decby(dlta)
    return None # d3gpt_nind_xprenv(...)
#
def d3pts_nind_xprenv\
(d3ps: d3patlst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3patlst_xprenv(d3ps, xenv); xenv.decby(dlta)
    return None # d3pts_nind_xprenv(...)
#
def d3xps_nind_xprenv\
(d3es: d3explst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3explst_xprenv(d3es, xenv); xenv.decby(dlta)
    return None # d3xps_nind_xprenv(...)
def d3xpt_nind_xprenv\
(dopt: d3expopt, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3expopt_xprenv(dopt, xenv); xenv.decby(dlta)
    return None # d3xpt_nind_xprenv(...)
#
def g3uas_nind_xprenv\
(guas: d3gualst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3gualst_xprenv(guas, xenv); xenv.decby(dlta)
    return None # c3laz_nind_xprenv(...)
#
def c3laz_nind_xprenv\
(claz: d3clslst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    c3laslst_xprenv(claz, xenv); xenv.decby(dlta)
    return None # c3laz_nind_xprenv(...)
#
def f3ags_nind_xprenv\
(f3as: f3arglst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    f3arglst_xprenv(f3as, xenv); xenv.decby(dlta)
    return None # f3ags_nind_xprenv(...)
#
########################################################################
########################################################################
#
def d3ecl_xprenv\
(d3cl: d3ecl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
#
    elif isinstance(d3cl, D3Cstatic):
        print(\
        f"D3Cstatic@{d3cl.lctn}:")
        d3ecl_nind_xprenv(d3cl, dlta, xenv)
    elif isinstance(d3cl, D3Cextern):
        print(\
        f"D3Cextern@{d3cl.lctn}:")
        d3ecl_nind_xprenv(d3cl, dlta, xenv)
#
    elif isinstance(d3cl, D3Clocal0):
        print(\
        f"D3Clocal0@{d3cl.lctn}:")
        print(  "D3Clocal0.head:"  )
        d3eclist_nind_xprenv(d3cl.arg1, dlta, xenv)
        print(  "D3Clocal0.body:"  )
        d3eclist_nind_xprenv(d3cl.arg2, dlta, xenv)
#
    elif isinstance(d3cl, D3Cvaldclst):
        print(\
        f"D3Cvaldclst@{d3cl.lctn}:")
        d3valdclist_nind_xprenv(d3cl.arg2, dlta, xenv)
    elif isinstance(d3cl, D3Cvardclst):
        print(\
        f"D3Cvardclst@{d3cl.lctn}:")
        d3vardclist_nind_xprenv(d3cl.arg2, dlta, xenv)
    elif isinstance(d3cl, D3Cfundclst):
        print(\
        f"D3Cfundclst@{d3cl.lctn}:")
        d3fundclist_nind_xprenv(d3cl.arg4, dlta, xenv)
#
    else:
        print(f"d3ecl_xprenv: d3cl = {d3cl}@{d3cl.lctn}")
#
def d3eclist_xprenv\
(dcls: d3eclist, xenv: xprnv)->None:
    x1 = None
    xs : d3eclist = dcls
    while True:
        if isinstance(xs, fnlist_cons):
            x1 = xs.arg1
            xs = xs.arg2
            d3ecl_xprenv(x1, xenv)
        else:
            break
    return None # end-of-[d3eclist_xprenv(d3es,xenv)]
#
def d3eclistopt_xprenv\
(dopt: d3eclistopt, xenv: xprnv)->None:
    if False:
        pass
    elif isinstance(dopt, fnoptn_nil):
        return None
    elif isinstance(dopt, fnoptn_cons):
        return d3eclist_xprenv(dopt.arg1, xenv)
#
########################################################################
#
def d3ecl_nind_xprenv\
(d3cl: d3ecl, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3ecl_xprenv(d3cl, xenv); xenv.decby(dlta)
#
def d3cls_nind_xprenv\
(dcls: d3eclist, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3eclist_xprenv(dcls, xenv); xenv.decby(dlta)
#
########################################################################
########################################################################
#
def d3valdcl_xprenv\
(dval: d3valdcl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    print(\
    f"D3VALDCL({dval.lctn}):")
    xenv.indpr()
    print(\
    f"D3VALDCL.dpat: {dval.dpat}")
    d3pat_nind_xprenv(dval.dpat, dlta, xenv)
    tdxp = dval.tdxp
    match tdxp:
        case _ if \
        isinstance(tdxp, TEQD3EXPnone):
            xenv.indpr()
            print("D3VALDCL.tdxp: TEQD3EXPnone")
        case _ if \
        isinstance(tdxp, TEQD3EXPsome):
            xenv.indpr()
            print("D3VALDCL.tdxp: TEQD3EXPsome")
            d3exp_nind_xprenv(tdxp.arg2, dlta, xenv)
    return None # end-of-[d3valdcl_xprenv(dval, ...)]
#
def d3valdclist_xprenv\
(d3vs: d3valdclist, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d3vs, xenv, d3valdcl_xprenv)
#
########################################################################
#
def d3vardcl_xprenv\
(dvar: d3vardcl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    print(\
    f"D3VARDCL({dvar.lctn}):")
    xenv.indpr()
    print(\
    f"D3VARDCL.dpid: {dvar.dpid}")
    dini = dvar.dini
    match dini:
        case _ if \
        isinstance(dini, TEQD3EXPnone):
            xenv.indpr()
            print("D3VARDCL.dini: TEQD3EXPnone")
        case _ if \
        isinstance(dini, TEQD3EXPsome):
            xenv.indpr()
            print("D3VARDCL.dini: TEQD3EXPsome")
            d3exp_nind_xprenv(dini.arg2, dlta, xenv)
    return None # end-of-[d3vardcl_xprenv(dvar, ...)]
#
def d3vardclist_xprenv\
(d3vs: d3vardclist, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d3vs, xenv, d3vardcl_xprenv)
#
########################################################################
#
def d3fundcl_xprenv\
(dfun: d3fundcl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    print(\
    f"D3FUNDCL({dfun.lctn}):")
    xenv.indpr()
    print(\
    f"D3FUNDCL.dpid: {dfun.dpid}")
    xenv.indpr()
    print("D3FUNDCL.farg:")
    f3ags_nind_xprenv(dfun.farg, dlta, xenv)
    tdxp = dfun.tdxp
    match tdxp:
        case _ if \
        isinstance(tdxp, TEQD3EXPnone):
            print("D3FUNDCL.tdxp: TEQD3EXPnone")
        case _ if \
        isinstance(tdxp, TEQD3EXPsome):
            xenv.indpr()
            print("D3FUNDCL.tdxp: TEQD3EXPsome")
            d3exp_nind_xprenv(tdxp.arg2, dlta, xenv)
    return None # end-of-[d3fundcl_xprenv(dfun, ...)]
#
def d3fundclist_xprenv\
(d3fs: d3fundclist, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d3fs, xenv, d3fundcl_xprenv)
#
########################################################################
#
def d3valdclist_nind_xprenv\
(d3vs: \
 d3valdclist, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta);
    d3valdclist_xprenv(d3vs, xenv); xenv.decby(dlta)
def d3vardclist_nind_xprenv\
(d3vs: \
 d3vardclist, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta);
    d3vardclist_xprenv(d3vs, xenv); xenv.decby(dlta)
#
def d3fundclist_nind_xprenv\
(d3fs: \
 d3fundclist, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta);
    d3fundclist_xprenv(d3fs, xenv); xenv.decby(dlta)
#
########################################################################
#
def \
PY000_d3parsed_xprint(dpar: d3parsed)->None:
    xenv = xprnv()
    return d3eclistopt_xprenv(dpar.parsed, xenv)
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/DATS/CATS/dynexp3_xprint.py]
########################################################################
########################################################################
