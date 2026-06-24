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
ATS3/srcgen2/SATS/locinfo.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/filpath_pytrcpy.sats"
#staload
"./../SATS/locinfo_pytrcpy.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
lcsrc_pytrcpy
(   lsrc   ) =
(
case+ lsrc of
|
LCSRCnone0
((*void*)) => PY_LCSRCnone0()
|
LCSRCsome1
(  name  ) => PY_LCSRCsome1(name)
|
LCSRCfpath
(  fpth  ) =>
(
PY_LCSRCfpath(fpath_pytrcpy(fpth)))
) where
{
//
#extern
fun
PY_LCSRCnone0
(  (*void*)  ): PY$lcsrc = $extnam()
#extern
fun
PY_LCSRCsome1
( name: strn ): PY$lcsrc = $extnam()
#extern
fun
PY_LCSRCfpath
(fpth: PY$fpath): PY$lcsrc = $extnam()
//
}(*where*)//end-of-[lcsrc_pytrcpy(lsrc)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
postn_pytrcpy
(   pstn   ) =
let
val ntot =
postn_get_ntot(pstn)
val nrow =
postn_get_nrow(pstn)
val ncol =
postn_get_ncol(pstn)
in//let
PY_postn_make_int3(ntot, nrow, ncol)
end where
{
//
#extern
fun
PY_postn_make_int3
(
ntot: sint,
nrow: sint, ncol: sint): PY$postn = $extnam()
//
}(*where*)//end-of-[postn_pytrcpy(pstn)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
loctn_pytrcpy
(   lctn   ) =
let
val lsrc =
lcsrc_pytrcpy
(
  loctn_get_lsrc(lctn))
val pbeg =
postn_pytrcpy
(
  loctn_get_pbeg(lctn))
val pend =
postn_pytrcpy
(
  loctn_get_pend(lctn))
in//let
PY_loctn_make_arg3(lsrc, pbeg, pend)
end where
{
//
#extern
fun
PY_loctn_make_arg3
(
lsrc: PY$lcsrc,
pbeg: PY$postn, pend: PY$postn): PY$loctn = $extnam()
//
}(*where*)//end-of-[loctn_pytrcpy(lctn)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/locinfo_pytrcpy.dats] *)
(***********************************************************************)
