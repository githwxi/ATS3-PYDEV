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
ATS3/srcgen2/SATS/xstamp0.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/xstamp0_pytrcpy.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
stamp_pytrcpy
(   stmp   ) =
(
  PY_stamp(uint))
where
{
//
val uint =
stamp_get_uint(stmp)
//
#extern
fun
PY_stamp
(uint: uint): PY$stamp = $extnam()
//
}(*where*)//end-of-[stamp_pytrcpy(xsym)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/xstamp0_pytrcpy.dats] *)
(***********************************************************************)
