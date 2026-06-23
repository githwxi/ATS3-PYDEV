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
#staload "\
./../../xassets/\
ATS3/srcgen2/SATS/locinfo.sats"
#staload "\
./../../xassets/\
ATS3/srcgen2/SATS/lexing0.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/locinfo_pytrcpy.sats"
#staload
"./../SATS/lexing0_pytrcpy.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
token_pytrcpy
(   tokn   ) =
let
val lctn =
loctn_pytrcpy
(
token_get_lctn(tokn))
val node =
tnode_pytrcpy
(
token_get_node(tokn))
in//let
(
  PY_token(lctn, node))
end where
{
//
#extern
fcast
tnode_pytrcpy(node: tnode): PY$tnode
//
#extern
fun
PY_token
(
lctn: PY$loctn,
node: PY$tnode): PY$token = $extnam()
//
}(*where*)//end-of-[token_pytrcpy(tokn)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/lexing0_pytrcpy.dats] *)
(***********************************************************************)
