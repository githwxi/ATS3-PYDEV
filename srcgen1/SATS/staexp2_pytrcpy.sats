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
Sun Jun 14 12:12:04 PM EDT 2026
*)
//
*)
//
(* ****** ****** *)
(* ****** ****** *)
//
#staload
"./../SATS/ats3_pydev.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#staload
LOC = "./../../\
xassets/ATS3/SATS/locinfo.sats"
#staload
S2E = "./../../\
xassets/ATS3/SATS/staexp2.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#abstbox PY$sort2 // p0tr
#abstbox PY$s2exp // p0tr
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef sort2 = $S2E.sort2
#typedef s2exp = $S2E.s2exp
//
#typedef s2explst = list(s2exp)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
sort2_fprint
(s2t0: sort2, out0: FILR): void
fun
s2exp_fprint
(sexp: s2exp, out0: FILR): void
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
sort2_pytrcpy(s2t0: sort2): PY$sort2
//
(* ****** ****** *)
//
fun
s2exp_pytrcpy(sexp: s2exp): PY$s2exp
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
s2explst_pytrcpy(s2es: s2explst): PY$s2explst
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/SATS/staexp2_pytrcpy.sats] *)
(***********************************************************************)
