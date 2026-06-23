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
./../../xassets/\
ATS3/srcgen2/SATS/locinfo.sats"
#staload
S2E = "\
./../../xassets/\
ATS3/srcgen2/SATS/staexp2.sats"
#staload
T2P = "\
./../../xassets/\
ATS3/srcgen2/SATS/statyp2.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#abstbox PY$s2typ // p0tr
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef s2typ = $T2P.s2typ
//
#typedef s2typlst = list(s2typ)
#typedef s2typopt = optn(s2typ)
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef
PY$s2typlst = PY$list(PY$s2typ)
#typedef
PY$s2typopt = PY$optn(PY$s2typ)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
s2typ_fprint
(styp: s2typ, out0: FILR): void
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
s2typ_pytrcpy(styp: s2typ): PY$s2typ
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
s2typlst_pytrcpy(t2ps: s2typlst): PY$s2typlst
fun
s2typopt_pytrcpy(topt: s2typopt): PY$s2typopt
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/SATS/statyp2_pytrcpy.sats] *)
(***********************************************************************)
