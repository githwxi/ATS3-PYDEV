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
from DATS.CATS.statyp2 import *
from DATS.CATS.dynexp2 import *
from DATS.CATS.dynexp3 import *
########################################################################
from DATS.CATS.a3pydev_xprint import *
from DATS.CATS.statyp2_xprint import *
########################################################################
########################################################################
#
def d3exp_xprenv\
(dexp: d3exp, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr( )
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
    elif isinstance(dexp, D3Edapp):
        print("D3Edapp:")
        xenv.indpr( )
        print("D3Edapp.fun1:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr( )
        print("D3Edapp.args:")
        d3xps_nind_xprenv(dexp.arg3, dlta, xenv)
#
    elif isinstance(dexp, D3Elet0):
        print("D3Elet0:")
        xenv.indpr( )
        print("D3Elet0.dcls:")
        d3cls_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr( )
        print("D3Elet0.dexp:")
        d3exp_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D3Eift0):
        print("D3Eift0:")
        xenv.indpr( )
        print("D3Eift0.test:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr( )
        print("D3Eift0.then:")
        d3xpt_nind_xprenv(dexp.arg2, dlta, xenv)
        xenv.indpr( )
        print("D3Eift0.else:")
        d3xpt_nind_xprenv(dexp.arg3, dlta, xenv)
#
    elif isinstance(dexp, D3Eseqn):
        print("D3Eseqn:")
        xenv.indpr( )
        print("D3Eseqn.init:")
        d3xps_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr( )
        print("D3Eseqn.last:")
        d3exp_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D3Eflat):
        print("D3Eflat:")
        xenv.indpr( )
        print("D3Eflat.dexp:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
    elif isinstance(dexp, D3Eeval):
        print("D3Eeval:")
        xenv.indpr( )
        print("D3Eeval.dexp:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
    elif isinstance(dexp, D3Efold):
        print("D3Efold:")
        xenv.indpr( )
        print("D3Efold.dexp:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
    elif isinstance(dexp, D3Efree):
        print("D3Efree:")
        xenv.indpr( )
        print("D3Efree.dexp:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
#
    elif isinstance(dexp, D3Ewhere):
        print("D3Ewhere:")
        xenv.indpr( )
        print("D3Ewhere.dexp:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr( )
        print("D3Ewhere.dcls:")
        d3cls_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D3Eassgn):
        print("D3Eassgn:")
        xenv.indpr( )
        print("D3Eassgn.lval:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr( )
        print("D3Eassgn.rval:")
        d3exp_nind_xprenv(dexp.arg2, dlta, xenv)
#
    elif isinstance(dexp, D3Et2ped):
        print("D3Et2ped:")
        xenv.indpr( )
        print("D3Et2ped.dexp:")
        d3exp_nind_xprenv(dexp.arg1, dlta, xenv)
        xenv.indpr( )
        print("D3Et2ped.styp:")
        s2typ_nind_xprenv(dexp.arg2, dlta, xenv)
#
    else:
        print(f"d3exp_xprenv: dexp = {dexp}")
#    
def d3explst_xprenv\
(d3es: d3explst, xenv: xprnv)->None:
    x1 = None
    xs : d3explst = d3es
    while True:
        if isinstance(xs, fnlist_cons):
            x1 = xs.arg1
            xs = xs.arg2
            d3exp_xprenv(x1, xenv)
        else:
            break
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
def d3exp_nind_xprenv\
(dexp: d3exp, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3exp_xprenv(dexp, xenv)
    xenv.decby(dlta)
def d3xps_nind_xprenv\
(d3es: d3explst, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3explst_xprenv(d3es, xenv)
    xenv.decby(dlta)
def d3xpt_nind_xprenv\
(dopt: d3expopt, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3expopt_xprenv(dopt, xenv)
    xenv.decby(dlta)
#
########################################################################
########################################################################
#
def d3ecl_xprenv\
(d3cl: d3ecl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr( )
    if False:
        pass
    elif isinstance(d3cl, D3Cstatic):
        print("D3Cstatic:")
        d3ecl_nind_xprenv(d3cl, dlta, xenv)
    elif isinstance(d3cl, D3Cextern):
        print("D3Cextern:")
        xenv.incby(2)
        d3ecl_xprenv(d3cl, xenv)
        xenv.decby(2)
    elif isinstance(d3cl, D3Cfundclst):
        print("D3Cfundclst:")
        xenv.incby(2)
        d3fundclist_xprenv(d3cl.arg4, xenv)
        xenv.decby(2)
    else:
        print(f"d3ecl_xprenv: d3cl = {d3cl}")
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
    d3ecl_xprenv(d3cl, xenv)
    xenv.decby(dlta)
def d3cls_nind_xprenv\
(dcls: d3eclist, dlta: sint, xenv: xprnv)->None:
    xenv.incby(dlta)
    d3eclist_xprenv(dcls, xenv)
    xenv.decby(dlta)
#
########################################################################
########################################################################
#
def d3fundcl_xprenv\
(dfun: d3fundcl, xenv: xprnv)->None:
    dlta = 2
    xenv.indpr( )
    print(\
    f"D3FUNDCL.dpid: {dfun.dpid}")
    xenv.indpr( )
    print(\
    f"D3FUNDCL.farg: {dfun.farg}")
    xenv.indpr( )
    tdxp = dfun.tdxp
    match tdxp:
        case _ if \
        isinstance(tdxp, TEQD3EXPnone):
            print("D3FUNDCL.tdxp: TEQD3EXPnone")
        case _ if \
        isinstance(tdxp, TEQD3EXPsome):
            print("D3FUNDCL.tdxp: TEQD3EXPsome")
            d3exp_nind_xprenv(tdxp.arg2, dlta, xenv)
#
#   xenv.indpr( )
#   print(f"d3fundcl_xprenv: dfun = {dfun}")
#
def d3fundclist_xprenv\
(d3fs: d3fundclist, xenv: xprnv)->None:
    fnlist_foritm_e1nv(d3fs, xenv, d3fundcl_xprenv)
#
########################################################################
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
