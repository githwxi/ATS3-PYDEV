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
./../../externs/\
ATS3/srcgen2/SATS/xsymbol.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/filpath.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/filpath_pytrcpy.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
fpath_pytrcpy
(   fpth   ) =
let
val gvn0 =
fpath_get_gvn0(fpth)
val fnm1 =
fpath_get_fnm1(fpth)
val fnm2 =
symbl_get_name
(
fpath_get_fnm2(fpth))
in//let
PY_fpath(gvn0, fnm1, fnm2)
end where
{
//
#extern
fun
PY_fpath
( gvn0: strn
, fnm1: strn
, fnm2: strn): PY$fpath = $extnam()
//
}(*where*)//end-of-[fpath_pytrcpy(fpth)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/filpath_pytrcpy.dats] *)
(***********************************************************************)
