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
ATS3/srcgen2/SATS/staexp2.sats"
//
(* ****** ****** *)
#symload name with s2cst_get_name
#symload sort with s2cst_get_sort
#symload stmp with s2cst_get_stmp
(* ****** ****** *)
#symload name with s2var_get_name
#symload sort with s2var_get_sort
#symload stmp with s2var_get_stmp
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
"./../SATS/staexp2_pytrcpy.sats"
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
PY_S2Ta3src
(s2t0: sort2): PY$sort2 = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_S2Ea3src
( s2t0
: PY$sort2
, sexp: s2exp): PY$s2exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
g_print<sort2>(s2t0) =
sort2_fprint(s2t0, g_print$out<>())
#impltmp
g_print<s2exp>(sexp) =
s2exp_fprint(sexp, g_print$out<>())
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
sort2_pytrcpy
(   s2t0   ) =
(
case+ s2t0 of
|
_(*otherwise*) => PY_S2Ta3src(s2t0)
) where
{
//
val (  ) =
(
  printsln
  ("sort2_pytrcpy: s2t0 = ", s2t0))
//
}(*where*)//end-of-[sort2_pytrcpy(s2t0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s2cst_pytrcpy
(   scst   ) =
(
PY_s2cst_make_args
(loc0, name
,sort, stmp)) where
{
//
val
loc0 =
loctn_pytrcpy
(s2cst_get_lctn(scst))
//
val
name = symbl_pytrcpy(scst.name())
val
sort = sort2_pytrcpy(scst.sort())
val
stmp = stamp_pytrcpy(scst.stmp())
//
#extern
fun
PY_s2cst_make_args
(
loc0: PY$loctn,
name: PY$symbl,
s2t0: PY$sort2,
stmp: PY$stamp): PY$s2cst = $extnam()
//
}(*where*)//end-of-[s2cst_pytrcpy(scst)]
//
(* ****** ****** *)
//
#implfun
s2var_pytrcpy
(   svar   ) =
(
PY_s2var_make_args
( name
, s2t0, stmp)) where
{
//
val
name = symbl_pytrcpy(svar.name())
val
s2t0 = sort2_pytrcpy(svar.sort())
val
stmp = stamp_pytrcpy(svar.stmp())
//
#extern
fun
PY_s2var_make_args
(
name: PY$symbl,
s2t0: PY$sort2,
stmp: PY$stamp): PY$s2var = $extnam()
//
}(*where*)//end-of-[s2var_pytrcpy(svar)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s2exp_pytrcpy
(   sexp   ) =
(
case+
sexp.node() of
|
_(*otherwise*) => PY_S2Ea3src(s2t0, sexp)
) where
{
//
val s2t0 =
sort2_pytrcpy(sexp.sort((*0*)))
//
val (  ) =
(
  printsln("s2exp_pytrcpy: sexp = ", sexp))
//
val (  ) =
printsln("s2exp_pytrcpy: s2t0 = ", PY_repr(s2t0))
//
}(*where*)//end-of-[s2exp_pytrcpy(sexp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s2varlst_pytrcpy
(   s2vs   ) =
(
list_map$f1un_PY$list(s2vs, s2var_pytrcpy))
//
(* ****** ****** *)
//
#implfun
s2explst_pytrcpy
(   s2es   ) =
(
list_map$f1un_PY$list(s2es, s2exp_pytrcpy))
//
(* ****** ****** *)
//
#implfun
s2expopt_pytrcpy
(   sopt   ) =
(
optn_map$f1un_PY$optn(sopt, s2exp_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/staexp2_pytrcpy.dats] *)
(***********************************************************************)
