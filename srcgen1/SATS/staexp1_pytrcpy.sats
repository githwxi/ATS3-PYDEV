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
LOC = "\
./../../externs/\
ATS3/srcgen2/SATS/locinfo.sats"
#staload
S1E = "\
./../../externs/\
ATS3/srcgen2/SATS/staexp1.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#abstbox PY$g1nam // p0tr
//
#abstbox PY$s1exp // p0tr
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef g1nam = $S1E.g1nam
//
#typedef s1exp = $S1E.s1exp
//
(* ****** ****** *)
//
#typedef g1namlst = list(g1nam)
//
#typedef s1explst = list(s1exp)
#typedef s1expopt = optn(s1exp)
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef
PY$g1namlst = PY$list(PY$g1nam)
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
g1nam_fprint
(gnam: g1nam, out0: FILR): void
//
fun
s1exp_fprint
(sexp: s1exp, out0: FILR): void
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
g1nam_pytrcpy(gnam: g1nam): PY$g1nam
//
(* ****** ****** *)
//
fun
s1exp_pytrcpy(sexp: s1exp): PY$s1exp
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
g1namlst_pytrcpy(g1ns: g1namlst): PY$g1namlst
//
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
