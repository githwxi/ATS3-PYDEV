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
from DATS.CATS.staexp2_xprint import *
from DATS.CATS.statyp2_xprint import *
########################################################################
########################################################################
#
def s2res_xprenv\
(sres: s2res, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
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
    dlta = 2
    xenv.indpr()
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
def dimpl_nind_xprenv\
(dimp: dimpl, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    dimpl_xprenv(dimp, xenv); xenv.decby(dlta)
    return None # end(dimpl_nind_xprenv(...))
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
def d2exp_xprenv\
(dexp: d2exp, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
    else:
        print(f"d2exp_xprenv: dexp = {dexp}@{dexp.lctn}")
    return None # end-of-(d2exp_xprenv(dexp,xenv))
#
########################################################################
#
def d2exp_nind_xprenv\
(dexp: d2exp, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d2exp_xprenv(dexp, xenv); xenv.decby(dlta)
    return None # end-of-(d2exp_nind_xprenv(dexp, dlta, xenv))
#
def d2explst_nind_xprenv\
(d2es: d2explst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d2explst_xprenv(dcls, xenv); xenv.decby(dlta)
    return None # end-of-(d2explst_nind_xprenv(d2es, dlta, xenv))
#
########################################################################
########################################################################
#
def d2ecl_xprenv\
(d2cl: d2ecl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr()
    if False:
        pass
    elif isinstance(d2cl, D2Cerrck):
        print(\
        f"D2Cerrck@{d2cl.lctn}:")
        xenv.indpr()
        print(f"D2Cerrck.arg1: {d2cl.arg1}")
        xenv.indpr(); print("D2Cerrck.arg2:")
        d2ecl_nind_xprenv(d2cl.arg2, dlta, xenv)
    else:
        print(f"d2ecl_xprenv: d2cl = {d2cl}@{d2cl.lctn}")
    return None # end-of-(d2ecl_xprenv(d2cl,xenv))
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
# end of
# [ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/DATS/CATS/dynexp2_xprint.py]
########################################################################
########################################################################
