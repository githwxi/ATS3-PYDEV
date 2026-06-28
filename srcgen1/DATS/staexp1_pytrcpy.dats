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
//
(* ****** ****** *)
//
#staload
"./../SATS/ats3_pydev.sats"
#staload
"./../SATS/locinfo_pytrcpy.sats"
#staload
"./../SATS/staexp1_pytrcpy.sats"
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
PY_G1Na3src
(gnam: g1nam): PY$g1nam = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_S1Ea3src
( loc0
: PY$loctn
, sexp: s1exp): PY$s1exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
g_print<g1nam>(gnam) =
g1nam_fprint(gnam, g_print$out<>())
//
#impltmp
g_print<s1exp>(sexp) =
s1exp_fprint(sexp, g_print$out<>())
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
g1nam_pytrcpy
(   gnam   ) =
(
case+ gnam of
|
_(*otherwise*) => PY_G1Na3src(gnam)
) where
{
//
val (  ) =
(
printsln("g1nam_pytrcpy: gnam = ", gnam))
//
}(*where*)//end-of-[g1nam_pytrcpy(gnam)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s1exp_pytrcpy
(   sexp   ) =
(
case+
sexp.node() of
|
_(*otherwise*) => PY_S1Ea3src(loc0, sexp)
) where
{
//
val loc0 =
loctn_pytrcpy(sexp.lctn((*0*)))
//
val (  ) =
(
  printsln("s1exp_pytrcpy: sexp = ", sexp))
//
val (  ) =
printsln("s1exp_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[s1exp_pytrcpy(sexp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
g1namlst_pytrcpy
(   g1ns   ) =
(
list_map$f1un_PY$list(g1ns, g1nam_pytrcpy))
//
(* ****** ****** *)
//
#implfun
s1explst_pytrcpy
(   s1es   ) =
(
list_map$f1un_PY$list(s1es, s1exp_pytrcpy))
//
(* ****** ****** *)
//
#implfun
s1expopt_pytrcpy
(   sopt   ) =
(
optn_map$f1un_PY$optn(sopt, s1exp_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/staexp1_pytrcpy.dats] *)
(***********************************************************************)
