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
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/xstamp0.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/xsymbol.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/locinfo.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/lexing0.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/staexp1.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/dynexp1.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/staexp2.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/statyp2.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/dynexp2.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/dynexp3.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/ats3_pydev.sats"
#staload
"./../SATS/xstamp0_pytrcpy.sats"
#staload
"./../SATS/xsymbol_pytrcpy.sats"
#staload
"./../SATS/locinfo_pytrcpy.sats"
#staload
"./../SATS/lexing0_pytrcpy.sats"
#staload
"./../SATS/staexp1_pytrcpy.sats"
#staload
"./../SATS/dynexp1_pytrcpy.sats"
#staload
"./../SATS/staexp2_pytrcpy.sats"
#staload
"./../SATS/statyp2_pytrcpy.sats"
#staload
"./../SATS/dynexp2_pytrcpy.sats"
#staload
"./../SATS/dynexp3_pytrcpy.sats"
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
PY_D3Pa3src
( loc0
: PY$loctn
, dpat: d3pat): PY$d3pat = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Ea3src
( loc0
: PY$loctn
, dexp: d3exp): PY$d3exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Ca3src
( loc0
: PY$loctn
, dexp: d3ecl): PY$d3ecl = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D3Pint
( loc0: PY$loctn
, tint: PY$token): PY$d3pat = $extnam()
#extern
fun
PY_D3Pbtf
( loc0: PY$loctn
, sbtf: PY$symbl): PY$d3pat = $extnam()
#extern
fun
PY_D3Pchr
( loc0: PY$loctn
, tchr: PY$token): PY$d3pat = $extnam()
#extern
fun
PY_D3Pstr
( loc0: PY$loctn
, tstr: PY$token): PY$d3pat = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Pany
( loc0: PY$loctn): PY$d3pat = $extnam()
#extern
fun
PY_D3Pvar
( loc0: PY$loctn
, dvar: PY$d2var): PY$d3pat = $extnam()
//
#extern
fun
PY_D3Pcon
( loc0: PY$loctn
, dcon: PY$d2con): PY$d3pat = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Pdap1
( loc0: PY$loctn
, d3p1: PY$d3pat   ): PY$d3pat = $extnam()
//
#extern
fun
PY_D3Pdapp
( loc0: PY$loctn
, d3f0: PY$d3pat
, npf1: sint
, d3ps: PY$d3patlst): PY$d3pat = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Pannot
( loc0: PY$loctn
, d3p1: PY$d3pat
, s1e2: PY$s1exp
, s2e2: PY$s2exp   ): PY$d3pat = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D3Eint
( loc0: PY$loctn
, tint: PY$token): PY$d3exp = $extnam()
#extern
fun
PY_D3Ebtf
( loc0: PY$loctn
, sbtf: PY$symbl): PY$d3exp = $extnam()
#extern
fun
PY_D3Echr
( loc0: PY$loctn
, tchr: PY$token): PY$d3exp = $extnam()
#extern
fun
PY_D3Estr
( loc0: PY$loctn
, tstr: PY$token): PY$d3exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Econ
( loc0: PY$loctn
, dcon: PY$d2con): PY$d3exp = $extnam()
#extern
fun
PY_D3Ecst
( loc0: PY$loctn
, dcst: PY$d2cst): PY$d3exp = $extnam()
#extern
fun
PY_D3Evar
( loc0: PY$loctn
, dvar: PY$d2var): PY$d3exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Esapp
( loc0: PY$loctn
, d3f0: PY$d3exp
, s2es: PY$s2explst): PY$d3exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Etapp
( loc0: PY$loctn
, d3f0: PY$d3exp
, s2es: PY$s2explst): PY$d3exp = $extnam()
#extern
fun
PY_D3Etapq
( loc0: PY$loctn
, d3f0: PY$d3exp
, s2es: PY$t2jaglst): PY$d3exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Edap0
( loc0: PY$loctn
, d3e1: PY$d3exp   ): PY$d3exp = $extnam()
//
#extern
fun
PY_D3Edapp
( loc0: PY$loctn
, d3f0: PY$d3exp
, npf1: sint
, d3es: PY$d3explst): PY$d3exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Elet0
( loc0: PY$loctn
, dcls: PY$d3eclist
, d3e1: PY$d3exp   ): PY$d3exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Eift0
( loc0: PY$loctn
, d3e1: PY$d3exp
, dthn: PY$d3expopt
, dels: PY$d3expopt): PY$d3exp = $extnam()
//
#extern
fun
PY_D3Ecas0
( loc0: PY$loctn
, tknd: PY$token
, d3e1: PY$d3exp
, dcls: PY$d3clslst): PY$d3exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Eseqn
( loc0: PY$loctn
, d3es: PY$d3explst
, d3e1: PY$d3exp   ): PY$d3exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Eaddr
( loc0: PY$loctn
, d3e1: PY$d3exp): PY$d3exp = $extnam()
//
#extern
fun
PY_D3Eview
( loc0: PY$loctn
, d3e1: PY$d3exp): PY$d3exp = $extnam()
//
#extern
fun
PY_D3Elval
( loc0: PY$loctn
, d3e1: PY$d3exp): PY$d3exp = $extnam()
//
#extern
fun
PY_D3Eflat
( loc0: PY$loctn
, d3e1: PY$d3exp): PY$d3exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Eeval
( loc0: PY$loctn
, d3e1: PY$d3exp): PY$d3exp = $extnam()
//
#extern
fun
PY_D3Efold
( loc0: PY$loctn
, d3e1: PY$d3exp): PY$d3exp = $extnam()
//
#extern
fun
PY_D3Efree
( loc0: PY$loctn
, d3e1: PY$d3exp): PY$d3exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D3Ewhere
( loc0: PY$loctn
, d3e1: PY$d3exp
, dcls: PY$d3eclist): PY$d3exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D3Eassgn
( loc0: PY$loctn
, d3el: PY$d3exp
, d3er: PY$d3exp   ): PY$d3exp = $extnam()
//
#extern
fun
PY_D3Exazgn
( loc0: PY$loctn
, d3el: PY$d3exp
, d3er: PY$d3exp   ): PY$d3exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D3Eraise
( loc0: PY$loctn
, tknd: PY$token
, d3e1: PY$d3exp   ): PY$d3exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D3Et2pck
( loc0: PY$loctn
, d3e1: PY$d3exp
, t2p2: PY$s2typ   ): PY$d3exp = $extnam()
//
#extern
fun
PY_D3Et2ped
( loc0: PY$loctn
, d3e1: PY$d3exp
, t2p2: PY$s2typ   ): PY$d3exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D3Clocal0
( loc0: PY$loctn
, head: PY$d3eclist
, body: PY$d3eclist): PY$d3ecl = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D3Cvaldclst
(
loc0: PY$loctn,
tknd: PY$token,
d3vs: PY$d3valdclist): PY$d3ecl = $extnam()
#extern
fun
PY_D3Cvardclst
(
loc0: PY$loctn,
tknd: PY$token,
d3vs: PY$d3vardclist): PY$d3ecl = $extnam()
//
#extern
fun
PY_D3Cfundclst
(
loc0: PY$loctn,
tknd: PY$token,
t2qs: t2qaglst,
d2cs: PY$d2cstlst,
d3fs: PY$d3fundclist): PY$d3ecl = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_d3valdcl_make_args
(
lctn: PY$loctn,
dpat: PY$d3pat,
tdxp: PY$teqd3exp,
wsxp: PY$wths2exp): PY$d3valdcl = $extnam()
//
#extern
fun
PY_d3vardcl_make_args
(
lctn: PY$loctn,
dpid: PY$d2var,
vpid: PY$d2varopt,
sres: PY$s2expopt,
tdxp: PY$teqd3exp): PY$d3vardcl = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_d3fundcl_make_args
(
lctn: PY$loctn,
dpid: PY$d2var,
farg: PY$f3arglst,
sres: PY$s2res,
tdxp: PY$teqd3exp,
wsxp: PY$wths2exp): PY$d3fundcl = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
g_print<d3pat>(dpat) =
d3pat_fprint(dpat, g_print$out<>())
#impltmp
g_print<d3exp>(dexp) =
d3exp_fprint(dexp, g_print$out<>())
//
#impltmp
g_print<f3arg>(farg) =
f3arg_fprint(farg, g_print$out<>())
//
#impltmp
g_print<d3ecl>(d3cl) =
d3ecl_fprint(d3cl, g_print$out<>())
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3pat_pytrcpy
(   dpat   ) =
(
case+
dpat.node() of
//
(* ****** ****** *)
//
|D3Pint
(   tint   ) =>
let
val tint =
token_pytrcpy(tint)
in//let
(
PY_D3Pint(loc0, tint))
end//let//endof(D3Pint)
//
|D3Pbtf
(   sbtf   ) =>
let
val sbtf =
symbl_pytrcpy(sbtf)
in//let
(
PY_D3Pbtf(loc0, sbtf))
end//let//endof(D3Pbtf)
//
|D3Pchr
(   tchr   ) =>
let
val tchr =
token_pytrcpy(tchr)
in//let
(
PY_D3Pchr(loc0, tchr))
end//let//endof(D3Pchr)
//
|D3Pstr
(   tstr   ) =>
let
val tstr =
token_pytrcpy(tstr)
in//let
(
PY_D3Pstr(loc0, tstr))
end//let//endof(D3Pstr)
//
(* ****** ****** *)
//
|D3Pany
( (*void*) ) =>
(
  PY_D3Pany(loc0))
//
|D3Pvar
(   d2v1   ) =>
let
val d2v1 =
d2var_pytrcpy(d2v1)
in//let
(
  PY_D3Pvar(loc0, d2v1))
end//let
//
(* ****** ****** *)
//
|D3Pcon
(   d2c1   ) =>
let
val d2c1 =
d2con_pytrcpy(d2c1)
in//let
(
  PY_D3Pcon(loc0, d2c1))
end//let
//
(* ****** ****** *)
//
(*
|D3Pdap0
(   d3p1   ) => ...
*)
|D3Pdap1
(   d3p1   ) =>
let
val d3p1 =
d3pat_pytrcpy(d3p1)
in//let
  PY_D3Pdap1(loc0, d3p1)
end//let
//
|D3Pdapp
(d3f0
,npf1, d3ps) =>
(
PY_D3Pdapp
(loc0, d3f0, npf1, d3ps))
where
{
val d3f0 =
  d3pat_pytrcpy(d3f0)
val d3ps =
(
  d3patlst_pytrcpy(d3ps)) }
//
(* ****** ****** *)
//
|D3Pannot
(d3p1
,s1e2, s2e2) =>
(
PY_D3Pannot
(loc0, d3p1, s1e2, s2e2))
where
{
val
d3p1 = d3pat_pytrcpy(d3p1)
val
s1e2 = s1exp_pytrcpy(s1e2)
val
s2e2 = s2exp_pytrcpy(s2e2) }
//
(* ****** ****** *)
//
|_(*otherwise*) => PY_D3Pa3src(loc0, dpat)
//
(* ****** ****** *)
//
) where
{
//
val loc0 =
loctn_pytrcpy(dpat.lctn((*0*)))
//
val (  ) =
(
  printsln("d3pat_pytrcpy: dpat = ", dpat))
//
val (  ) =
printsln("d3pat_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d3pat_pytrcpy(dpat)]
//
(* ****** ****** *)
//
#implfun
d3exp_pytrcpy
(   dexp   ) =
(
case+
dexp.node() of
//
(* ****** ****** *)
//
|D3Eint
(   tint   ) =>
let
val tint =
token_pytrcpy(tint)
in//let
(
PY_D3Eint(loc0, tint))
end//let//endof(D3Eint)
//
|D3Ebtf
(   sbtf   ) =>
let
val sbtf =
symbl_pytrcpy(sbtf)
in//let
(
PY_D3Ebtf(loc0, sbtf))
end//let//endof(D3Ebtf)
//
|D3Echr
(   tchr   ) =>
let
val tchr =
token_pytrcpy(tchr)
in//let
(
PY_D3Echr(loc0, tchr))
end//let//endof(D3Echr)
//
|D3Estr
(   tstr   ) =>
let
val tstr =
token_pytrcpy(tstr)
in//let
(
PY_D3Estr(loc0, tstr))
end//let//endof(D3Estr)
//
(* ****** ****** *)
//
|D3Econ
(   d2c1   ) =>
let
val d2c1 =
d2con_pytrcpy(d2c1)
in//let
(
PY_D3Econ(loc0, d2c1))
end//let//endof(D3Econ)
//
|D3Ecst
(   d2c1   ) =>
let
val d2c1 =
d2cst_pytrcpy(d2c1)
in//let
(
PY_D3Ecst(loc0, d2c1))
end//let//endof(D3Ecst)
//
|D3Evar
(   d2v1   ) =>
let
val d2v1 =
d2var_pytrcpy(d2v1)
in//let
(
PY_D3Evar(loc0, d2v1))
end//let//endof(D3Evar)
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Esapp
(d3f0, s2es) =>
(
PY_D3Esapp
(loc0, d3f0, s2es))
where
{
val d3f0 =
  d3exp_pytrcpy(d3f0)
val s2es =
(
  s2explst_pytrcpy(s2es)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Etapp
(d3f0, s2es) =>
(
PY_D3Etapp
(loc0, d3f0, s2es))
where
{
val d3f0 =
  d3exp_pytrcpy(d3f0)
val s2es =
(
  s2explst_pytrcpy(s2es)) }
//
|D3Etapq
(d3f0, tjas) =>
(
PY_D3Etapq
(loc0, d3f0, tjas))
where
{
val d3f0 =
  d3exp_pytrcpy(d3f0)
val tjas =
(
  t2jaglst_pytrcpy(tjas)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Edap0
(   d3e1   ) =>
let
val d3e1 =
d3exp_pytrcpy(d3e1)
in//let
  PY_D3Edap0(loc0, d3e1)
end//let
//
|D3Edapp
(d3f0
,npf1, d3es) =>
(
PY_D3Edapp
(loc0, d3f0, npf1, d3es))
where
{
val d3f0 =
  d3exp_pytrcpy(d3f0)
val d3es =
(
  d3explst_pytrcpy(d3es)) }
//
(* ****** ****** *)
//
|D3Elet0
(dcls, d3e1) =>
let
val d3e1 =
(
  d3exp_pytrcpy(d3e1))
in//let
PY_D3Elet0
(loc0, dcls, d3e1(*scp*))
end where
{
val dcls =
(
  d3eclist_pytrcpy(dcls)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Eift0
(d3e1
,dthn, dels) =>
let
val d3e1 =
(
  d3exp_pytrcpy(d3e1))
in//let
PY_D3Eift0(
  loc0, d3e1, dthn, dels)
end where
{
val dthn =
(
  d3expopt_pytrcpy(dthn))
val dels =
(
  d3expopt_pytrcpy(dels)) }
//
(* ****** ****** *)
//
|D3Ecas0
(tknd
,d3e1, dcls) =>
(
PY_D3Ecas0
(loc0
,tknd, d3e1, dcls))
where
{
//
val tknd =
(
  token_pytrcpy(tknd))
//
val d3e1 =
(
  d3exp_pytrcpy(d3e1))
val dcls =
(
  d3clslst_pytrcpy(dcls)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Eseqn
(d3es, d3e1) =>
(
PY_D3Eseqn
(loc0, d3es, d3e1))
where
{
//
val
d3es =
d3explst_pytrcpy(d3es)
//
val
d3e1 = d3exp_pytrcpy(d3e1) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Eaddr
(   d3e1   ) =>
(
PY_D3Eaddr(loc0, d3e1)
) where
{
val
d3e1 = d3exp_pytrcpy(d3e1) }
//
|D3Eview
(   d3e1   ) =>
(
PY_D3Eview(loc0, d3e1)
) where
{
val
d3e1 = d3exp_pytrcpy(d3e1) }
//
|D3Elval
(   d3e1   ) =>
(
PY_D3Elval(loc0, d3e1)
) where
{
val
d3e1 = d3exp_pytrcpy(d3e1) }
//
|D3Eflat
(   d3e1   ) =>
(
PY_D3Eflat(loc0, d3e1)
) where
{
val
d3e1 = d3exp_pytrcpy(d3e1) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Eeval
(   d3e1   ) =>
(
PY_D3Eeval(loc0, d3e1)
) where
{
val
d3e1 = d3exp_pytrcpy(d3e1) }
//
(* ****** ****** *)
//
|D3Efold
(   d3e1   ) =>
(
PY_D3Efold(loc0, d3e1)
) where
{
val
d3e1 = d3exp_pytrcpy(d3e1) }
//
(* ****** ****** *)
//
|D3Efree
(   d3e1   ) =>
(
PY_D3Efree(loc0, d3e1)
) where
{
val
d3e1 = d3exp_pytrcpy(d3e1) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Ewhere
(d3e1, dcls) =>
let
val d3e1 =
(
  d3exp_pytrcpy(d3e1))
in//let
PY_D3Ewhere
(loc0, d3e1(*scp*), dcls)
end where
{
val dcls =
(
  d3eclist_pytrcpy(dcls)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Eassgn
(d3el, d3er) =>
(
PY_D3Eassgn(
  loc0, d3el, d3er))
where
{
val
d3el = d3exp_pytrcpy(d3el)
val
d3er = d3exp_pytrcpy(d3er) }
//
|D3Exazgn
(d3el, d3er) =>
(
PY_D3Exazgn(
  loc0, d3el, d3er))
where
{
val
d3el = d3exp_pytrcpy(d3el)
val
d3er = d3exp_pytrcpy(d3er) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Eraise
(tknd, d3e1) =>
(
PY_D3Eraise
(loc0, tknd, d3e1))
where
{
val
tknd = token_pytrcpy(tknd)
val
d3e1 = d3exp_pytrcpy(d3e1) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Et2pck
(d3e1, t2p2) =>
(
PY_D3Et2pck
(loc0, d3e1, t2p2(*ann*))
) where
{
val d3e1 = d3exp_pytrcpy(d3e1)
val t2p2 = s2typ_pytrcpy(t2p2)
}
//
(* ****** ****** *)
//
|D3Et2ped
(d3e1, t2p2) =>
(
PY_D3Et2ped
(loc0, d3e1, t2p2(*ann*))
) where
{
val d3e1 = d3exp_pytrcpy(d3e1)
val t2p2 = s2typ_pytrcpy(t2p2)
}
//
(* ****** ****** *)
(* ****** ****** *)
//
|_(*otherwise*) => PY_D3Ea3src(loc0, dexp)
//
(* ****** ****** *)
(* ****** ****** *)
//
) where
{
//
val loc0 =
loctn_pytrcpy(dexp.lctn((*0*)))
//
val (  ) =
(
  printsln("d3exp_pytrcpy: dexp = ", dexp))
//
val (  ) =
printsln("d3exp_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d3exp_pytrcpy(dexp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3gua_pytrcpy
(   dgua   ) =
(
case+
dgua.node() of
//
|D3GUAexp
(   dexp   ) =>
(
PY_D3GUAexp
(loc0, dexp)) where
{
val dexp =
(
  d3exp_pytrcpy(dexp)) }
//
|D3GUAmat
(dexp, dpat) =>
(
PY_D3GUAmat
(loc0, dexp, dpat))
where
{
val dexp =
(
  d3exp_pytrcpy(dexp))
val dpat =
(
  d3pat_pytrcpy(dpat)) }
)
where
{
//
val loc0 =
loctn_pytrcpy(dgua.lctn((*0*)))
//
#extern
fun
PY_D3GUAexp
( lctn: PY$loctn
, dexp: PY$d3exp): PY$d3gua = $extnam()
#extern
fun
PY_D3GUAmat
( lctn: PY$loctn
, dexp: PY$d3exp
, dpat: PY$d3pat): PY$d3gua = $extnam()
//
val (  ) =
printsln("d3gua_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d3gua_pytrcpy(dgua)]
//
(* ****** ****** *)
//
#implfun
d3cls_pytrcpy
(   dcls   ) =
(
case+
dcls.node() of
|D3CLSgpt
(   dgpt   ) =>
(
PY_D3CLSgpt
(loc0, dgpt)) where
{
val
dgpt = d3gpt_pytrcpy(dgpt)
}
|D3CLScls
(dgpt, dexp) =>
(
PY_D3CLScls
(loc0, dgpt, dexp))
where
{
val
dgpt = d3gpt_pytrcpy(dgpt)
val
dexp = d3exp_pytrcpy(dexp) }
)
where
{
//
val loc0 =
loctn_pytrcpy(dcls.lctn((*0*)))
//
#extern
fun
PY_D3CLSgpt
( lctn: PY$loctn
, dgpt: PY$d3gpt): PY$d3cls = $extnam()
#extern
fun
PY_D3CLScls
( lctn: PY$loctn
, dgpt: PY$d3gpt
, dexp: PY$d3exp): PY$d3cls = $extnam()
//
val (  ) =
printsln("d3cls_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d3cls_pytrcpy(dcls)]
//
(* ****** ****** *)
//
#implfun
d3gpt_pytrcpy
(   dgpt   ) =
(
case+
dgpt.node() of
//
|D3GPTpat
(   dpat   ) =>
(
PY_D3GPTpat
(loc0, dpat)) where
{
val dpat =
(
  d3pat_pytrcpy(dpat)) }
//
|D3GPTgua
(dpat, d3gs) =>
(
PY_D3GPTgua
(loc0, dpat, d3gs))
where
{
val
dpat =
(
  d3pat_pytrcpy(dpat))
val
d3gs =
(
  d3gualst_pytrcpy(d3gs)) }
)
where
{
//
val loc0 =
loctn_pytrcpy(dgpt.lctn((*0*)))
//
#extern
fun
PY_D3GPTpat
( lctn: PY$loctn
, dpat: PY$d3pat): PY$d3gpt = $extnam()
#extern
fun
PY_D3GPTgua(
lctn: PY$loctn,
dpat: PY$d3pat,
d3gs: PY$d3gualst): PY$d3gpt = $extnam()
//
val (  ) =
printsln("d3gpt_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d3gpt_pytrcpy(dgpt)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
f3arg_pytrcpy
(   farg   ) =
(
case+
farg.node() of
//
|F3ARGdapp
(npf1, d3ps) =>
(
PY_F3ARGdapp
(loc0, npf1, d3ps))
where
{
val d3ps =
(
  d3patlst_pytrcpy(d3ps)) }
//
|F3ARGsapp
(s2vs, s2ps) =>
(
PY_F3ARGsapp
(loc0, s2vs, s2ps))
where
{
val s2vs =
(
  s2varlst_pytrcpy(s2vs))
val s2ps =
(
  s2explst_pytrcpy(s2ps)) }
//
|F3ARGmets
(   s2es   ) =>
(
PY_F3ARGmets(loc0, s2es))
where
{
val
s2es = s2explst_pytrcpy(s2es) }
//
)
where
{
//
val loc0 =
loctn_pytrcpy(farg.lctn((*0*)))
//
#extern
fun
PY_F3ARGdapp
(
lctn: PY$loctn,
npf1: sint,
d3ps: PY$d3patlst): PY$f3arg = $extnam()
#extern
fun
PY_F3ARGsapp
(
lctn: PY$loctn,
s2vs: PY$s2varlst,
s2es: PY$s2explst): PY$f3arg = $extnam()
#extern
fun
PY_F3ARGmets
(
lctn: PY$loctn,
s2es: PY$s2explst): PY$f3arg = $extnam()
//
val (  ) =
(
  printsln("f3arg_pytrcpy: farg = ", farg))
val (  ) =
printsln("f3arg_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[f3arg_pytrcpy(farg)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3ecl_pytrcpy
(   d3cl   ) =
(
case+
d3cl.node() of
//
(* ****** ****** *)
//
|D3Clocal0
(head, body) =>
(
PY_D3Clocal0
(loc0, head, body))
where
{
val head =
(
  d3eclist_pytrcpy(head))
val body =
(
  d3eclist_pytrcpy(body)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D3Cvaldclst
(tknd, d3vs) =>
(
PY_D3Cvaldclst
(loc0, tknd, d3vs))
where
{
val tknd =
(
  token_pytrcpy(tknd))
val d3vs =
(
  d3valdclist_pytrcpy(d3vs))
}
//
|D3Cvardclst
(tknd, d3vs) =>
(
PY_D3Cvardclst
(loc0, tknd, d3vs))
where
{
val tknd =
(
  token_pytrcpy(tknd))
val d3vs =
(
  d3vardclist_pytrcpy(d3vs))
}
//
(* ****** ****** *)
//
|D3Cfundclst
(tknd
,tqas
,d2cs, d3fs) =>
(
PY_D3Cfundclst
(loc0, tknd
,tqas, d2cs, d3fs))
where
{
val tknd =
(
  token_pytrcpy(tknd))
val d2cs =
(
  d2cstlst_pytrcpy(d2cs))
val d3fs =
(
  d3fundclist_pytrcpy(d3fs))
}
//
(* ****** ****** *)
(* ****** ****** *)
//
|_(*otherwise*) => PY_D3Ca3src(loc0, d3cl)
//
(* ****** ****** *)
(* ****** ****** *)
//
) where
{
//
val loc0 =
loctn_pytrcpy(d3cl.lctn((*0*)))
//
val (  ) =
(
  printsln("d3ecl_pytrcpy: d3cl = ", d3cl))
//
val (  ) =
printsln("d3ecl_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d3ecl_pytrcpy(d3cl)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3patlst_pytrcpy
(   d3ps   ) =
(
list_map$f1un_PY$list(d3ps, d3pat_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d3explst_pytrcpy
(   d3es   ) =
(
list_map$f1un_PY$list(d3es, d3exp_pytrcpy))
//
#implfun
d3expopt_pytrcpy
(   dopt   ) =
(
optn_map$f1un_PY$optn(dopt, d3exp_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d3gualst_pytrcpy
(   d3gs   ) =
(
list_map$f1un_PY$list(d3gs, d3gua_pytrcpy))
//
#implfun
d3clslst_pytrcpy
(   dcls   ) =
(
list_map$f1un_PY$list(dcls, d3cls_pytrcpy))
//
(* ****** ****** *)
//
#implfun
f3arglst_pytrcpy
(   f3as   ) =
(
list_map$f1un_PY$list(f3as, f3arg_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d3eclist_pytrcpy
(   dcls   ) =
(
list_map$f1un_PY$list(dcls, d3ecl_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
teqd3exp_pytrcpy
(   tdxp   ) =
(
case+ tdxp of
|
TEQD3EXPnone
( (*void*) ) =>
PY_TEQD3EXPnone((*void*))
|
TEQD3EXPsome
(teq0, dexp) =>
let
val teq0 =
token_pytrcpy(teq0)
val dexp =
d3exp_pytrcpy(dexp)
in//let
  PY_TEQD3EXPsome(teq0, dexp) end
) where
{
#extern
fun
PY_TEQD3EXPnone
(   (*nil*)   ): PY$teqd3exp = $extnam()
#extern
fun
PY_TEQD3EXPsome
(
teq0: PY$token,
dexp: PY$d3exp): PY$teqd3exp = $extnam()
}(*where*)//end-of-[teqd3exp_pytrcpy(tdxp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3valdcl_pytrcpy
(   dval   ) =
let
//
val loc0 =
loctn_pytrcpy
(
d3valdcl_get_lctn(dval))
//
val dpat =
d3pat_pytrcpy
(
d3valdcl_get_dpat(dval))
//
val tdxp =
teqd3exp_pytrcpy
(
d3valdcl_get_tdxp(dval))
//
val wsxp =
wths2exp_pytrcpy
(
d3valdcl_get_wsxp(dval))
//
in//let
(
PY_d3valdcl_make_args(
  loc0, dpat, tdxp(*dopt*), wsxp(*wtyp*)))
end(*let*)//end-of-[d3valdcl_pytrcpy(dval)]
//
(* ****** ****** *)
//
#implfun
d3vardcl_pytrcpy
(   dvar   ) =
let
//
val loc0 =
loctn_pytrcpy
(
d3vardcl_get_lctn(dvar))
//
val dpid =
d2var_pytrcpy
(
d3vardcl_get_dpid(dvar))
//
val vpid =
d2varopt_pytrcpy
(
d3vardcl_get_vpid(dvar))
//
val sres =
s2expopt_pytrcpy
(
d3vardcl_get_sres(dvar))
//
val dini =
teqd3exp_pytrcpy
(
d3vardcl_get_dini(dvar))
//
in//let
(
PY_d3vardcl_make_args(loc0,
  dpid, vpid(*view*), sres, dini(*init*)))
end(*let*)//end-of-[d3vardcl_pytrcpy(dvar)]
//
(* ****** ****** *)
//
#implfun
d3fundcl_pytrcpy
(   dfun   ) =
let
//
val loc0 =
loctn_pytrcpy
(
d3fundcl_get_lctn(dfun))
//
val dpid =
d2var_pytrcpy
(
d3fundcl_get_dpid(dfun))
//
val f3as =
f3arglst_pytrcpy
(
d3fundcl_get_farg(dfun))
//
val sres =
s2res_pytrcpy
(
d3fundcl_get_sres(dfun))
//
val tdxp =
teqd3exp_pytrcpy
(
d3fundcl_get_tdxp(dfun))
val wsxp =
wths2exp_pytrcpy
(d3fundcl_get_wsxp(dfun))
//
in//let
(
PY_d3fundcl_make_args(loc0,
  dpid(*fid*),f3as(*arg*),sres,tdxp,wsxp))
end(*let*)//end-of-[d3fundcl_pytrcpy(dfun)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3valdclist_pytrcpy
(   d3vs   ) =
(
list_map$f1un_PY$list(d3vs, d3valdcl_pytrcpy))
//
#implfun
d3vardclist_pytrcpy
(   d3vs   ) =
(
list_map$f1un_PY$list(d3vs, d3vardcl_pytrcpy))
//
#implfun
d3fundclist_pytrcpy
(   d3fs   ) =
(
list_map$f1un_PY$list(d3fs, d3fundcl_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3eclistopt_pytrcpy
(   dopt   ) =
(
optn_map$f1un_PY$optn(dopt, d3eclist_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3parsed_pytrcpy
(   dpar   ) =
let
//
val stadyn =
d3parsed_get_stadyn(dpar)
//
val nerror =
d3parsed_get_nerror(dpar)
//
val source =
lcsrc_pytrcpy
(
d3parsed_get_source(dpar))
//
val t1penv =
(
d3parsed_get_t1penv(dpar))
val t2penv =
(
d3parsed_get_t2penv(dpar))
val t3penv =
(
d3parsed_get_t3penv(dpar))
//
val parsed =
(
d3parsed_get_parsed(dpar))
val parsed =
(
d3eclistopt_pytrcpy(parsed))
//
in//let
//
PY_d3parsed
( stadyn
, nerror, source
, t1penv, t2penv, t3penv, parsed)
//
end where
{
//
#extern
fun
PY_d3parsed
( stadyn: sint
, nerror: sint
, source: PY$lcsrc
, t1penv: d1topenv
, t2penv: d2topenv
, t3penv: d3topenv
, parsed: PY$d3eclistopt): PY$d3parsed = $extnam()
//
}(*where*)//end-of-[PYDEV_d3parsed_pytrcpy(dpar)]
//
#extern
fun
PYDEV_d3parsed_pytrcpy
(dpar: d3parsed): PY$d3parsed = $extnam()
#implfun
PYDEV_d3parsed_pytrcpy(dpar) = d3parsed_pytrcpy(dpar)
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/dynexp3_pytrcpy.dats] *)
(***********************************************************************)
