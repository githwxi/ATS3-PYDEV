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
xassets/ATS3/SATS/dynexp3.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/xstamp0_pytrcpy.sats"
#staload
"./../SATS/xsymbol_pytrcpy.sats"
#staload
"./../SATS/locinfo_pytrcpy.sats"
#staload
"./../SATS/lexing0_pytrcpy.sats"
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
|
_(*otherwise*) => PY_D3Ea3src(loc0, dexp)
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
