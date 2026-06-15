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
//
#staload "./../../\
xassets/ATS3/SATS/locinfo.sats"
#staload "./../../\
xassets/ATS3/SATS/dynexp2.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/locinfo_pytrcpy.sats"
#staload
"./../SATS/dynexp2_pytrcpy.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Pother
( loc0
: PY$loctn
, dpat: d2pat): PY$d2pat = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Eother
( loc0
: PY$loctn
, dexp: d2exp): PY$d2exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2pat_pytrcpy
(   dpat   ) =
(
case+
dpat.node() of
|
_(*otherwise*) =>
(
  PY_D2Pother(loc0, dpat))
) where
{
//
val loc0 =
(
  loctn_pytrcpy(dpat.lctn((*void*))))
//
}(*where*)//end-of-[d2pat_pytrcpy(dpat)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2exp_pytrcpy
(   dexp   ) =
(
case+
dexp.node() of
|
_(*otherwise*) =>
(
  PY_D2Eother(loc0, dexp))
) where
{
//
val loc0 =
(
  loctn_pytrcpy(dexp.lctn((*void*))))
//
}(*where*)//end-of-[d2exp_pytrcpy(dexp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2ecl_pytrcpy
(   d2cl   ) =
(
case+
d2cl.node() of
|
_(*otherwise*) =>
(
  PY_D2Cother(loc0, d2cl))
) where
{
//
val loc0 =
(
  loctn_pytrcpy(d2cl.lctn((*void*))))
//
}(*where*)//end-of-[d2ecl_pytrcpy(d2cl)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2patlst_pytrcpy
(   d2ps   ) =
(
list_map
<x0><y0>(d2ps)) where
{
#typedef x0 = d2pat
#typedef y0 = PY$d2pat
#impltmp
map$fopr
<x0><y0>(*dpat*) = d2pat_pytrcpy(*dpat*)
}
//
(* ****** ****** *)
//
#implfun
d2explst_pytrcpy
(   d2es   ) =
(
list_map
<x0><y0>(d2es)) where
{
#typedef x0 = d2exp
#typedef y0 = PY$d2exp
#impltmp
map$fopr
<x0><y0>(*dexp*) = d2exp_pytrcpy(*dexp*)
}
//
(* ****** ****** *)
//
#implfun
d2eclist_pytrcpy
(   dcls   ) =
(
list_map
<x0><y0>(dcls)) where
{
#typedef x0 = d2ecl
#typedef y0 = PY$d2ecl
#impltmp
map$fopr
<x0><y0>(*d2cl*) = d2ecl_pytrcpy(*d2cl*)
}
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2eclistopt_pytrcpy
(   dopt   ) =
(
case+ dopt of
|optn_nil() =>
(
  optn_nil((*void*)))
|optn_cons(dcls) =>
(
  optn_cons(d2eclist_pytrcpy(dcls)))
)(*case+*)//end-of-[d2eclistopt_pytrcpy()]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
PYDEV_d2parsed_pytrcpy
(   dpar   ) =
let
//
val stadyn =
d2parsed_get_stadyn(dpar)
val nerror =
d2parsed_get_nerror(dpar)
val source =
d2parsed_get_source(dpar)
val t1penv =
d2parsed_get_t1penv(dpar)
val t2penv =
d2parsed_get_t2penv(dpar)
val parsed =
d2parsed_get_parsed(dpar)
//
val parsed =
d2eclistopt_pytrcpy(parsed)
//
in//let
//
PY_d2parsed
( stadyn, nerror,
  source, t1penv, t2penv, parsed)
//
end where
{
//
#extern
fun
PY_d2parsed
( stadyn: sint
, nerror: sint
, source: lcsrc
, t1penv: d1topenv
, t2penv: d2topenv
, parsed: PY$d2eclistopt): PY$d2parsed = $extnam()
//
}(*where*)//end-of-[PYDEV_d2parsed_pytrcpy(dpar)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/dynexp2_pytrcpy.dats] *)
(***********************************************************************)
