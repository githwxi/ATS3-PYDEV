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
from DATS.CATS.dynexp2 import *
########################################################################
from DATS.CATS.a3pydev_xprint import *
from DATS.CATS.dynexp1_xprint import *
from DATS.CATS.staexp2_xprint import *
from DATS.CATS.statyp2_xprint import *
########################################################################
########################################################################
#
def s2res_xprenv\
(sres: s2res, xenv: xprnv)->None:
#
    dlta = 2
    xenv.indpr()
#
    if False:
        pass
    elif isinstance(sres, S2RESnone):
        print("S2RESnone()")
    elif isinstance(sres, S2RESsome):
        print("S2RESsome:")
        xenv.indpr()
        print("S2RESsome.seff:")
        xenv.indpr()
        print("S2RESsome.sexp:")
        s2exp_nind_xprenv(sres.arg2, dlta, xenv)
    return None # end-of-(s2res_xprenv(...))
#
def s2res_nind_xprenv\
(sres: s2res, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    s2res_xprenv(sres, xenv); xenv.decby(dlta)
    return None # end(s2res_nind_xprenv(...))
#
########################################################################
#
def dimpl_xprenv\
(dimp: dimpl, xenv: xprnv)->None:
#
    dlta = 2
    xenv.indpr()
#
    if False:
        pass
    elif isinstance(dimp, DIMPLnon1):
        print("DIMPLnon1:")
        xenv.indpr()
        print(f"DIMPLone1.dqid: {dimp.arg1}")
    elif isinstance(dimp, DIMPLone1):
        print("DIMPLone1:")
        xenv.indpr()
        print(f"DIMPLone1.dcst: {dimp.arg1}")
    elif isinstance(dimp, DIMPLone2):
        print("DIMPLone2:")
        xenv.indpr()
        print(f"DIMPLone2.dcst: {dimp.arg1}")
    return None # end-of-(dimpl_xprenv(...))
#
########################################################################
#
def dimpl_nind_xprenv\
(dimp: dimpl, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    dimpl_xprenv(dimp, xenv); xenv.decby(dlta)
    return None # end-of-(dimpl_nind_xprenv(...))
#
########################################################################
########################################################################
#
def s2qag_xprenv\
(sqa0: s2qag, xenv: xprnv)->None:
    xenv.indpr()
    print(f"S2QAG({sqa0.s2vs})")
def s2qaglst_xprenv\
(sqas: s2qaglst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(sqas, xenv, s2qag_xprenv)
#
def s2qaglst_nind_xprenv\
(sqas: s2qaglst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    s2qaglst_xprenv(sqas, xenv); xenv.decby(dlta)
#
########################################################################
#
def t2qag_xprenv\
(tqa0: t2qag, xenv: xprnv)->None:
    xenv.indpr()
    print(f"T2QAG({tqa0.s2vs})")
def t2qaglst_xprenv\
(tqas: t2qaglst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(tqas, xenv, t2qag_xprenv)
#
def t2qaglst_nind_xprenv\
(tqas: t2qaglst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    t2qaglst_xprenv(tqas, xenv); xenv.decby(dlta)
#
########################################################################
#
def t2iag_xprenv\
(tia0: t2iag, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr(); print("T2IAG:")
    s2explst_nind_xprenv(tia0.s2es, dlta, xenv)
def t2iaglst_xprenv\
(tias: t2iaglst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(tias, xenv, t2iag_xprenv)
#
def t2iaglst_nind_xprenv\
(tias: t2iaglst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    t2iaglst_xprenv(tias, xenv); xenv.decby(dlta)
#
########################################################################
#
def t2jag_xprenv\
(tja0: t2jag, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr(); print("T2JAG:")
    s2typlst_nind_xprenv(tja0.t2ps, dlta, xenv)
def t2jaglst_xprenv\
(tjas: t2jaglst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(tjas, xenv, t2jag_xprenv)
#
def t2jaglst_nind_xprenv\
(tjas: t2jaglst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    t2jaglst_xprenv(tjas, xenv); xenv.decby(dlta)
#
########################################################################
########################################################################
#
def d2pat_xprenv\
(dpat: d2pat, xenv: xprnv)->None:
#
    dlta = 2
    xenv.indpr()
#
    if False:
        pass
#
    elif isinstance(dpat, D2Pnil):
        print(f"D2Pnil()")
    elif isinstance(dpat, D2Pany):
        print(f"D2Pany()")
    elif isinstance(dpat, D2Pvar):
        print(f"D2Pvar({dpat.arg1})")
#
    elif isinstance(dpat, D2Pint):
        print(f"D2Pint({dpat.arg1})")
    elif isinstance(dpat, D2Pbtf):
        print(f"D2Pbtf({dpat.arg1})")
    elif isinstance(dpat, D2Pchr):
        print(f"D2Pchr({dpat.arg1})")
    elif isinstance(dpat, D2Pflt):
        print(f"D2Pflt({dpat.arg1})")
    elif isinstance(dpat, D2Pstr):
        print(f"D2Pstr({dpat.arg1})")
#
    elif isinstance(dpat, D2Pcon):
        print(f"D2Pcon({dpat.arg1})")
#
    elif isinstance(dpat, D2Pannot):
        print("D2Pannot:")
        xenv.indpr(); print("D2Pannot.arg1:")
        d2pat_nind_xprenv(dpat.arg1, dlta, xenv)
        xenv.indpr(); print("D2Pannot.arg3:")
        s2exp_nind_xprenv(dpat.arg3, dlta, xenv)
#
    else:
        print(f"d2pat_xprenv: dpat = {dpat}@{dpat.lctn}")
    return None # end-of-(d2pat_xprenv(dpat,xenv))
#
########################################################################
#
def d2patlst_xprenv\
(d2ps: d2patlst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d2ps, xenv, d2pat_xprenv)
    return None # end-of-[d2patlst_xprenv(d2ps,xenv)]
#
########################################################################
#
def d2pat_nind_xprenv\
(dpat: d2pat, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d2pat_xprenv(dpat, xenv); xenv.decby(dlta)
    return None # end-of-(d2pat_nind_xprenv(dpat,dlta,xenv))
#
def d2patlst_nind_xprenv\
(d2ps: d2patlst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d2patlst_xprenv(d2ps, xenv); xenv.decby(dlta)
    return None # end-of-(d2patlst_nind_xprenv(d2ps,dlta,xenv))
#
########################################################################
########################################################################
#
def d2exp_xprenv\
(dexp: d2exp, xenv: xprnv)->None:
#
    dlta = 2
    xenv.indpr()
#
    if False:
        pass
#
    elif isinstance(dexp, D2Eint):
        print(f"D2Eint({dexp.arg1})")
    elif isinstance(dexp, D2Ebtf):
        print(f"D2Ebtf({dexp.arg1})")
    elif isinstance(dexp, D2Echr):
        print(f"D2Ebtf({dexp.arg1})")
    elif isinstance(dexp, D2Eflt):
        print(f"D2Eflt({dexp.arg1})")
    elif isinstance(dexp, D2Estr):
        print(f"D2Estr({dexp.arg1})")
#
    elif isinstance(dexp, D2Etop):
        print(f"D2Etop({dexp.arg1})")
#
    elif isinstance(dexp, D2Evar):
        print(f"D2Evar({dexp.arg1})")
    elif isinstance(dexp, D2Econ):
        print(f"D2Econ({dexp.arg1})")
    elif isinstance(dexp, D2Ecst):
        print(f"D2Ecst({dexp.arg1})")
#
    elif isinstance(dexp, D2Esym0):
        print("D2Esym0:")
        xenv.indpr()
        print("D2Esym0.arg1:")
        d2exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D2Esym0.arg2:")
        d1exp_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D2Esapp):
        print("D2Esapp:")
        xenv.indpr()
        print("D2Esapp.arg1:")
        d2exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D2Esapp.arg2:")
        s2explst_nind_xprenv(dexp.arg2, dlta, xenv)
    elif isinstance(dexp, D2Etapp):
        print("D2Etapp:")
        xenv.indpr()
        print("D2Etapp.arg1:")
        d2exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print("D2Etapp.arg2:")
        s2explst_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D2Edapp):
        print("D2Edapp:")
        xenv.indpr()
        print("D2Edapp.arg1:")
        d2exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr()
        print(f"D2Edapp.arg2: {dexp.arg2}")
        xenv.indpr(); print("D2Edapp.arg3:")
        d2explst_nind_xprenv(dexp.arg3, dlta, xenv)
#
    elif isinstance(dexp, D2Elet0):
        print("D2Elet0:")
        xenv.indpr(); print("D2Elet0.arg1:")
        d2eclist_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr(); print("D2Elet0.arg2:")
        d2exp_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D2Eift0):
        print("D2Eift0:")
        xenv.indpr(); print("D2Eift0.test:")
        d2exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr(); print("D2Eift0.then:")
        d2expopt_nind_xprenv(dexp.arg2, dlta, xenv)
        xenv.indpr(); print("D2Eift0.else:")
        d2expopt_nind_xprenv(dexp.arg3, dlta, xenv)
#
    elif isinstance(dexp, D2Eannot):
        print("D2Eannot:")
        xenv.indpr(); print("D2Eannot.arg1:")
        d2exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr(); print("D2Eannot.arg3:")
        s2exp_nind_xprenv(dexp.arg3, dlta, xenv)
#
    elif isinstance(dexp, D2Et2pck):
        print("D2Et2pck:")
        xenv.indpr(); print("D2Et2pck.arg1:")
        d2exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr(); print("D2Et2pck.arg2:")
        s2typ_nind_xprenv(dexp.arg2, dlta, xenv)
    elif isinstance(dexp, D2Et2ped):
        print("D2Et2ped:")
        xenv.indpr(); print("D2Et2ped.arg1:")
        d2exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr(); print("D2Et2ped.arg2:")
        s2typ_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D2Enone0):
        print("D2Enone0()")
    elif isinstance(dexp, D2Enone1):
        print("D2Enone1:")
        xenv.indpr(); print("D2Enone1.arg1:")
        d1exp_nind_xprenv(dexp.arg1, dlta, xenv)
    elif isinstance(dexp, D2Enone2):
        print("D2Enone2:")
        xenv.indpr(); print("D2Enone2.arg1:")
        d2exp_nind_xprenv(dexp.arg1, dlta, xenv)
#
    elif isinstance(dexp, D2Eerrck):
        print("D2Eerrck:")
        xenv.indpr()
        print(f"D2Eerrck.arg1: {dexp.arg1}")
        xenv.indpr(); print("D2Eerrck.arg2:")
        d2exp_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D2Ea3src):
        print(f"D2Ea3src(...)@{dexp.lctn}")
#
    else:
        print(f"d2exp_xprenv: dexp = {dexp}@{dexp.lctn}")
    return None # end-of-(d2exp_xprenv(dexp,xenv))
#
########################################################################
#
def d2explst_xprenv\
(d2es: d2explst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d2es, xenv, d2exp_xprenv)
    return None # end-of-[d2explst_xprenv(d2es,xenv)]
#
def d2expopt_xprenv\
(dopt: d2expopt, xenv: xprnv)->None:
    fnoptn_foritm_e1nv(dopt, xenv, d2exp_xprenv)
    return None # end-of-[d2expopt_xprenv(dopt,xenv)]
#
########################################################################
#
def d2exp_nind_xprenv\
(dexp: d2exp, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d2exp_xprenv(dexp, xenv); xenv.decby(dlta)
    return None # end-of-(d2exp_nind_xprenv(dexp,dlta,xenv))
#
def d2explst_nind_xprenv\
(d2es: d2explst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d2explst_xprenv(d2es, xenv); xenv.decby(dlta)
    return None # end-of-(d2explst_nind_xprenv(d2es,dlta,xenv))
#
def d2expopt_nind_xprenv\
(dopt: d2expopt, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d2expopt_xprenv(dopt, xenv); xenv.decby(dlta)
    return None # end-of-(d2expopt_nind_xprenv(dopt,dlta,xenv))
#
########################################################################
########################################################################
#
def f2arg_xprenv\
(farg: f2arg, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
    elif isinstance(farg, F2ARGdapp):
        print("F2ARGdapp:")
        xenv.indpr()
        print(\
        f"F2ARGdapp.arg1: {farg.arg1}")
        xenv.indpr(); print("F2ARGdapp.arg2:")
        d2patlst_nind_xprenv(farg.arg2, dlta, xenv)
    elif isinstance(farg, F2ARGsapp):
        print("F2ARGsapp:")
        xenv.indpr(); print("F2ARGsapp.arg1:")
        s2varlst_nind_xprenv(farg.arg1, dlta, xenv)
        xenv.indpr(); print("F2ARGsapp.arg2:")
        s2explst_nind_xprenv(farg.arg2, dlta, xenv)
    elif isinstance(farg, F2ARGmets):
        print("F2ARGmets:")
        xenv.indpr(); print("F2ARGmets.arg1:")
        s2explst_nind_xprenv(farg.arg1, dlta, xenv)
    else:
        return None # end-of-[f2arg_xprenv(farg,...)
#
def f2arglst_xprenv\
(f2as: f2arglst, xenv: xprnv)->None:
    fnlist_foritm_e1nv(f2as, xenv, f2arg_xprenv)
    return None # end-of-[f2arglst_xprenv(f2as,xenv)]
#
########################################################################
#
def f2arglst_nind_xprenv\
(f2as: f2arglst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    f2arglst_xprenv(f2as, xenv); xenv.decby(dlta)
    return None # end-of-(f2arglst_nind_xprenv(f2as,dlta,xenv))
#
########################################################################
########################################################################
#
def d2ecl_xprenv\
(d2cl: d2ecl, xenv: xprnv)->None:
#
    dlta = 2
    xenv.indpr()
#
    if False:
        pass
#
    elif isinstance(d2cl, D2Cstatic):
        print(\
        f"D2Cstatic@{d2cl.lctn}:")
        xenv.indpr()
        print(\
        f"D2Cstatic.arg1: {d2cl.arg1}")
        xenv.indpr()
        print("D2Cstatic.arg2:")
        d2ecl_nind_xprenv(d2cl.arg2, dlta, xenv)
    elif isinstance(d2cl, D2Cextern):
        print(\
        f"D2Cextern@{d2cl.lctn}:")
        xenv.indpr()
        print(\
        f"D2Cextern.arg1: {d2cl.arg1}")
        xenv.indpr()
        print("D2Cextern.arg2:")
        d2ecl_nind_xprenv(d2cl.arg2, dlta, xenv)
#
    elif isinstance(d2cl, D2Clocal0):
        print(\
        f"D2Clocal0@{d2cl.lctn}:")
        xenv.indpr()
        print("D2Clocal0.head:")
        d2eclist_nind_xprenv(d2cl.arg1, dlta, xenv)
        xenv.indpr()
        print("D2Clocal0.body:")
        d2eclist_nind_xprenv(d2cl.arg2, dlta, xenv)
#
    elif isinstance(d2cl, D2Cerrck):
        print(\
        f"D2Cerrck@{d2cl.lctn}:")
        xenv.indpr()
        print(f"D2Cerrck.arg1: {d2cl.arg1}")
        xenv.indpr(); print("D2Cerrck.arg2:")
        d2ecl_nind_xprenv(d2cl.arg2, dlta, xenv)
#
    elif isinstance(d2cl, D2Cvaldclst):
        print(\
        f"D2Cvaldclst@{d2cl.lctn}:")
        d2valdclist_nind_xprenv(d2cl.arg2, dlta, xenv)
    elif isinstance(d2cl, D2Cvardclst):
        print(\
        f"D2Cvardclst@{d2cl.lctn}:")
        d2vardclist_nind_xprenv(d2cl.arg2, dlta, xenv)
    elif isinstance(d2cl, D2Cfundclst):
        print(\
        f"D2Cfundclst@{d2cl.lctn}:")
        d2fundclist_nind_xprenv(d2cl.arg4, dlta, xenv)
#
    else:
        print(f"d2ecl_xprenv: d2cl = {d2cl}@{d2cl.lctn}")
    return None # end-of-(d2ecl_xprenv(d2cl,xenv))
#
########################################################################
#
def d2eclist_xprenv\
(dcls: d2eclist, xenv: xprnv)->None:
    fnlist_foritm_e1nv(dcls, xenv, d2ecl_xprenv)
    return None # end-of-[d2eclist_xprenv(dcls,xenv)]
#
def d2eclopt_xprenv\
(dopt: d2eclopt, xenv: xprnv)->None:
    fnoptn_foritm_e1nv(dopt, xenv, d2ecl_xprenv)
    return None # end-of-[d2eclopt_xprenv(dopt,xenv)]
#
def d2eclistopt_xprenv\
(dopt: d2eclistopt, xenv: xprnv)->None:
    fnoptn_foritm_e1nv(dopt, xenv, d2eclist_xprenv)
    return None # end-of-[d2eclistopt_xprenv(dopt,xenv)]
#
########################################################################
#
def d2ecl_nind_xprenv\
(d2cl: d2ecl, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d2ecl_xprenv(d2cl, xenv); xenv.decby(dlta)
    return None # end-of-(d2ecl_nind_xprenv(d2cl,dlta,xenv))
#
def d2eclist_nind_xprenv\
(dcls: d2eclist, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d2eclist_xprenv(dcls, xenv); xenv.decby(dlta)
    return None # end-of-(d2eclist_nind_xprenv(dcls,dlta,xenv))
#
########################################################################
########################################################################
#
def d2valdcl_xprenv\
(dval: d2valdcl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    print(\
    f"D2VALDCL({dval.lctn}):")
    xenv.indpr()
    print("D2VALDCL.dpat:")
    # print(\
    # f"D2VALDCL.dpat: {dval.dpat}")
    d2pat_nind_xprenv(dval.dpat, dlta, xenv)
    tdxp = dval.tdxp
    match tdxp:
        case _ if \
        isinstance(tdxp, TEQD2EXPnone):
            xenv.indpr()
            print("D2VALDCL.tdxp: TEQD2EXPnone")
        case _ if \
        isinstance(tdxp, TEQD2EXPsome):
            xenv.indpr()
            print("D2VALDCL.tdxp: TEQD2EXPsome")
            d2exp_nind_xprenv(tdxp.arg2, dlta, xenv)
    return None # end-of-[d2valdcl_xprenv(dval,xenv)]
#
def d2valdclist_xprenv\
(d2vs: d2valdclist, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d2vs, xenv, d2valdcl_xprenv)
    return None # end-of-[d2valdclist_xprenv(d2vs,xenv)]
#
########################################################################
#
def d2vardcl_xprenv\
(dvar: d2vardcl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    print(\
    f"D2VARDCL({dvar.lctn}):")
    xenv.indpr()
    print(\
    f"D2VARDCL.dpid: {dvar.dpid}")
    dini = dvar.dini
    match dini:
        case _ if \
        isinstance(dini, TEQD2EXPnone):
            xenv.indpr()
            print("D2VARDCL.dini: TEQD2EXPnone")
        case _ if \
        isinstance(dini, TEQD2EXPsome):
            xenv.indpr()
            print("D2VARDCL.dini: TEQD2EXPsome")
            d2exp_nind_xprenv(dini.arg2, dlta, xenv)
    return None # end-of-[d2vardcl_xprenv(dvar,xenv)]
#
def d2vardclist_xprenv\
(d2vs: d2vardclist, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d2vs, xenv, d2vardcl_xprenv)
    return None # end-of-[d2vardclist_xprenv(d2vs,xenv)]
#
########################################################################
#
def d2fundcl_xprenv\
(dfun: d2fundcl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    print(\
    f"D2FUNDCL({dfun.lctn}):")
#
    xenv.indpr()
    print(\
    f"D2FUNDCL.dpid: {dfun.dpid}")
    xenv.indpr()
    print("D2FUNDCL.farg:")
    f2arglst_nind_xprenv(dfun.farg, dlta, xenv)
#
    xenv.indpr()
    print("D2FUNDCL.sres:")
    s2res_nind_xprenv(dfun.sres, dlta, xenv)
#
    tdxp = dfun.tdxp
    match tdxp:
        case _ if \
        isinstance(tdxp, TEQD2EXPnone):
            xenv.indpr()
            print("D2FUNDCL.tdxp: TEQD2EXPnone")
        case _ if \
        isinstance(tdxp, TEQD2EXPsome):
            xenv.indpr()
            print("D2FUNDCL.tdxp: TEQD2EXPsome")
            d2exp_nind_xprenv(tdxp.arg2, dlta, xenv)
#
    return None # end-of-[d2fundcl_xprenv(dfun,xenv)]
#
def d2fundclist_xprenv\
(d2fs: d2fundclist, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d2fs, xenv, d2fundcl_xprenv)
    return None # end-of-[d2fundclist_xprenv(d2fs,xenv)]
#
########################################################################
#
def d2valdclist_nind_xprenv\
(d2vs: d2valdclist, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta);
    d2valdclist_xprenv(d2vs, xenv); xenv.decby(dlta)
    return None # end-of-[d2valdclist_nind_xprenv(d2vs,dlta,xenv)]
#
def d2vardclist_nind_xprenv\
(d2vs: d2vardclist, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta);
    d2vardclist_xprenv(d2vs, xenv); xenv.decby(dlta)
    return None # end-of-[d2vardclist_nind_xprenv(d2vs,dlta,xenv)]
#
def d2fundclist_nind_xprenv\
(d2fs: d2fundclist, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta);
    d2fundclist_xprenv(d2fs, xenv); xenv.decby(dlta)
    return None # end-of-[d2fundclist_nind_xprenv(d2fs,dlta,xenv)]
#
########################################################################
########################################################################
#
def \
PY000_d2parsed_xprint\
(dpar: d2parsed)->None: return d2eclistopt_xprenv(dpar.parsed, xprnv())
#
########################################################################
########################################################################
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/DATS/CATS/dynexp2_xprint.py]
########################################################################
########################################################################
