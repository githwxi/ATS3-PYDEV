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
#abstbox PY$d2con // p0tr
#abstbox PY$d2cst // p0tr
#abstbox PY$d2var // p0tr
//
(* ****** ****** *)
//
#abstbox PY$d2itm // p0tr
#abstbox PY$d2ptm // p0tr
//
(* ****** ****** *)
//
#abstbox PY$s2res // p0tr
#abstbox PY$s2eff // p0tr
#abstbox PY$d2pat // p0tr
#abstbox PY$d2exp // p0tr
#abstbox PY$d2gua // p0tr
#abstbox PY$d2gpt // p0tr
#abstbox PY$d2cls // p0tr
#abstbox PY$f2arg // p0tr
#abstbox PY$d2ecl // p0tr
//
(* ****** ****** *)
//
#abstbox PY$teqd2exp // p0tr
#abstbox PY$wths2exp // p0tr
//
#abstbox PY$d2valdcl // p0tr
#abstbox PY$d2vardcl // p0tr
#abstbox PY$d2fundcl // p0tr
//
(* ****** ****** *)
//
#abstbox PY$d2parsed // p0tr
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
#typedef d2itm = $D2E.d2itm
#typedef d2ptm = $D2E.d2ptm
//
(* ****** ****** *)
//
#typedef s2res = $D2E.s2res
#typedef s2eff = $D2E.s2eff
//
#typedef d2pat = $D2E.d2pat
#typedef d2exp = $D2E.d2exp
#typedef d2gua = $D2E.d2gua
#typedef d2gpt = $D2E.d2gpt
#typedef d2cls = $D2E.d2cls
#typedef f2arg = $D2E.f2arg
#typedef d2ecl = $D2E.d2ecl
//
#typedef d2varlst = list(d2var)
#typedef d2varopt = optn(d2var)
//
#typedef d2itmlst = list(d2itm)
#typedef d2ptmlst = list(d2ptm)
//
#typedef d2patlst = list(d2pat)
//
#typedef d2explst = list(d2exp)
#typedef d2expopt = optn(d2exp)
//
#typedef d2gualst = list(d2gua)
#typedef d2clslst = list(d2cls)
#typedef f2arglst = list(f2arg)
//
#typedef d2eclist = list(d2ecl)
//
(* ****** ****** *)
//
#typedef teqd2exp = $D2E.teqd2exp
#typedef wths2exp = $D2E.wths2exp
//
#typedef d2valdcl = $D2E.d2valdcl
#typedef d2vardcl = $D2E.d2vardcl
#typedef d2fundcl = $D2E.d2fundcl
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
#typedef d2valdclist = list(d2valdcl)
#typedef d2vardclist = list(d2vardcl)
#typedef d2fundclist = list(d2fundcl)
//
(* ****** ****** *)
//
#typedef d2eclistopt = optn(d2eclist)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d2pat_fprint
(dpat: d2pat, out0: FILR): void
fun
d2exp_fprint
(dexp: d2exp, out0: FILR): void
fun
f2arg_fprint
(farg: f2arg, out0: FILR): void
fun
d2ecl_fprint
(d2cl: d2ecl, out0: FILR): void
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d2con_pytrcpy(dcon: d2con): PY$d2con
fun
d2cst_pytrcpy(dcst: d2cst): PY$d2cst
fun
d2var_pytrcpy(dvar: d2var): PY$d2var
//
(* ****** ****** *)
//
fun
d2itm_pytrcpy(ditm: d2itm): PY$d2itm
fun
d2ptm_pytrcpy(dptm: d2ptm): PY$d2ptm
//
(* ****** ****** *)
//
fun
s2res_pytrcpy(sres: s2res): PY$s2res
//
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
d2gua_pytrcpy(dgua: d2gua): PY$d2gua
fun
d2gpt_pytrcpy(dgpt: d2gpt): PY$d2gpt
fun
d2cls_pytrcpy(dcls: d2cls): PY$d2cls
//
(* ****** ****** *)
//
fun
f2arg_pytrcpy(farg: f2arg): PY$f2arg
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
PY$d2conlst = PY$list(PY$d2con)
#typedef
PY$d2cstlst = PY$list(PY$d2cst)
//
(* ****** ****** *)
//
#typedef
PY$d2varlst = PY$list(PY$d2var)
#typedef
PY$d2varopt = PY$optn(PY$d2var)
//
(* ****** ****** *)
//
#typedef
PY$d2itmlst = PY$list(PY$d2itm)
#typedef
PY$d2ptmlst = PY$list(PY$d2ptm)
//
(* ****** ****** *)
//
#typedef
PY$d2patlst = PY$list(PY$d2pat)
//
#typedef
PY$d2explst = PY$list(PY$d2exp)
#typedef
PY$d2expopt = PY$optn(PY$d2exp)
//
#typedef
PY$d2gualst = PY$list(PY$d2gua)
#typedef
PY$d2clslst = PY$list(PY$d2cls)
//
#typedef
PY$f2arglst = PY$list(PY$f2arg)
//
#typedef
PY$d2eclist = PY$list(PY$d2ecl)
//
(* ****** ****** *)
//
#typedef
PY$d2valdclist = PY$list(PY$d2valdcl)
#typedef
PY$d2vardclist = PY$list(PY$d2vardcl)
#typedef
PY$d2fundclist = PY$list(PY$d2fundcl)
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
d2conlst_pytrcpy(d2cs: d2conlst): PY$d2conlst
fun
d2cstlst_pytrcpy(d2cs: d2cstlst): PY$d2cstlst
//
(* ****** ****** *)
//
fun
d2varlst_pytrcpy(d2vs: d2varlst): PY$d2varlst
fun
d2varopt_pytrcpy(dopt: d2varopt): PY$d2varopt
//
(* ****** ****** *)
//
fun
d2itmlst_pytrcpy(d2is: d2itmlst): PY$d2itmlst
fun
d2ptmlst_pytrcpy(dpis: d2ptmlst): PY$d2ptmlst
//
(* ****** ****** *)
//
fun
d2patlst_pytrcpy(d2ps: d2patlst): PY$d2patlst
//
(* ****** ****** *)
//
fun
d2explst_pytrcpy(d2es: d2explst): PY$d2explst
fun
d2expopt_pytrcpy(dopt: d2expopt): PY$d2expopt
//
(* ****** ****** *)
//
fun
d2gualst_pytrcpy(d2gs: d2gualst): PY$d2gualst
fun
d2clslst_pytrcpy(dcls: d2clslst): PY$d2clslst
//
(* ****** ****** *)
//
fun
f2arglst_pytrcpy(f2as: f2arglst): PY$f2arglst
//
(* ****** ****** *)
//
fun
d2eclist_pytrcpy(dcls: d2eclist): PY$d2eclist
//
(* ****** ****** *)
//
fun
teqd2exp_pytrcpy(tdxp: teqd2exp): PY$teqd2exp
//
fun
wths2exp_pytrcpy(wsxp: wths2exp): PY$wths2exp
//
(* ****** ****** *)
//
fun
d2valdcl_pytrcpy(dval: d2valdcl): PY$d2valdcl
fun
d2vardcl_pytrcpy(dvar: d2vardcl): PY$d2vardcl
//
fun
d2fundcl_pytrcpy(dfun: d2fundcl): PY$d2fundcl
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
d2valdclist_pytrcpy(d2vs: d2valdclist): PY$d2valdclist
fun
d2vardclist_pytrcpy(d2vs: d2vardclist): PY$d2vardclist
//
fun
d2fundclist_pytrcpy(d2fs: d2fundclist): PY$d2fundclist
//
(* ****** ****** *)
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
