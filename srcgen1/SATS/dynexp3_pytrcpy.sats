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
D3E = "./../../\
xassets/ATS3/SATS/dynexp3.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#abstbox PY$d3pat // p0tr
#abstbox PY$d3exp // p0tr
//
(* ****** ****** *)
//
#abstbox PY$d3parsed // p0tr
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef d3pat = $D3E.d3pat
#typedef d3exp = $D3E.d3exp
#typedef d3ecl = $D3E.d3ecl
//
(* ****** ****** *)
//
#typedef d3patlst = list(d3pat)
#typedef d3explst = list(d3exp)
#typedef d3eclist = list(d3ecl)
//
(* ****** ****** *)
//
#typedef d3parsed = $D3E.d3parsed
//
(* ****** ****** *)
//
#typedef PY$d3patlst = list(PY$d3pat)
#typedef PY$d3explst = list(PY$d3exp)
#typedef PY$d3eclist = list(PY$d3ecl)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d3pat_pytrcpy(dpat: d3pat): PY$d3pat
fun
d3exp_pytrcpy(dexp: d3exp): PY$d3exp
//
(* ****** ****** *)
//
fun
d3ecl_pytrcpy(d3cl: d3ecl): PY$d3ecl
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d3parsed_pytrcpy(dpar: d3parsed): PY$d3parsed = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/SATS/dynexp3_pytrcpy.sats] *)
(***********************************************************************)
