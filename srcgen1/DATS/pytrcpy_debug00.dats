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
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/xsymbol.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/locinfo.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/lexing0.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/staexp1.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/dynexp1.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/staexp2.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/statyp2.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/dynexp2.sats"
#staload "\
./../../externs/\
ATS3/srcgen2/SATS/dynexp3.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/ats3_pydev.sats"
#staload
"./../SATS/locinfo_pytrcpy.sats"
#staload
"./../SATS/staexp1_pytrcpy.sats"
#staload
"./../SATS/dynexp1_pytrcpy.sats"
#staload
"./../SATS/staexp2_pytrcpy.sats"
#staload
"./../SATS/statyp2_pytrcpy.sats"
#staload
"./../SATS/dynexp2_pytrcpy.sats"
#staload
"./../SATS/dynexp3_pytrcpy.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s1exp_fprint
(s1e0, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
s1e0.node() of
//
|S1Eid0 _ => prints("S1Eid0(...)")
//
|S1Eint _ => prints("S1Eint(...)")
|S1Echr _ => prints("S1Echr(...)")
|S1Eflt _ => prints("S1Eflt(...)")
|S1Estr _ => prints("S1Estr(...)")
//
|S1Eb0sh _ => prints("S1Eb0sh(...)")
|S1Eb1sh _ => prints("S1Eb1sh(...)")
//
|S1Earrw _ => prints("S1Earrw(...)")
//
|S1Ea0pp _ => prints("S1Ea0pp(...)")
|S1Ea1pp _ => prints("S1Ea1pp(...)")
|S1Ea2pp _ => prints("S1Ea2pp(...)")
|S1El1st _ => prints("S1El1st(...)")
|S1El2st _ => prints("S1El2st(...)")
//
|S1Et1up _ => prints("S1Et1up(...)")
|S1Et2up _ => prints("S1Et2up(...)")
//
|S1Er1cd _ => prints("S1Er1cd(...)")
|S1Er2cd _ => prints("S1Er2cd(...)")
//
|S1Elams _ => prints("S1Elams(...)")
//
|S1Euni0 _ => prints("S1Euni0(...)")
|S1Eexi0 _ => prints("S1Eexi0(...)")
//
|S1Eannot _ => prints("S1Eannot(...)")
|S1Equal0 _ => prints("S1Equal0(...)")
//
(* ****** ****** *)
//
|
S1Enone0((*nil*)) => prints("S1Enone0(...)")
|
S1Enone1(  s0e  ) => prints("S1Enone1(...)")
//
(* ****** ****** *)
//
|S1Eerrck(lvl,s1e) => prints("S1Enone1(...)")
//
(* ****** ****** *)
//
end//(*let*)//end-of-[s1exp_fprint(s1e0,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
sort2_fprint
(s2t0, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+ s2t0 of
//
(* ****** ****** *)
//
|S2Tid0 _ => prints("S2Tid0(...)")
|S2Tint _ => prints("S2Tint(...)")
//
(* ****** ****** *)
//
|S2Tbas _ => prints("S2Tbas(...)")
//
(* ****** ****** *)
//
|S2Ttup _ => prints("S2Ttup(...)")
//
(* ****** ****** *)
//
|S2Tfun0 _ => prints("S2Tfun0(...)")
|S2Tfun1 _ => prints("S2Tfun1(...)")
//
(* ****** ****** *)
//
|S2Tapps _ => prints("S2Tapps(...)")
//
(* ****** ****** *)
//
|S2Tnone0 _ => prints("S2Tnone0(...)")
|S2Tnone1 _ => prints("S2Tnone1(...)")
//
(* ****** ****** *)
//
|S2Terrck(lvl,s2t) => prints("S2Terrck(...)")
//
(* ****** ****** *)
//
end//(*let*)//end-of-[sort2_fprint(s2t0,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s2typ_fprint
(styp, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
styp.node() of
//
(* ****** ****** *)
//
|T2Pcst _ => prints("T2Pcst(...)")
|T2Pvar _ => prints("T2Pvar(...)")
//
(* ****** ****** *)
//
|T2Plft _ => prints("T2Plft(...)")
//
(* ****** ****** *)
//
|T2Pxtv _ => prints("T2Pxtv(...)")
//
(* ****** ****** *)
//
|T2Ptop0 _ => prints("T2Ptop0(...)")
|T2Ptop1 _ => prints("T2Ptop1(...)")
//
(* ****** ****** *)
//
|T2Parg1 _ => prints("T2Parg1(...)")
|T2Patx2 _ => prints("T2Patx2(...)")
//
(* ****** ****** *)
//
|T2Papps _ => prints("T2Papps(...)")
|T2Plam1 _ => prints("T2Plam1(...)")
//
(* ****** ****** *)
//
|T2Pf2cl _ => prints("T2Pf2cl(...)")
|T2Pfun1 _ => prints("T2Pfun1(...)")
//
(* ****** ****** *)
//
|T2Ptext _ => prints("T2Ptext(...)")
//
(* ****** ****** *)
//
|T2Pexi0 _ => prints("T2Pexi0(...)")
|T2Puni0 _ => prints("T2Puni0(...)")
//
(* ****** ****** *)
//
|T2Ptrcd _ => prints("T2Ptrcd(...)")
//
(* ****** ****** *)
//
|T2Pnone0 _ => prints("T2Pnone0(...)")
|T2Ps2exp _ => prints("T2Ps2exp(...)")
//
(* ****** ****** *)
//
|T2Perrck(lvl,t2p) => prints("T2Perrck(...)")
//
(* ****** ****** *)
//
end//(*let*)//end-of-[s2typ_fprint(styp,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s2exp_fprint
(sexp, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
sexp.node() of
//
(* ****** ****** *)
//
|S2Eint _ => prints("S2Eint(...)")
|S2Ebtf _ => prints("S2Ebtf(...)")
|S2Echr _ => prints("S2Echr(...)")
|S2Estr _ => prints("S2Estr(...)")
//
(* ****** ****** *)
//
|S2Ecst _ => prints("S2Ecst(...)")
|S2Evar _ => prints("S2Evar(...)")
//
|S2Eany _ => prints("S2Eany(...)")
//
(* ****** ****** *)
//
|S2Etop0 _ => prints("S2Etop0(...)")
|S2Etop1 _ => prints("S2Etop1(...)")
//
(* ****** ****** *)
//
|S2Ecsts _ => prints("S2Ecsts(...)")
//
(* ****** ****** *)
//
|S2Earg1 _ => prints("S2Earg1(...)")
|S2Eatx2 _ => prints("S2Eatx2(...)")
//
(* ****** ****** *)
//
|S2Eapps _ => prints("S2Eapps(...)")
|S2Elam1 _ => prints("S2Elam1(...)")
//
(* ****** ****** *)
//
|S2Efun1 _ => prints("S2Efun1(...)")
//
(* ****** ****** *)
//
|S2Emet0 _ => prints("S2Emet0(...)")
//
(* ****** ****** *)
//
|S2Eexi0 _ => prints("S2Eexi0(...)")
|S2Euni0 _ => prints("S2Euni0(...)")
//
(* ****** ****** *)
//
|S2Elist _ => prints("S2Elist(...)")
//
(* ****** ****** *)
//
|S2Etype _ => prints("S2Etype(...)")
//
(* ****** ****** *)
//
|S2Etext _ => prints("S2Etext(...)")
//
(* ****** ****** *)
//
|S2Etrcd _ => prints("S2Etrcd(...)")
//
(* ****** ****** *)
//
|S2Eimpr _ => prints("S2Eimpr(...)")
|S2Eprgm _ => prints("S2Eprgm(...)")
//
|S2Ecast _ => prints("S2Ecast(...)")
//
(* ****** ****** *)
//
|S2Enone0 _ => prints("S2Enone0(...)")
|S2Enone1 _ => prints("S2Enone1(...)")
|S2Enone2 _ => prints("S2Enone2(...)")
//
(* ****** ****** *)
//
|S2Eerrck(lvl,s2e) => prints("S2Eerrck(...)")
//
(* ****** ****** *)
//
end//(*let*)//end-of-[s2exp_fprint(sexp,out0)]
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
//
|D2Pnil _ => prints("D2Pnil(...)")
|D2Pany _ => prints("D2Pany(...)")
|D2Parg _ => prints("D2Parg(...)")
//
|D2Pvar _ => prints("D2Pvar(...)")
//
|D2Pint _ => prints("D2Pint(...)")
|D2Pbtf _ => prints("D2Pbtf(...)")
|D2Pchr _ => prints("D2Pchr(...)")
|D2Pflt _ => prints("D2Pflt(...)")
|D2Pstr _ => prints("D2Pstr(...)")
//
|D2Pi00 _ => prints("D2Pi00(...)")
|D2Pb00 _ => prints("D2Pb00(...)")
|D2Pc00 _ => prints("D2Pc00(...)")
|D2Pf00 _ => prints("D2Pf00(...)")
|D2Ps00 _ => prints("D2Ps00(...)")
//
|D2Pcon _ => prints("D2Pcon(...)")
//
|D2Pbang _ => prints("D2Pbang(...)")
|D2Pflat _ => prints("D2Pflat(...)")
|D2Pfree _ => prints("D2Pfree(...)")
//
|D2Pcons _ => prints("D2Pcons(...)")
//
|D2Psapp _ => prints("D2Psapp(...)")
//
|D2Pdap0 _ => prints("D2Pdap0(...)")
|D2Pdap1 _ => prints("D2Pdap1(...)")
//
|D2Pdapp _ => prints("D2Pdapp(...)")
//
|D2Prfpt _ => prints("D2Prfpt(...)")
//
|D2Ptup0 _ => prints("D2Ptup0(...)")
|D2Ptup1 _ => prints("D2Ptup1(...)")
|D2Prcd2 _ => prints("D2Prcd2(...)")
//
|D2Pargtp _ => prints("D2Pargtp(...)")
|D2Pannot _ => prints("D2Pannot(...)")
//
|D2Pg1mac _ => prints("D2Pg1mac(...)")
//
|D2Pt2pck _ => prints("D2Pt2pck(...)")
|D2Pt2pkc _ => prints("D2Pt2pkc(...)")
//
(* ****** ****** *)
//
|
D2Pnone0((*nil*)) => prints("D2Pnone0(...)")
|
D2Pnone1(  d1p  ) => prints("D2Pnone1(...)")
|
D2Pnone2(  d2p  ) => prints("D2Pnone2(...)")
//
(* ****** ****** *)
//
|D2Perrck(lvl,d2p) => prints("D2Perrck(...)")
//
end//(*let*)//end-of-[d2pat_fprint(dpat,out0)]
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
|
D2Enone0((*nil*)) => prints("D2Enone0(...)")
|
D2Enone1(  d1e  ) => prints("D2Enone1(...)")
|
D2Enone2(  d2e  ) => prints("D2Enone2(...)")
//
(* ****** ****** *)
//
|D2Eerrck(lvl,d2e) => prints("D2Eerrck(...)")
//
(* ****** ****** *)
//
end//(*let*)//end-of-[d2exp_fprint(dexp,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
f2arg_fprint
(farg, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
farg.node() of
//
|F2ARGdapp _ => prints("F2ARGdapp(...)")
|F2ARGsapp _ => prints("F2ARGsapp(...)")
|F2ARGmets _ => prints("F2ARGmets(...)")
//
end(*let*)//end-of-[f2arg_fprint(farg,out0)]
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
//
(* ****** ****** *)
|D2Cd1ecl _ => prints("D2Cd1ecl(...)")
(* ****** ****** *)
|D2Cstatic _ => prints("D2Cstatic(...)")
|D2Cextern _ => prints("D2Cextern(...)")
(* ****** ****** *)
//
|D2Clocal0 _ => prints("D2Clocal0(...)")
//
|D2Cabssort _ => prints("D2Cabssort(...)")
//
|D2Cstacst0 _ => prints("D2Cstacst0(...)")
//
|D2Csortdef _ => prints("D2Csortdef(...)")
//
|D2Csexpdef _ => prints("D2Csexpdef(...)")
//
|D2Cabstype _ => prints("D2Cabstype(...)")
//
|D2Cabsopen _ => prints("D2Cabsopen(...)")
|D2Cabsimpl _ => prints("D2Cabsimpl(...)")
//
|D2Csymload _ => prints("D2Csymload(...)")
//
|D2Cinclude _ => prints("D2Cinclude(...)")
//
|D2Cstaload _ => prints("D2Cstaload(...)")
//
(* ****** ****** *)
//
|D2Cdyninit _ => prints("D2Cdyninit(...)")
|D2Cextcode _ => prints("D2Cextcode(...)")
//
(* ****** ****** *)
//
|D2Cdatasort _ => prints("D2Cdatasort(...)")
//
|D2Cvaldclst _ => prints("D2Cvaldclst(...)")
|D2Cvardclst _ => prints("D2Cvardclst(...)")
//
|D2Cfundclst _ => prints("D2Cfundclst(...)")
//
|D2Cimplmnt0 _ => prints("D2Cimplmnt0(...)")
//
|D2Cexcptcon _ => prints("D2Cexcptcon(...)")
|D2Cdatatype _ => prints("D2Cdatatype(...)")
//
|D2Cdynconst _ => prints("D2Cdynconst(...)")
//
(* ****** ****** *)
//
|
D2Cnone0((*nil*)) => prints("D2Cnone0(...)")
|
D2Cnone1(  dcl  ) => prints("D2Cnone1(...)")
|
D2Cnone2(  dcl  ) => prints("D2Cnone2(...)")
//
(* ****** ****** *)
//
|
D2Cthen0(  dcs  ) => prints("D2Cthen0(...)")
|
D2Celse1(  dcs  ) => prints("D2Celse1(...)")
//
(* ****** ****** *)
//
|D2Cerrck(lvl,dcl) => prints("D2Cerrck(...)")
//
(* ****** ****** *)
//
end//(*let*)//end-of-[d2ecl_fprint(d2cl,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3pat_fprint
(d3p0, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
d3p0.node() of
//
(* ****** ****** *)
//
|D3Pany _ => prints("D3Pany(...)")
|D3Pvar _ => prints("D3Pvar(...)")
//
(* ****** ****** *)
//
|D3Pint _ => prints("D3Pint(...)")
|D3Pbtf _ => prints("D3Pbtf(...)")
|D3Pchr _ => prints("D3Pchr(...)")
|D3Pflt _ => prints("D3Pflt(...)")
|D3Pstr _ => prints("D3Pstr(...)")
//
(* ****** ****** *)
//
|D3Pcon _ => prints("D3Pcon(...)")
//
(* ****** ****** *)
//
|D3Pbang _ => prints("D3Pbang(...)")
|D3Pflat _ => prints("D3Pflat(...)")
|D3Pfree _ => prints("D3Pfree(...)")
//
(* ****** ****** *)
//
|D3Psapp _ => prints("D3Psapp(...)")
|D3Psapq _ => prints("D3Psapq(...)")
//
(* ****** ****** *)
//
|D3Ptapq _ => prints("D3Ptapq(...)")
//
(* ****** ****** *)
//
|D3Pdap1 _ => prints("D3Pdap1(...)")
|D3Pdapp _ => prints("D3Pdapp(...)")
//
(* ****** ****** *)
//
|D3Prfpt _ => prints("D3Prfpt(...)")
//
(* ****** ****** *)
//
|D3Ptup0 _ => prints("D3Ptup0(...)")
|D3Ptup1 _ => prints("D3Ptup1(...)")
|D3Prcd2 _ => prints("D3Prcd2(...)")
//
(* ****** ****** *)
//
|D3Pargtp _ => prints("D3Pargtp(...)")
|D3Pannot _ => prints("D3Pannot(...)")
//
(* ****** ****** *)
//
|D3Pt2pck _ => prints("D3Pt2pck(...)")
//
(* ****** ****** *)
//
|
D3Pnone0((*nil*)) => prints("D3Pnone0(...)")
|
D3Pnone1(  d2p  ) => prints("D3Pnone1(...)")
|
D3Pnone2(  d3p  ) => prints("D3Pnone2(...)")
//
(* ****** ****** *)
//
|D3Perrck(lvl,d3p) => prints("D3Perrck(...)")
//
(* ****** ****** *)
//
end//(*let*)//end-of-[d3pat_fprint(d3p0,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3exp_fprint
(d3e0, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
d3e0.node() of
//
(* ****** ****** *)
//
|D3Eint _ => prints("D3Eint(...)")
|D3Ebtf _ => prints("D3Ebtf(...)")
|D3Echr _ => prints("D3Echr(...)")
|D3Eflt _ => prints("D3Eflt(...)")
|D3Estr _ => prints("D3Estr(...)")
//
(* ****** ****** *)
//
|D3Ei00 _ => prints("D3Ei00(...)")
|D3Eb00 _ => prints("D3Eb00(...)")
|D3Ec00 _ => prints("D3Ec00(...)")
|D3Ef00 _ => prints("D3Ef00(...)")
|D3Es00 _ => prints("D3Es00(...)")
//
(* ****** ****** *)
//
|D3Etop _ => prints("D3Etop(...)")
//
(* ****** ****** *)
//
|D3Evar _ => prints("D3Evar(...)")
//
(* ****** ****** *)
//
|D3Econ _ => prints("D3Econ(...)")
|D3Ecst _ => prints("D3Ecst(...)")
//
(* ****** ****** *)
//
|D3Etimp _ => prints("D3Etimp(...)")
|D3Etimq _ => prints("D3Etimq(...)")
//
(* ****** ****** *)
//
|D3Esapp _ => prints("D3Esapp(...)")
|D3Esapq _ => prints("D3Esapq(...)")
//
(* ****** ****** *)
//
|D3Etapp _ => prints("D3Etapp(...)")
|D3Etapq _ => prints("D3Etapq(...)")
//
(* ****** ****** *)
//
|D3Edap0 _ => prints("D3Edap0(...)")
|D3Edapp _ => prints("D3Edapp(...)")
//
(* ****** ****** *)
//
|D3Epcon _ => prints("D3Epcon(...)")
|D3Eproj _ => prints("D3Eproj(...)")
//
(* ****** ****** *)
//
|D3Elet0 _ => prints("D3Elet0(...)")
//
(* ****** ****** *)
//
|D3Eift0 _ => prints("D3Eift0(...)")
|D3Ecas0 _ => prints("D3Ecas0(...)")
//
(* ****** ****** *)
//
|D3Eseqn _ => prints("D3Eseqn(...)")
//
(* ****** ****** *)
//
|D3Etup0 _ => prints("D3Etup0(...)")
|D3Etup1 _ => prints("D3Etup1(...)")
|D3Ercd2 _ => prints("D3Ercd2(...)")
//
(* ****** ****** *)
//
|D3Elam0 _ => prints("D3Elam0(...)")
|D3Efix0 _ => prints("D3Efix0(...)")
//
(* ****** ****** *)
//
|D3Etry0 _ => prints("D3Etry0(...)")
//
(* ****** ****** *)
//
|D3Eaddr _ => prints("D3Eaddr(...)")
|D3Eview _ => prints("D3Eview(...)")
|D3Elval _ => prints("D3Elval(...)")
//
|D3Eflat _ => prints("D3Eflat(...)")
//
(* ****** ****** *)
//
|D3Eeval _ => prints("D3Eeval(...)")
//
(* ****** ****** *)
//
|D3Efold _ => prints("D3Efold(...)")
|D3Efree _ => prints("D3Efree(...)")
//
(* ****** ****** *)
//
|D3Edp2tr _ => prints("D3Edp2tr(...)")
//
|D3Edl0az _ => prints("D3Edl0az(...)")
|D3Edl1az _ => prints("D3Edl1az(...)")
|D3Edelaz _ => prints("D3Edelaz(...)")
//
(* ****** ****** *)
//
|D3Ewhere _ => prints("D3Ewhere(...)")
//
(* ****** ****** *)
//
|D3Eassgn _ => prints("D3Eassgn(...)")
|D3Exazgn _ => prints("D3Exazgn(...)")
|D3Exchng _ => prints("D3Exchng(...)")
//
(* ****** ****** *)
//
|D3Eraise _ => prints("D3Eraise(...)")
//
(* ****** ****** *)
//
|D3El0azy _ => prints("D3El0azy(...)")
|D3El1azy _ => prints("D3El1azy(...)")
|D3Eelazy _ => prints("D3Eelazy(...)")
//
(* ****** ****** *)
//
|D3Eannot _ => prints("D3Eannot(...)")
//
(* ****** ****** *)
//
|D3Elabck _ => prints("D3Elabck(...)")
|D3Et2pck _ => prints("D3Et2pck(...)")
|D3Et2ped _ => prints("D3Et2ped(...)")
//
(* ****** ****** *)
//
|D3Eexists _ => prints("D3Eexists(...)")
//
(* ****** ****** *)
//
|D3Eextnam _ => prints("D3Eextnam(...)")
|D3Esynext _ => prints("D3Esynext(...)")
//
(* ****** ****** *)
//
|
D3Enone0((*nil*)) => prints("D3Enone0(...)")
|
D3Enone1(  d2e  ) => prints("D3Enone1(...)")
|
D3Enone2(  d3e  ) => prints("D3Enone2(...)")
//
(* ****** ****** *)
//
|D3Eerrck(lvl,d3e) => prints("D3Eerrck(...)")
//
(* ****** ****** *)
//
end//(*let*)//end-of-[d3exp_fprint(d3e0,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
f3arg_fprint
(farg, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
farg.node() of
//
|F3ARGdapp _ => prints("F3ARGdapp(...)")
|F3ARGsapp _ => prints("F3ARGsapp(...)")
|F3ARGmets _ => prints("F3ARGmets(...)")
//
end(*let*)//end-of-[f3arg_fprint(farg,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d3ecl_fprint
(dcl0, out0) =
let
#impltmp
g_print$out<>() = out0
in//let
//
case+
dcl0.node() of
//
(* ****** ****** *)
//
|D3Cd2ecl _ => prints("D3Cd2ecl(...)")
//
(* ****** ****** *)
//
|D3Cstatic _ => prints("D3Cstatic(...)")
|D3Cextern _ => prints("D3Cextern(...)")
//
(* ****** ****** *)
//
|D3Ctmpsub _ => prints("D3Ctmpsub(...)")
//
(* ****** ****** *)
//
|D3Cdclst0 _ => prints("D3Cdclst0(...)")
|D3Clocal0 _ => prints("D3Clocal0(...)")
//
(* ****** ****** *)
//
|D3Cabsopen _ => prints("D3Cabsopen(...)")
|D3Cabsimpl _ => prints("D3Cabsimpl(...)")
//
(* ****** ****** *)
//
|D3Cinclude _ => prints("D3Cinclude(...)")
|D3Cstaload _ => prints("D3Cstaload(...)")
//
(* ****** ****** *)
//
|D3Cdyninit _ => prints("D3Cdyninit(...)")
|D3Cextcode _ => prints("D3Cextcode(...)")
//
(* ****** ****** *)
//
|D3Cvaldclst _ => prints("D3Cvaldclst(...)")
|D3Cvardclst _ => prints("D3Cvardclst(...)")
//
|D3Cfundclst _ => prints("D3Cfundclst(...)")
//
(* ****** ****** *)
//
|D3Cimplmnt0 _ => prints("D3Cimplmnt0(...)")
//
|D3Ctmplocal _ => prints("D3Ctmplocal(...)")
//
|D3Cimpltmpr _ => prints("D3Cimpltmpr(...)")
//
(* ****** ****** *)
//
|
D3Cnone0((*nil*)) => prints("D3Cnone0(...)")
|
D3Cnone1(  dcl  ) => prints("D3Cnone1(...)")
|
D3Cnone2(  dcl  ) => prints("D3Cnone2(...)")
//
(* ****** ****** *)
//
|D3Cerrck(lvl,dcl) => prints("D3Cerrck(...)")
//
(* ****** ****** *)
//
end//(*let*)//end-of-[d3ecl_fprint(dcl0,out0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/pytrcpy_debug00.dats] *)
(***********************************************************************)
