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
xassets/ATS3/SATS/xstamp0.sats"
#staload "./../../\
xassets/ATS3/SATS/xsymbol.sats"
#staload "./../../\
xassets/ATS3/SATS/locinfo.sats"
#staload "./../../\
xassets/ATS3/SATS/lexing0.sats"
#staload "./../../\
xassets/ATS3/SATS/statyp2.sats"
#staload "./../../\
xassets/ATS3/SATS/dynexp3.sats"
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
"./../SATS/statyp2_pytrcpy.sats"
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
(* ****** ****** *)
//
#implfun
d3pat_pytrcpy
(   dpat   ) =
(
case+
dpat.node() of
|
_(*otherwise*) => PY_D3Pa3src(loc0, dpat)
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
|
_(*otherwise*) => PY_D3Ea3src(loc0, dexp)
//
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
//
#implfun
d3ecl_pytrcpy
(   d3cl   ) =
(
case+
d3cl.node() of
|
_(*otherwise*) => PY_D3Ca3src(loc0, d3cl)
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
