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
xassets/ATS3/SATS/dynexp1.sats"
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
"./../SATS/dynexp1_pytrcpy.sats"
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
PY_D1Pa3src
( loc0
: PY$loctn
, dpat: d1pat): PY$d1pat = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D1Ea3src
( loc0
: PY$loctn
, dexp: d1exp): PY$d1exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D1Ca3src
( loc0
: PY$loctn
, d1cl: d1ecl): PY$d1ecl = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d1exp_pytrcpy
(   dexp   ) =
(
case+
dexp.node() of
|_(*otherwise*) => PY_D1Ea3src(loc0, dexp)
)
{
//
val loc0 =
loctn_pytrcpy(dexp.lctn((*0*)))
//
val (  ) =
(
  printsln("d1exp_pytrcpy: dexp = ", dexp))
//
val (  ) =
printsln("d1exp_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d1exp_pytrcpy(dexp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/dynexp1_pytrcpy.dats] *)
(***********************************************************************)
