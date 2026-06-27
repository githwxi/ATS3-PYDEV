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
ATS3/srcgen2/SATS/staexp2.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/statyp2.sats"
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
PY_T2Pa3src
( s2t0
: PY$sort2
, styp: s2typ): PY$s2typ = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
g_print<sort2>(s2t0) =
sort2_fprint(s2t0, g_print$out<>())
#impltmp
g_print<s2typ>(styp) =
s2typ_fprint(styp, g_print$out<>())
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s2typ_pytrcpy
(   styp   ) =
(
case+
styp.node() of
|
_(*otherwise*) => PY_T2Pa3src(s2t0, styp)
) where
{
//
val s2t0 =
sort2_pytrcpy(styp.sort((*0*)))
//
val (  ) =
(
  printsln("s2typ_pytrcpy: styp = ", styp))
//
val (  ) =
printsln("s2typ_pytrcpy: s2t0 = ", PY_repr(s2t0))
//
}(*where*)//end-of-[s2typ_pytrcpy(styp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s2vtp_pytrcpy
(   svtp   ) =
(
PY_s2vtp_make
( s2v1, t2p2 ))
where
{
//
val (s2v1, t2p2) = svtp
//
val s2v1 = s2var_pytrcpy(s2v1)
val t2p2 = s2typ_pytrcpy(t2p2)
//
#extern
fun
PY_s2vtp_make
( s2v1: PY$s2var
, t2p2: PY$s2typ): PY$s2vtp = $extnam()
//
val (  ) =
(
  printsln("s2vtp_pytrcpy: svtp = ", svtp))
//
val (  ) =
printsln("s2vtp_pytrcpy: s2v1 = ", PY_repr(s2v1))
val (  ) =
printsln("s2vtp_pytrcpy: t2p21 = ", PY_repr(t2p2))
//
}(*where*)//end-of-[s2vtp_pytrcpy(svtp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s2typlst_pytrcpy
(   t2ps   ) =
(
list_map$f1un_PY$list(t2ps, s2typ_pytrcpy))
//
(* ****** ****** *)
//
#implfun
s2typopt_pytrcpy
(   topt   ) =
(
optn_map$f1un_PY$optn(topt, s2typ_pytrcpy))
//
(* ****** ****** *)
//
#implfun
s2vtplst_pytrcpy
(   svts   ) =
(
list_map$f1un_PY$list(svts, s2vtp_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/statyp2_pytrcpy.dats] *)
(***********************************************************************)
