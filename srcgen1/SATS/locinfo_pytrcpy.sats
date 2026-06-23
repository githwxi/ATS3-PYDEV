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
LOC = "\
./../../xassets/\
ATS3/srcgen2/SATS/locinfo.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#abstbox PY$lcsrc // p0tr
//
#abstbox PY$postn // p0tr
#abstbox PY$loctn // p0tr
//
(* ****** ****** *)
(* ****** ****** *)
//
#typedef lcsrc = $LOC.lcsrc
#typedef postn = $LOC.postn
#typedef loctn = $LOC.loctn
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
lcsrc_pytrcpy(lsrc: lcsrc): PY$lcsrc
//
(* ****** ****** *)
//
fun
postn_pytrcpy(pstn: postn): PY$postn
//
(* ****** ****** *)
//
fun
loctn_pytrcpy(lctn: loctn): PY$loctn
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/SATS/locinfo_pytrcpy.sats] *)
(***********************************************************************)
