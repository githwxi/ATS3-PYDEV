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
#include
"./../HATS/mytmplib00.hats"
(* ****** ****** *)
(* ****** ****** *)
//
#staload "./../../\
xassets/ATS3/SATS/xsymbol.sats"
#staload "./../../\
xassets/ATS3/SATS/locinfo.sats"
#staload "./../../\
xassets/ATS3/SATS/lexing0.sats"
#staload "./../../\
xassets/ATS3/SATS/staexp2.sats"
#staload "./../../\
xassets/ATS3/SATS/statyp2.sats"
#staload "./../../\
xassets/ATS3/SATS/dynexp2.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/ats3_pydev.sats"
#staload
"./../SATS/locinfo_pytrcpy.sats"
#staload
"./../SATS/staexp2_pytrcpy.sats"
#staload
"./../SATS/statyp2_pytrcpy.sats"
#staload
"./../SATS/dynexp2_pytrcpy.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2pat_fprint
(dpat, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
dpat.node() of
|_(*otherwise*) => prints("D2Pother(...)")
//
end(*let*)//end-of-[d2pat_fprint(dpat,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2exp_fprint
(dexp, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
dexp.node() of
//
|D2Eint _ => prints("D2Eint(...)")
|D2Ebtf _ => prints("D2Ebtf(...)")
|D2Echr _ => prints("D2Echr(...)")
|D2Eflt _ => prints("D2Eflt(...)")
|D2Estr _ => prints("D2Estr(...)")
|D2Ei00 _ => prints("D2Ei00(...)")
|D2Eb00 _ => prints("D2Eb00(...)")
|D2Ec00 _ => prints("D2Ec00(...)")
|D2Ef00 _ => prints("D2Ef00(...)")
|D2Es00 _ => prints("D2Es00(...)")
//
(* ****** ****** *)
//
|D2Etop _ => prints("D2Etop(...)")
//
(* ****** ****** *)
//
|D2Evar _ => prints("D2Evar(...)")
//
|D2Econ _ => prints("D2Econ(...)")
|D2Ecst _ => prints("D2Ecst(...)")
//
(* ****** ****** *)
//
|D2Econs _ => prints("D2Econs(...)")
|D2Ecsts _ => prints("D2Ecsts(...)")
//
(* ****** ****** *)
//
|D2Esym0 _ => prints("D2Esym0(...)")
//
(* ****** ****** *)
//
|D2Esapp _ => prints("D2Esapp(...)")
|D2Etapp _ => prints("D2Etapp(...)")
//
(* ****** ****** *)
//
|D2Edap0 _ => prints("D2Edap0(...)")
|D2Edapp _ => prints("D2Edapp(...)")
//
(* ****** ****** *)
//
|D2Eproj _ => prints("D2Eproj(...)")
//
(* ****** ****** *)
//
|D2Elet0 _ => prints("D2Elet0(...)")
//
(* ****** ****** *)
//
|D2Eift0 _ => prints("D2Eift0(...)")
|D2Ecas0 _ => prints("D2Ecas0(...)")
//
(* ****** ****** *)
//
|D2Eseqn _ => prints("D2Eseqn(...)")
//
(* ****** ****** *)
//
|D2Etup0 _ => prints("D2Etup0(...)")
//
|D2Etup1 _ => prints("D2Etup1(...)")
|D2Ercd2 _ => prints("D2Ercd2(...)")
//
(* ****** ****** *)
//
|D2Elam0 _ => prints("D2Elam0(...)")
|D2Efix0 _ => prints("D2Efix0(...)")
//
(* ****** ****** *)
//
|D2Etry0 _ => prints("D2Etry0(...)")
//
(* ****** ****** *)
//
|D2Eaddr _ => prints("D2Eaddr(...)")
|D2Eview _ => prints("D2Eview(...)")
|D2Elval _ => prints("D2Elval(...)")
//
|D2Eeval _ => prints("D2Eeval(...)")
//
|D2Efold _ => prints("D2Efold(...)")
|D2Efree _ => prints("D2Efree(...)")
//
|D2Ewhere _ => prints("D2Ewhere(...)")
//
(* ****** ****** *)
|D2Eassgn _ => prints("D2Eassgn(...)")
//
|D2Exazgn _ => prints("D2Exazgn(...)")
//
|D2Exchng _ => prints("D2Exchng(...)")
//
(* ****** ****** *)
//
|D2Ebrget _ => prints("D2Ebrget(...)")
|D2Ebrset _ => prints("D2Ebrset(...)")
//
(* ****** ****** *)
|D2Edtsel _ => prints("D2Edtsel(...)")
//
(* ****** ****** *)
//
|D2Eraise _ => prints("D2Eraise(...)")
//
(* ****** ****** *)
//
|D2El0azy _ => prints("D2El0azy(...)")
|D2El1azy _ => prints("D2El1azy(...)")
|D2Eelazy _ => prints("D2Eelazy(...)")
//
(* ****** ****** *)
//
|D2Eannot _ => prints("D2Eannot(...)")
//
(* ****** ****** *)
//
|D2Eg1mac _ => prints("D2Eg1mac(...)")
//
(* ****** ****** *)
//
|D2Elabck _ => prints("D2Elabck(...)")
|D2Et2pck _ => prints("D2Et2pck(...)")
|D2Et2ped _ => prints("D2Et2ped(...)")
//
(* ****** ****** *)
//
|D2Eexists _ => prints("D2Eexists(...)")
//
(* ****** ****** *)
//
|
D2Eextnam _ => prints("D2Eextnam(...)")
//
|
D2Esynext _ => prints("D2Esynext(...)")
//
(* ****** ****** *)
//
|D2Enone0 _ => prints("D2Enone0(...)")
|D2Enone1 _ => prints("D2Enone1(...)")
|D2Enone2 _ => prints("D2Enone2(...)")
//
(* ****** ****** *)
//
| D2Eerrck  _  => prints("D2Eerrck(...)")
//
(* ****** ****** *)
//
end(*let*)//end-of-[d2exp_fprint(dexp,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2ecl_fprint
(d2cl, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
d2cl.node() of
|_(*otherwise*) => prints("D2Cother(...)")
//
end(*let*)//end-of-[d2ecl_fprint(d2cl,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/pytrcpy_debug00.dats] *)
(***********************************************************************)
