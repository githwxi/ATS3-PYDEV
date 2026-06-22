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
#abstbox PY$d3gua // p0tr
#abstbox PY$d3gpt // p0tr
#abstbox PY$d3cls // p0tr
#abstbox PY$f3arg // p0tr
//
#abstbox PY$d3ecl // p0tr
//
(* ****** ****** *)
//
#abstbox PY$d3valdcl // p0tr
#abstbox PY$d3vardcl // p0tr
#abstbox PY$d3fundcl // p0tr
//
(* ****** ****** *)
//
#abstbox PY$d3parsed // p0tr
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef d2con = $D2E.d2con
#typedef d2cst = $D2E.d2cst
#typedef d2var = $D2E.d2var
//
(* ****** ****** *)
//
#typedef d3pat = $D3E.d3pat
#typedef d3exp = $D3E.d3exp
//
#typedef d3gua = $D3E.d3gua
#typedef d3gpt = $D3E.d3gpt
#typedef d3cls = $D3E.d3cls
#typedef f3arg = $D3E.f3arg
//
#typedef d3ecl = $D3E.d3ecl
//
(* ****** ****** *)
//
#typedef d3patlst = list(d3pat)
//
#typedef d3explst = list(d3exp)
#typedef d3expopt = optn(d3exp)
//
#typedef d3gualst = list(d3gua)
#typedef d3clslst = list(d3cls)
#typedef f3arglst = list(f3arg)
//
#typedef d3eclist = list(d3ecl)
//
(* ****** ****** *)
//
#typedef teqd3exp = $D3E.teqd3exp
//
#typedef d3valdcl = $D3E.d3valdcl
#typedef d3vardcl = $D3E.d3vardcl
#typedef d3fundcl = $D3E.d3fundcl
//
(* ****** ****** *)
//
#typedef lcsrc = $LOC.lcsrc
#typedef d1topenv = $D1E.d1topenv
#typedef d2topenv = $D2E.d2topenv
#typedef d3topenv = $D3E.d3topenv
#typedef d3parsed = $D3E.d3parsed
//
(* ****** ****** *)
//
#typedef d3valdclist = list(d3valdcl)
#typedef d3vardclist = list(d3vardcl)
#typedef d3fundclist = list(d3fundcl)
//
(* ****** ****** *)
//
#typedef d3eclistopt = optn(d3eclist)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d3pat_fprint
(dpat: d3pat, out0: FILR): void
fun
d3exp_fprint
(dexp: d3exp, out0: FILR): void
fun
f3arg_fprint
(farg: f3arg, out0: FILR): void
fun
d3ecl_fprint
(d3cl: d3ecl, out0: FILR): void
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
d3gua_pytrcpy(dgua: d3gua): PY$d3gua
fun
d3gpt_pytrcpy(dgpt: d3gpt): PY$d3gpt
fun
d3cls_pytrcpy(dcls: d3cls): PY$d3cls
//
(* ****** ****** *)
//
fun
d3ecl_pytrcpy(d3cl: d3ecl): PY$d3ecl
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef
PY$d3patlst = PY$list(PY$d3pat)
//
#typedef
PY$d3explst = PY$list(PY$d3exp)
#typedef
PY$d3expopt = PY$optn(PY$d3exp)
//
#typedef
PY$d3gualst = PY$list(PY$d3gua)
#typedef
PY$d3clslst = PY$list(PY$d3cls)
//
#typedef
PY$f3arglst = PY$list(PY$f3arg)
//
#typedef
PY$d3eclist = PY$list(PY$d3ecl)
//
(* ****** ****** *)
//
#typedef
PY$d3valdclist = PY$list(PY$d3valdcl)
#typedef
PY$d3vardclist = PY$list(PY$d3vardcl)
#typedef
PY$d3fundclist = PY$list(PY$d3fundcl)
//
(* ****** ****** *)
//
#typedef
PY$d3eclistopt = PY$optn(PY$d3eclist)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d3valdcl_pytrcpy(dval: d3valdcl): PY$d3valdcl
fun
d3vardcl_pytrcpy(dvar: d3vardcl): PY$d3vardcl
//
fun
d3fundcl_pytrcpy(dfun: d3fundcl): PY$d3fundcl
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d3valdclist_pytrcpy(d3vs: d3valdclist): PY$d3valdclist
fun
d3vardclist_pytrcpy(d3vs: d3vardclist): PY$d3vardclist
//
fun
d3fundclist_pytrcpy(d3fs: d3fundclist): PY$d3fundclist
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d3eclistopt_pytrcpy(dopt: d3eclistopt): PY$d3eclistopt
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
