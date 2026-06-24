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
#staload
D1E = "\
./../../externs/\
ATS3/srcgen2/SATS/dynexp1.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#abstbox PY$d1pat // p0tr
#abstbox PY$d1exp // p0tr
#abstbox PY$d1ecl // p0tr
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef d1pid = $D1E.d1pid
#typedef d1qid = $S1E.d1qid
//
#typedef d1pat = $D1E.d1pat
#typedef d1exp = $D1E.d1exp
#typedef d1ecl = $D1E.d1ecl
//
#typedef d1patlst = list(d1pat)
//
#typedef d1explst = list(d1exp)
#typedef d1expopt = optn(d1exp)
//
#typedef d1eclist = list(d1ecl)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d1pat_fprint
(dpat: d1pat, out0: FILR): void
fun
d1exp_fprint
(dexp: d1exp, out0: FILR): void
fun
f2arg_fprint
(farg: f2arg, out0: FILR): void
fun
d1ecl_fprint
(d1cl: d1ecl, out0: FILR): void
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d1pat_pytrcpy(dpat: d1pat): PY$d1pat
fun
d1exp_pytrcpy(dexp: d1exp): PY$d1exp
//
(* ****** ****** *)
//
fun
d1ecl_pytrcpy(d1cl: d1ecl): PY$d1ecl
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef
PY$d1patlst = PY$list(PY$d1pat)
//
#typedef
PY$d1explst = PY$list(PY$d1exp)
#typedef
PY$d1expopt = PY$optn(PY$d1exp)
//
#typedef
PY$d1eclist = PY$list(PY$d1ecl)
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef
PY$d1eclistopt = PY$optn(PY$d1eclist)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d1patlst_pytrcpy(d1ps: d1patlst): PY$d1patlst
//
(* ****** ****** *)
//
fun
d1explst_pytrcpy(d1es: d1explst): PY$d1explst
fun
d1expopt_pytrcpy(dopt: d1expopt): PY$d1expopt
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d1eclist_pytrcpy(dcls: d1eclist): PY$d1eclist
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/SATS/dynexp1_pytrcpy.sats] *)
(***********************************************************************)
