(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2026 Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
** later version.
** 
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
** 
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
(* ****** ****** *)
//
(*
//
Author: Hongwei Xi
Start Time: June 14th, 2026
Authoremail: gmhwxiATgmailDOTcom
//
(*
HX-2026-06-14:
Sun Jun 14 02:25:56 PM EDT 2026
*)
//
*)
//
(* ****** ****** *)
(* ****** ****** *)
#include
"./../HATS/mytmplib00.hats"
(* ****** ****** *)
(* ****** ****** *)
//
#staload "./../../\
xassets/ATS3/SATS/xsymbol.sats"
#staload "./../../\
xassets/ATS3/SATS/locinfo.sats"
#staload "./../../\
xassets/ATS3/SATS/lexing0.sats"
#staload "./../../\
xassets/ATS3/SATS/staexp2.sats"
#staload "./../../\
xassets/ATS3/SATS/statyp2.sats"
#staload "./../../\
xassets/ATS3/SATS/dynexp2.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/ats3_pydev.sats"
#staload
"./../SATS/locinfo_pytrcpy.sats"
#staload
"./../SATS/staexp2_pytrcpy.sats"
#staload
"./../SATS/statyp2_pytrcpy.sats"
#staload
"./../SATS/dynexp2_pytrcpy.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_repr
{a:type}(x:a): strn = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Pa3src
( loc0
: PY$loctn
, dpat: d2pat): PY$d2pat = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Ea3src
( loc0
: PY$loctn
, dexp: d2exp): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Ca3src
( loc0
: PY$loctn
, d2cl: d2ecl): PY$d2ecl = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Eint
( loc0
: PY$loctn
, tint: token): PY$d2exp = $extnam()
#extern
fun
PY_D2Ebtf
( loc0
: PY$loctn
, sbtf: symbl): PY$d2exp = $extnam()
#extern
fun
PY_D2Echr
( loc0
: PY$loctn
, tchr: token): PY$d2exp = $extnam()
#extern
fun
PY_D2Estr
( loc0
: PY$loctn
, tstr: token): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Evar
( loc0: PY$loctn
, dvar: PY$d2var): PY$d2exp = $extnam()
#extern
fun
PY_D2Econ
( loc0: PY$loctn
, dcon: PY$d2con): PY$d2exp = $extnam()
#extern
fun
PY_D2Ecst
( loc0: PY$loctn
, dcst: PY$d2cst): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Edap0
( loc0: PY$loctn
, d2e1: PY$d2exp   ): PY$d2exp = $extnam()
//
#extern
fun
PY_D2Edapp
( loc0: PY$loctn
, d2f0: PY$d2exp
, npf1: sint
, d2es: PY$d2explst): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Elet0
( loc0: PY$loctn
, dcls: PY$d2eclist
, d2e1: PY$d2exp   ): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Eseqn
( loc0: PY$loctn
, d2es: PY$d2explst
, d2e1: PY$d2exp   ): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Ewhere
( loc0: PY$loctn
, d2e1: PY$d2exp
, dcls: PY$d2eclist): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Et2pck
( loc0: PY$loctn
, d2e1: PY$d2exp
, t2p2: PY$s2typ   ): PY$d2exp = $extnam()
//
#extern
fun
PY_D2Et2ped
( loc0: PY$loctn
, d2e1: PY$d2exp
, t2p2: PY$s2typ   ): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Clocal0
( loc0: PY$loctn
, head: PY$d2eclist
, body: PY$d2eclist): PY$d2ecl = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Cvaldclst
( loc0: PY$loctn
, tknd: token
, d2vs:
(
   PY$d2valdclist )): PY$d2ecl = $extnam()
#extern
fun
PY_D2Cvardclst
( loc0: PY$loctn
, tknd: token
, d2vs:
(
   PY$d2vardclist )): PY$d2ecl = $extnam()
//
#extern
fun
PY_D2Cfundclst
( loc0: PY$loctn
, tknd: token
, t2qs: t2qaglst
, d2cs: d2cstlst
, d2fs:
(
   PY$d2fundclist )): PY$d2ecl = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Cimplmnt0
( loc0: PY$loctn
, tknd: token
, sqas: s2qaglst
, tqas: t2qaglst
, dimp: dimpl
, tias: t2iaglst
, f2as: f2arglst
, sres: PY$s2res
, d2e1: PY$d2exp   ): PY$d2ecl = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_d2valdcl_make_args
( lctn: PY$loctn
, dpat: PY$d2pat
, tdxp: PY$teqd2exp
, wsxp: PY$wths2exp): PY$d2valdcl = $extnam()
//
#extern
fun
PY_d2vardcl_make_args
( lctn: PY$loctn
, dpid: d2var
, vpid: d2varopt
, sres: PY$s2expopt
, tdxp: PY$teqd2exp): PY$d2vardcl = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_d2fundcl_make_args
( lctn: PY$loctn
, dpid: d2var
, farg: f2arglst
, sres: PY$s2res
, tdxp: PY$teqd2exp
, wsxp: PY$wths2exp): PY$d2fundcl = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
g_print<d2pat>(dpat) =
d2pat_fprint(dpat, g_print$out<>())
#impltmp
g_print<d2exp>(dexp) =
d2exp_fprint(dexp, g_print$out<>())
#impltmp
g_print<d2ecl>(d2cl) =
d2ecl_fprint(d2cl, g_print$out<>())
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2var_pytrcpy
(   dvar   ) =
let
//
val lctn =
loctn_pytrcpy
(
d2var_get_lctn(dvar))
//
val name =
symbl_pytrcpy
(
d2var_get_name(dvar))
//
val stmp =
stamp_pytrcpy
(
d2var_get_stmp(dvar))
//
in//let
(
  PY_d2var(lctn, name, stmp))
end where
{
//
#extern
fun
PY_d2var
( lctn: PY$loctn
, name: PY$symbl
, stmp: PY$stamp): PY$s2res = $extnam()
//
}(*where*)//end-of-[d2var_pytrcpy(dvar)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s2res_pytrcpy
(   sres   ) =
(
case+ sres of
|S2RESnone
( (*void*) ) =>
(
PY_S2RESnone((*0*)))
|S2RESsome
(seff, s2e1) =>
(
PY_S2RESsome(seff, s2e1))
where
{
val s2e1 = s2exp_pytrcpy(s2e1) }
) where
{
//
#extern
fun
PY_S2RESnone
(   (*nil*)   ): PY$s2res = $extnam()
#extern
fun
PY_S2RESsome
(
seff: s2eff,
s2e1: PY$s2exp): PY$s2res = $extnam()
//
}(*where*)//end-of-[s2res_pytrcpy(sres)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2pat_pytrcpy
(   dpat   ) =
(
case+
dpat.node() of
|
_(*otherwise*) => PY_D2Pa3src(loc0, dpat)
) where
{
//
val loc0 =
loctn_pytrcpy(dpat.lctn((*0*)))
//
val (  ) =
(
  printsln("d2pat_pytrcpy: dpat = ", dpat))
//
val (  ) =
printsln("d2pat_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d2pat_pytrcpy(dpat)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2exp_pytrcpy
(   dexp   ) =
(
case+
dexp.node() of
//
(* ****** ****** *)
//
|D2Eint
(   tint   ) =>
(
  PY_D2Eint(loc0, tint))
|D2Ebtf
(   sbtf   ) =>
(
  PY_D2Ebtf(loc0, sbtf))
|D2Echr
(   tchr   ) =>
(
  PY_D2Echr(loc0, tchr))
|D2Estr
(   tstr   ) =>
(
  PY_D2Estr(loc0, tstr))
//
(* ****** ****** *)
//
|D2Evar
(   d2v1   ) =>
let
val d2v1 =
d2var_pytrcpy(d2v1)
in//let
(
  PY_D2Evar(loc0, d2v1))
end//let
|D2Econ
(   d2c1   ) =>
let
val d2c1 =
d2con_pytrcpy(d2c1)
in//let
(
  PY_D2Econ(loc0, d2c1))
end//let
|D2Ecst
(   d2c1   ) =>
let
val d2c1 =
d2cst_pytrcpy(d2c1)
in//let
(
  PY_D2Ecst(loc0, d2c1))
end//let
//
(* ****** ****** *)
//
|D2Edap0
(   d2e1   ) =>
let
val d2e1 =
d2exp_pytrcpy(d2e1)
in//let
  PY_D2Edap0(loc0, d2e1)
end//let
//
|D2Edapp
(d2f0
,npf1, d2es) =>
(
PY_D2Edapp
(loc0, d2f0, npf1, d2es))
where
{
val d2f0 =
  d2exp_pytrcpy(d2f0)
val d2es =
(
  d2explst_pytrcpy(d2es)) }
//
(* ****** ****** *)
//
|D2Elet0
(dcls, d2e1) =>
let
val d2e1 =
(
  d2exp_pytrcpy(d2e1))
in//let
PY_D2Elet0
(loc0, dcls, d2e1(*scp*))
end where
{
val dcls =
(
  d2eclist_pytrcpy(dcls)) }
//
(* ****** ****** *)
//
|D2Eseqn
(d2es, d2e1) =>
(
PY_D2Eseqn
(loc0, d2es, d2e1))
where
{
//
val
d2es =
d2explst_pytrcpy(d2es)
//
val
d2e1 = d2exp_pytrcpy(d2e1) }
//
(* ****** ****** *)
//
|D2Ewhere
(d2e1, dcls) =>
let
val d2e1 =
(
  d2exp_pytrcpy(d2e1))
in//let
PY_D2Ewhere
(loc0, d2e1(*scp*), dcls)
end where
{
val dcls =
(
  d2eclist_pytrcpy(dcls)) }
//
(* ****** ****** *)
//
|D2Et2pck
(d2e1, t2p2) =>
(
PY_D2Et2pck
(loc0, d2e1, t2p2(*ann*))
) where
{
val d2e1 = d2exp_pytrcpy(d2e1)
val t2p2 = s2typ_pytrcpy(t2p2)
}
//
(* ****** ****** *)
//
|D2Et2ped
(d2e1, t2p2) =>
(
PY_D2Et2ped
(loc0, d2e1, t2p2(*ann*))
) where
{
val d2e1 = d2exp_pytrcpy(d2e1)
val t2p2 = s2typ_pytrcpy(t2p2)
}
//
(* ****** ****** *)
(* ****** ****** *)
|_(*otherwise*) => PY_D2Ea3src(loc0, dexp)
(* ****** ****** *)
(* ****** ****** *)
//
)
where
{
//
val loc0 =
loctn_pytrcpy(dexp.lctn((*0*)))
//
val (  ) =
(
  printsln("d2exp_pytrcpy: dexp = ", dexp))
//
val (  ) =
printsln("d2exp_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d2exp_pytrcpy(dexp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2ecl_pytrcpy
(   d2cl   ) =
(
case+
d2cl.node() of
//
|D2Clocal0
(head, body) =>
(
PY_D2Clocal0
(loc0, head, body))
where
{
val head =
(
  d2eclist_pytrcpy(head))
val body =
(
  d2eclist_pytrcpy(body)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D2Cvaldclst
(tknd, d2vs) =>
(
PY_D2Cvaldclst
(loc0, tknd, d2vs))
where
{
val d2vs =
(
  d2valdclist_pytrcpy(d2vs))
}
//
|D2Cvardclst
(tknd, d2vs) =>
(
PY_D2Cvardclst
(loc0, tknd, d2vs))
where
{
val d2vs =
(
  d2vardclist_pytrcpy(d2vs))
}
//
(* ****** ****** *)
//
|D2Cfundclst
(tknd
,tqas
,d2cs, d2fs) =>
(
PY_D2Cfundclst
(loc0, tknd
,tqas, d2cs, d2fs))
where
{
val d2fs =
(
  d2fundclist_pytrcpy(d2fs))
}
//
(* ****** ****** *)
(* ****** ****** *)
//
|
D2Cimplmnt0
(tknd
,sqas, tqas
,dimp
,tias, f2as
,sres, d2e1) =>
(
PY_D2Cimplmnt0
(loc0
,tknd
,sqas, tqas, dimp
,tias, f2as, sres, d2e1))
where
{
//
val sres = s2res_pytrcpy(sres)
val d2e1 = d2exp_pytrcpy(d2e1)
}
//
(* ****** ****** *)
(* ****** ****** *)
|_(*otherwise*) => PY_D2Ca3src(loc0, d2cl)
(* ****** ****** *)
(* ****** ****** *)
//
) where
{
//
val loc0 =
loctn_pytrcpy(d2cl.lctn((*0*)))
//
val (  ) =
(
  printsln("d2ecl_pytrcpy: d2cl = ", d2cl))
//
val (  ) =
printsln("d2ecl_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d2ecl_pytrcpy(d2cl)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2patlst_pytrcpy
(   d2ps   ) =
(
list_map$f1un_PY$list(d2ps, d2pat_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d2explst_pytrcpy
(   d2es   ) =
(
list_map$f1un_PY$list(d2es, d2exp_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d2eclist_pytrcpy
(   dcls   ) =
(
list_map$f1un_PY$list(dcls, d2ecl_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
teqd2exp_pytrcpy
(   tdxp   ) =
(
case+ tdxp of
|
TEQD2EXPnone
( (*void*) ) =>
PY_TEQD2EXPnone((*void*))
|
TEQD2EXPsome
(teq0, dexp) =>
let
val dexp =
d2exp_pytrcpy(dexp)
in//let
  PY_TEQD2EXPsome(teq0, dexp) end
) where
{
#extern
fun
PY_TEQD2EXPnone
(   (*nil*)   ): PY$teqd2exp = $extnam()
#extern
fun
PY_TEQD2EXPsome
(
teq0: token,
dexp: PY$d2exp): PY$teqd2exp = $extnam()
}(*where*)//end-of-[teqd2exp_pytrcpy(tdxp)]
//
(* ****** ****** *)
//
#implfun
wths2exp_pytrcpy
(   wsxp   ) =
(
case+ wsxp of
|
WTHS2EXPnone
( (*void*) ) =>
PY_WTHS2EXPnone((*void*))
|
WTHS2EXPsome
(teq0, sexp) =>
let
val sexp =
s2exp_pytrcpy(sexp)
in//let
  PY_WTHS2EXPsome(teq0, sexp) end
) where
{
#extern
fun
PY_WTHS2EXPnone
(   (*nil*)   ): PY$wths2exp = $extnam()
#extern
fun
PY_WTHS2EXPsome
(
teq0: token,
sexp: PY$s2exp): PY$wths2exp = $extnam()
}(*where*)//end-of-[wths2exp_pytrcpy(wsxp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2valdcl_pytrcpy
(   dval   ) =
let
//
val loc0 =
loctn_pytrcpy
(
d2valdcl_get_lctn(dval))
//
val dpat =
d2pat_pytrcpy
(
d2valdcl_get_dpat(dval))
//
val tdxp =
teqd2exp_pytrcpy
(
d2valdcl_get_tdxp(dval))
//
val wsxp =
wths2exp_pytrcpy
(
d2valdcl_get_wsxp(dval))
//
in//let
(
PY_d2valdcl_make_args(
  loc0, dpat, tdxp(*dopt*), wsxp(*wtyp*)))
end(*let*)//end-of-[d2valdcl_pytrcpy(dval)]
//
(* ****** ****** *)
//
#implfun
d2vardcl_pytrcpy
(   dvar   ) =
let
//
val loc0 =
loctn_pytrcpy
(
d2vardcl_get_lctn(dvar))
//
val dpid =
//d2var_pytrcpy
(
d2vardcl_get_dpid(dvar))
//
val vpid =
//d2varopt_pytrcpy
(
d2vardcl_get_vpid(dvar))
//
val sres =
s2expopt_pytrcpy
(
d2vardcl_get_sres(dvar))
//
val dini =
teqd2exp_pytrcpy
(
d2vardcl_get_dini(dvar))
//
in//let
(
PY_d2vardcl_make_args(loc0,
  dpid, vpid(*view*), sres, dini(*init*)))
end(*let*)//end-of-[d2vardcl_pytrcpy(dvar)]
//
(* ****** ****** *)
//
#implfun
d2fundcl_pytrcpy
(   dfun   ) =
let
//
val loc0 =
loctn_pytrcpy
(
d2fundcl_get_lctn(dfun))
//
val dpid =
(
d2fundcl_get_dpid(dfun))
//
val f2as =
(
d2fundcl_get_farg(dfun))

val sres =
s2res_pytrcpy
(
d2fundcl_get_sres(dfun))
//
val tdxp =
teqd2exp_pytrcpy
(
d2fundcl_get_tdxp(dfun))
val wsxp =
wths2exp_pytrcpy
(d2fundcl_get_wsxp(dfun))
//
in//let
(
PY_d2fundcl_make_args(loc0,
  dpid(*fid*),f2as(*arg*),sres,tdxp,wsxp))
end(*let*)//end-of-[d2fundcl_pytrcpy(dfun)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2valdclist_pytrcpy
(   d2vs   ) =
(
list_map$f1un_PY$list(d2vs, d2valdcl_pytrcpy))
//
#implfun
d2vardclist_pytrcpy
(   d2vs   ) =
(
list_map$f1un_PY$list(d2vs, d2vardcl_pytrcpy))
//
#implfun
d2fundclist_pytrcpy
(   d2fs   ) =
(
list_map$f1un_PY$list(d2fs, d2fundcl_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2eclistopt_pytrcpy
(   dopt   ) =
(
optn_map$f1un_PY$optn(dopt, d2eclist_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2parsed_pytrcpy
(   dpar   ) =
let
//
val stadyn =
d2parsed_get_stadyn(dpar)
//
val nerror =
d2parsed_get_nerror(dpar)
//
val source =
lcsrc_pytrcpy
(
d2parsed_get_source(dpar))
//
val t1penv =
(
d2parsed_get_t1penv(dpar))
val t2penv =
(
d2parsed_get_t2penv(dpar))
//
val parsed =
(
d2parsed_get_parsed(dpar))
val parsed =
(
d2eclistopt_pytrcpy(parsed))
//
in//let
//
PY_d2parsed
( stadyn, nerror,
  source, t1penv, t2penv, parsed)
//
end where
{
//
#extern
fun
PY_d2parsed
( stadyn: sint
, nerror: sint
, source: PY$lcsrc
, t1penv: d1topenv
, t2penv: d2topenv
, parsed: PY$d2eclistopt): PY$d2parsed = $extnam()
//
}(*where*)//end-of-[PYDEV_d2parsed_pytrcpy(dpar)]
//
#extern
fun
PYDEV_d2parsed_pytrcpy
(dpar: d2parsed): PY$d2parsed = $extnam()
#implfun
PYDEV_d2parsed_pytrcpy(dpar) = d2parsed_pytrcpy(dpar)
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/dynexp2_pytrcpy.dats] *)
(***********************************************************************)
