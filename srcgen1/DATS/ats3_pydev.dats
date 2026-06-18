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
Author: Hongwei Xi
Start Time: June 15th, 2026
Authoremail: gmhwxiATgmailDOTcom
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
#extern
fun
PY_list_nil
{a:type}((*void*)): PY$list(a) = $extnam()
#extern
fun
PY_list_cons{a:type}
(x0: a, xs: PY$list(a)): PY$list(a) = $extnam()
//
#extern
fun
PY_list_reverse
{a:type}(xs: PY$list(a)): PY$list(a) = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_optn_nil
{a:type}((*void*)): PY$optn(a) = $extnam()
#extern
fun
PY_optn_cons{a:type}(x:a): PY$optn(a) = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
list_map$f1un_PY$list
  (xs, fopr) =
PY_list_reverse
(
  loop( xs, rs ))
where
{
//
val rs =
(
  PY_list_nil())
//
fun loop(xs, rs) =
(
case+ xs of
|list_nil() => rs
|list_cons(x1, xs) =>
loop(xs, PY_list_cons(fopr(x1), rs)))
//
}(*where*)//end-of-[list_map$f1un_PY$list(xs,fopr)]
//
(* ****** ****** *)
//
#implfun
optn_map$f1un_PY$optn
  (xs, fopr) =
(
case+ xs of
|optn_nil() => PY_optn_nil()
|optn_cons(x1) => PY_optn_cons(fopr(x1))
)(*case+*)//end-of-[optn_map$f1un_PY$optn(xs,fopr)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1_DATS_ats3_pydev.dats] *)
(***********************************************************************)
