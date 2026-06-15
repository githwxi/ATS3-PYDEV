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
D1E = "./../../\
xassets/ATS3/SATS/dynexp1.sats"
#staload
D2E = "./../../\
xassets/ATS3/SATS/dynexp2.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#abstbox PY$d2pat // p0tr
#abstbox PY$d2exp // p0tr
#abstbox PY$d2ecl // p0tr
//
(* ****** ****** *)
//
#abstbox PY$d2parsed // p0tr
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef d2pat = $D2E.d2pat
#typedef d2exp = $D2E.d2exp
#typedef d2ecl = $D2E.d2ecl
//
#typedef d2patlst = list(d2pat)
#typedef d2explst = list(d2exp)
#typedef d2eclist = list(d2ecl)
//
(* ****** ****** *)
//
#typedef lcsrc = $LOC.lcsrc
#typedef d1topenv = $D1E.d1topenv
#typedef d2topenv = $D2E.d2topenv
#typedef d2parsed = $D2E.d2parsed
//
(* ****** ****** *)
//
#typedef d2eclistopt = optn(d2eclist)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d2pat_pytrcpy(dpat: d2pat): PY$d2pat
fun
d2exp_pytrcpy(dexp: d2exp): PY$d2exp
//
(* ****** ****** *)
//
fun
d2ecl_pytrcpy(d2cl: d2ecl): PY$d2ecl
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef
PY$d2patlst = PY$list(PY$d2pat)
#typedef
PY$d2explst = PY$list(PY$d2exp)
#typedef
PY$d2eclist = PY$list(PY$d2ecl)
//
(* ****** ****** *)
//
#typedef
PY$d2eclistopt = PY$optn(PY$d2eclist)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d2patlst_pytrcpy(d2ps: d2patlst): PY$d2patlst
fun
d2explst_pytrcpy(d2es: d2explst): PY$d2explst
//
(* ****** ****** *)
//
fun
d2eclist_pytrcpy(dcls: d2eclist): PY$d2eclist
//
(* ****** ****** *)
//
fun
d2eclistopt_pytrcpy(dopt: d2eclistopt): PY$d2eclistopt
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d2parsed_pytrcpy
(dpar: d2parsed): PY$d2parsed(*PYDEV_d2parsed_pytrcpy*)
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/SATS/dynexp2_pytrcpy.sats] *)
(***********************************************************************)
