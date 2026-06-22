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
S1E = "./../../\
xassets/ATS3/SATS/staexp1.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#abstbox PY$s1exp // p0tr
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef s1exp = $S1E.s1exp
//
(* ****** ****** *)
//
#typedef s1explst = list(s1exp)
#typedef s1expopt = optn(s1exp)
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef
PY$s1explst = PY$list(PY$s1exp)
#typedef
PY$s1expopt = PY$optn(PY$s1exp)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
s1exp_fprint
(sexp: s1exp, out0: FILR): void
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
s1exp_pytrcpy(sexp: s1exp): PY$s1exp
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
s1explst_pytrcpy(s1es: s1explst): PY$s1explst
fun
s1expopt_pytrcpy(sopt: s1expopt): PY$s1expopt
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/SATS/staexp1_pytrcpy.sats] *)
(***********************************************************************)
