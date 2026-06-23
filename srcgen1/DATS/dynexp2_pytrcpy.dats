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
./../../xassets/\
ATS3/srcgen2/SATS/xstamp0.sats"
#staload "\
./../../xassets/\
ATS3/srcgen2/SATS/xsymbol.sats"
#staload "\
./../../xassets/\
ATS3/srcgen2/SATS/locinfo.sats"
#staload "\
./../../xassets/\
ATS3/srcgen2/SATS/lexing0.sats"
#staload "\
./../../xassets/\
ATS3/srcgen2/SATS/staexp1.sats"
#staload "\
./../../xassets/\
ATS3/srcgen2/SATS/dynexp1.sats"
#staload "\
./../../xassets/\
ATS3/srcgen2/SATS/staexp2.sats"
#staload "\
./../../xassets/\
ATS3/srcgen2/SATS/statyp2.sats"
#staload "\
./../../xassets/\
ATS3/srcgen2/SATS/dynexp2.sats"
//
(* ****** ****** *)
//
#staload
"./../SATS/ats3_pydev.sats"
#staload
"./../SATS/xstamp0_pytrcpy.sats"
#staload
"./../SATS/xsymbol_pytrcpy.sats"
#staload
"./../SATS/locinfo_pytrcpy.sats"
#staload
"./../SATS/lexing0_pytrcpy.sats"
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
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_repr
{a:type}(x:a): strn = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Pa3src
( loc0
: PY$loctn
, dpat: d2pat): PY$d2pat = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Ea3src
( loc0
: PY$loctn
, dexp: d2exp): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Ca3src
( loc0
: PY$loctn
, d2cl: d2ecl): PY$d2ecl = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Pvar
( loc0: PY$loctn
, dvar: PY$d2var): PY$d2pat = $extnam()
#extern
fun
PY_D2Pcon
( loc0: PY$loctn
, dcon: PY$d2con): PY$d2pat = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Pdap0
( loc0: PY$loctn
, d2p1: PY$d2pat   ): PY$d2pat = $extnam()
#extern
fun
PY_D2Pdap1
( loc0: PY$loctn
, d2p1: PY$d2pat   ): PY$d2pat = $extnam()
//
#extern
fun
PY_D2Pdapp
( loc0: PY$loctn
, d2f0: PY$d2pat
, npf1: sint
, d2ps: PY$d2patlst): PY$d2pat = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Pannot
( loc0: PY$loctn
, d2p1: PY$d2pat
, s1e2: PY$s1exp
, s2e2: PY$s2exp   ): PY$d2pat = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Eint
( loc0: PY$loctn
, tint: PY$token): PY$d2exp = $extnam()
#extern
fun
PY_D2Ebtf
( loc0: PY$loctn
, sbtf: PY$symbl): PY$d2exp = $extnam()
#extern
fun
PY_D2Echr
( loc0: PY$loctn
, tchr: PY$token): PY$d2exp = $extnam()
#extern
fun
PY_D2Estr
( loc0: PY$loctn
, tstr: PY$token): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Econ
( loc0: PY$loctn
, dcon: PY$d2con): PY$d2exp = $extnam()
#extern
fun
PY_D2Ecst
( loc0: PY$loctn
, dcst: PY$d2cst): PY$d2exp = $extnam()
#extern
fun
PY_D2Evar
( loc0: PY$loctn
, dvar: PY$d2var): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Esym0
( loc0: PY$loctn
, drxp: PY$d2exp
, dsym: PY$d1exp
, dpis: PY$d2ptmlst): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Edap0
( loc0: PY$loctn
, d2e1: PY$d2exp   ): PY$d2exp = $extnam()
//
#extern
fun
PY_D2Edapp
( loc0: PY$loctn
, d2f0: PY$d2exp
, npf1: sint
, d2es: PY$d2explst): PY$d2exp = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Elet0
( loc0: PY$loctn
, dcls: PY$d2eclist
, d2e1: PY$d2exp   ): PY$d2exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Eift0
( loc0: PY$loctn
, d2e1: PY$d2exp
, dthn: PY$d2expopt
, dels: PY$d2expopt): PY$d2exp = $extnam()
//
#extern
fun
PY_D2Ecas0
( loc0: PY$loctn
, tknd: PY$token
, d2e1: PY$d2exp
, dcls: PY$d2clslst): PY$d2exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Eseqn
( loc0: PY$loctn
, d2es: PY$d2explst
, d2e1: PY$d2exp   ): PY$d2exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Eaddr
( loc0: PY$loctn
, d2e1: PY$d2exp): PY$d2exp = $extnam()
//
#extern
fun
PY_D2Eview
( loc0: PY$loctn
, d2e1: PY$d2exp): PY$d2exp = $extnam()
//
#extern
fun
PY_D2Elval
( loc0: PY$loctn
, d2e1: PY$d2exp): PY$d2exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Ewhere
( loc0: PY$loctn
, d2e1: PY$d2exp
, dcls: PY$d2eclist): PY$d2exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Et2pck
( loc0: PY$loctn
, d2e1: PY$d2exp
, t2p2: PY$s2typ   ): PY$d2exp = $extnam()
//
#extern
fun
PY_D2Et2ped
( loc0: PY$loctn
, d2e1: PY$d2exp
, t2p2: PY$s2typ   ): PY$d2exp = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
PY_D2Clocal0
( loc0: PY$loctn
, head: PY$d2eclist
, body: PY$d2eclist): PY$d2ecl = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Cvaldclst
(
loc0: PY$loctn,
tknd: PY$token,
d2vs: PY$d2valdclist): PY$d2ecl = $extnam()
#extern
fun
PY_D2Cvardclst
(
loc0: PY$loctn,
tknd: PY$token,
d2vs: PY$d2vardclist): PY$d2ecl = $extnam()
//
#extern
fun
PY_D2Cfundclst
(
loc0: PY$loctn,
tknd: PY$token,
t2qs: t2qaglst,
d2cs: PY$d2cstlst,
d2fs: PY$d2fundclist): PY$d2ecl = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_D2Cimplmnt0
( loc0: PY$loctn
, tknd: PY$token
, sqas: s2qaglst
, tqas: t2qaglst
, dimp: dimpl
, tias: t2iaglst
, f2as: PY$f2arglst
, sres: PY$s2res
, d2e1: PY$d2exp   ): PY$d2ecl = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_d2valdcl_make_args
(
lctn: PY$loctn,
dpat: PY$d2pat,
tdxp: PY$teqd2exp,
wsxp: PY$wths2exp): PY$d2valdcl = $extnam()
//
#extern
fun
PY_d2vardcl_make_args
(
lctn: PY$loctn,
dpid: PY$d2var,
vpid: PY$d2varopt,
sres: PY$s2expopt,
tdxp: PY$teqd2exp): PY$d2vardcl = $extnam()
//
(* ****** ****** *)
//
#extern
fun
PY_d2fundcl_make_args
(
lctn: PY$loctn,
dpid: PY$d2var,
farg: PY$f2arglst,
sres: PY$s2res,
tdxp: PY$teqd2exp,
wsxp: PY$wths2exp): PY$d2fundcl = $extnam()
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
g_print<d2pat>(dpat) =
d2pat_fprint(dpat, g_print$out<>())
#impltmp
g_print<d2exp>(dexp) =
d2exp_fprint(dexp, g_print$out<>())
//
#impltmp
g_print<f2arg>(farg) =
f2arg_fprint(farg, g_print$out<>())
//
#impltmp
g_print<d2ecl>(d2cl) =
d2ecl_fprint(d2cl, g_print$out<>())
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2cst_pytrcpy
(   dcst   ) =
let
//
val lctn =
loctn_pytrcpy
(
d2cst_get_lctn(dcst))
//
val name =
symbl_pytrcpy
(
d2cst_get_name(dcst))
//
val stmp =
stamp_pytrcpy
(
d2cst_get_stmp(dcst))
//
in//let
(
  PY_d2cst(lctn, name, stmp))
end where
{
//
#extern
fun
PY_d2cst
(
lctn: PY$loctn,
name: PY$symbl,
stmp: PY$stamp): PY$d2cst = $extnam()
//
}(*where*)//end-of-[d2cst_pytrcpy(dcst)]
//
(* ****** ****** *)
//
#implfun
d2var_pytrcpy
(   dvar   ) =
let
//
val lctn =
loctn_pytrcpy
(
d2var_get_lctn(dvar))
//
val name =
symbl_pytrcpy
(
d2var_get_name(dvar))
//
val stmp =
stamp_pytrcpy
(
d2var_get_stmp(dvar))
//
in//let
(
  PY_d2var(lctn, name, stmp))
end where
{
//
#extern
fun
PY_d2var
(
lctn: PY$loctn,
name: PY$symbl,
stmp: PY$stamp): PY$d2var = $extnam()
//
}(*where*)//end-of-[d2var_pytrcpy(dvar)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2itm_pytrcpy
(   ditm   ) =
(
case+ ditm of
|D2ITMvar
(   dvar   ) =>
(
PY_D2ITMvar(dvar))
where
{
val dvar =
  d2var_pytrcpy(dvar) }
|D2ITMcon
(   d2cs   ) =>
(
PY_D2ITMcon(d2cs))
where
{
val d2cs =
  d2conlst_pytrcpy(d2cs) }
|D2ITMcst
(   d2cs   ) =>
(
PY_D2ITMcst(d2cs))
where
{
val d2cs =
  d2cstlst_pytrcpy(d2cs) }
|D2ITMsym
(sym0, dpis) =>
(
PY_D2ITMsym(sym0, dpis)
) where
{
val sym0 =
  symbl_pytrcpy(sym0)
val dpis =
  d2ptmlst_pytrcpy(dpis) }
) where
{
//
#extern
fun
PY_D2ITMvar
( dvar
: PY$d2var): PY$d2itm = $extnam()
//
#extern
fun
PY_D2ITMcon
( dcon
: PY$d2conlst): PY$d2itm = $extnam()
#extern
fun
PY_D2ITMcst
( dcst
: PY$d2cstlst): PY$d2itm = $extnam()
//
#extern
fun
PY_D2ITMsym
( sym0
: PY$symbl,
  dpis
: PY$d2ptmlst): PY$d2itm = $extnam()
//
}(*where*)//end-of-[d2itm_pytrcpy(ditm)]
//
(* ****** ****** *)
//
#implfun
d2ptm_pytrcpy
(   dptm   ) =
(
case+ dptm of
|D2PTMnone
(   dqid   ) =>
(
PY_D2PTMnone(dqid))
|D2PTMsome
(pval, ditm) =>
(
PY_D2PTMsome(pval, ditm))
where
{
val ditm = d2itm_pytrcpy(ditm) }
) where
{
//
#extern
fun
PY_D2PTMnone
(dqid: d1qid): PY$d2ptm = $extnam()
#extern
fun
PY_D2PTMsome
(
pval: sint,
ditm: PY$d2itm): PY$d2ptm = $extnam()
//
}(*where*)//end-of-[d2ptm_pytrcpy(dptm)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
s2res_pytrcpy
(   sres   ) =
(
case+ sres of
|S2RESnone
( (*void*) ) =>
(
PY_S2RESnone((*0*)))
|S2RESsome
(seff, s2e1) =>
(
PY_S2RESsome(seff, s2e1))
where
{
val s2e1 = s2exp_pytrcpy(s2e1) }
) where
{
//
#extern
fun
PY_S2RESnone
(   (*nil*)   ): PY$s2res = $extnam()
#extern
fun
PY_S2RESsome
(
seff: s2eff,
s2e1: PY$s2exp): PY$s2res = $extnam()
//
}(*where*)//end-of-[s2res_pytrcpy(sres)]
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
//
(* ****** ****** *)
//
|D2Pvar
(   d2v1   ) =>
let
val d2v1 =
d2var_pytrcpy(d2v1)
in//let
(
  PY_D2Pvar(loc0, d2v1))
end//let
//
|D2Pcon
(   d2c1   ) =>
let
val d2c1 =
d2con_pytrcpy(d2c1)
in//let
(
  PY_D2Pcon(loc0, d2c1))
end//let
//
(* ****** ****** *)
//
|D2Pdap0
(   d2p1   ) =>
let
val d2p1 =
d2pat_pytrcpy(d2p1)
in//let
  PY_D2Pdap0(loc0, d2p1)
end//let
|D2Pdap1
(   d2p1   ) =>
let
val d2p1 =
d2pat_pytrcpy(d2p1)
in//let
  PY_D2Pdap1(loc0, d2p1)
end//let
//
|D2Pdapp
(d2f0
,npf1, d2ps) =>
(
PY_D2Pdapp
(loc0, d2f0, npf1, d2ps))
where
{
val d2f0 =
  d2pat_pytrcpy(d2f0)
val d2ps =
(
  d2patlst_pytrcpy(d2ps)) }
//
(* ****** ****** *)
//
|D2Pannot
(d2p1
,s1e2, s2e2) =>
(
PY_D2Pannot
(loc0, d2p1, s1e2, s2e2))
where
{
val
d2p1 = d2pat_pytrcpy(d2p1)
val
s1e2 = s1exp_pytrcpy(s1e2)
val
s2e2 = s2exp_pytrcpy(s2e2) }
//
(* ****** ****** *)
|
_(*otherwise*) => PY_D2Pa3src(loc0, dpat)
//
(* ****** ****** *)
) where
{
//
val loc0 =
loctn_pytrcpy(dpat.lctn((*0*)))
//
val (  ) =
(
  printsln("d2pat_pytrcpy: dpat = ", dpat))
//
val (  ) =
printsln("d2pat_pytrcpy: loc0 = ", PY_repr(loc0))
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
//
(* ****** ****** *)
//
|D2Eint
(   tint   ) =>
let
val tint =
token_pytrcpy(tint)
in//let
(
PY_D2Eint(loc0, tint))
end//let//endof(D2Eint)
//
|D2Ebtf
(   sbtf   ) =>
let
val sbtf =
symbl_pytrcpy(sbtf)
in//let
(
PY_D2Ebtf(loc0, sbtf))
end//let//endof(D2Ebtf)
//
|D2Echr
(   tchr   ) =>
let
val tchr =
token_pytrcpy(tchr)
in//let
(
PY_D2Echr(loc0, tchr))
end//let//endof(D2Echr)
//
|D2Estr
(   tstr   ) =>
let
val tstr =
token_pytrcpy(tstr)
in//let
(
PY_D2Estr(loc0, tstr))
end//let//endof(D2Estr)
//
(* ****** ****** *)
//
|D2Econ
(   d2c1   ) =>
let
val d2c1 =
d2con_pytrcpy(d2c1)
in//let
(
PY_D2Econ(loc0, d2c1))
end//let//endof(D2Econ)
//
|D2Ecst
(   d2c1   ) =>
let
val d2c1 =
d2cst_pytrcpy(d2c1)
in//let
(
PY_D2Ecst(loc0, d2c1))
end//let//endof(D2Ecst)
//
|D2Evar
(   d2v1   ) =>
let
val d2v1 =
d2var_pytrcpy(d2v1)
in//let
(
PY_D2Evar(loc0, d2v1))
end//let//endof(D2Evar)
//
(* ****** ****** *)
//
|D2Esym0
(drxp
,dsym, dpis) =>
let
//
val d2e1 =
d2exp_pytrcpy
(
d2rxp_get_dexp(drxp))
//
val dsym =
(
  d1exp_pytrcpy(dsym))
//
val dpis =
(
d2ptmlst_pytrcpy(dpis))
in//let
(
PY_D2Esym0
(loc0, d2e1, dsym, dpis))
end(*let*)//endof(D2Esym0)
//
(* ****** ****** *)
//
|D2Edap0
(   d2e1   ) =>
let
val d2e1 =
d2exp_pytrcpy(d2e1)
in//let
  PY_D2Edap0(loc0, d2e1)
end//let
//
|D2Edapp
(d2f0
,npf1, d2es) =>
(
PY_D2Edapp
(loc0, d2f0, npf1, d2es))
where
{
val d2f0 =
  d2exp_pytrcpy(d2f0)
val d2es =
(
  d2explst_pytrcpy(d2es)) }
//
(* ****** ****** *)
//
|D2Elet0
(dcls, d2e1) =>
let
val d2e1 =
(
  d2exp_pytrcpy(d2e1))
in//let
PY_D2Elet0
(loc0, dcls, d2e1(*scp*))
end where
{
val dcls =
(
  d2eclist_pytrcpy(dcls)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D2Eift0
(d2e1
,dthn, dels) =>
let
val d2e1 =
(
  d2exp_pytrcpy(d2e1))
in//let
PY_D2Eift0(
  loc0, d2e1, dthn, dels)
end where
{
val dthn =
(
  d2expopt_pytrcpy(dthn))
val dels =
(
  d2expopt_pytrcpy(dels)) }
//
(* ****** ****** *)
//
|D2Ecas0
(tknd
,d2e1, dcls) =>
(
PY_D2Ecas0
(loc0
,tknd, d2e1, dcls))
where
{
//
val tknd =
(
  token_pytrcpy(tknd))
//
val d2e1 =
(
  d2exp_pytrcpy(d2e1))
val dcls =
(
  d2clslst_pytrcpy(dcls)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D2Eseqn
(d2es, d2e1) =>
(
PY_D2Eseqn
(loc0, d2es, d2e1))
where
{
//
val
d2es =
(
  d2explst_pytrcpy(d2es))
//
val
d2e1 = d2exp_pytrcpy(d2e1) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D2Eaddr
(   d2e1   ) =>
(
PY_D2Eaddr(loc0, d2e1)
) where
{
val
d2e1 = d2exp_pytrcpy(d2e1) }
//
|D2Eview
(   d2e1   ) =>
(
PY_D2Eview(loc0, d2e1)
) where
{
val
d2e1 = d2exp_pytrcpy(d2e1) }
//
|D2Elval
(   d2e1   ) =>
(
PY_D2Elval(loc0, d2e1)
) where
{
val
d2e1 = d2exp_pytrcpy(d2e1) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D2Ewhere
(d2e1, dcls) =>
let
val d2e1 =
(
  d2exp_pytrcpy(d2e1))
in//let
PY_D2Ewhere
(loc0, d2e1(*scp*), dcls)
end where
{
val dcls =
(
  d2eclist_pytrcpy(dcls)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D2Et2pck
(d2e1, t2p2) =>
(
PY_D2Et2pck
(loc0, d2e1, t2p2(*ann*))
) where
{
val d2e1 = d2exp_pytrcpy(d2e1)
val t2p2 = s2typ_pytrcpy(t2p2)
}
//
(* ****** ****** *)
//
|D2Et2ped
(d2e1, t2p2) =>
(
PY_D2Et2ped
(loc0, d2e1, t2p2(*ann*))
) where
{
val d2e1 = d2exp_pytrcpy(d2e1)
val t2p2 = s2typ_pytrcpy(t2p2)
}
//
(* ****** ****** *)
(* ****** ****** *)
|_(*otherwise*) => PY_D2Ea3src(loc0, dexp)
(* ****** ****** *)
(* ****** ****** *)
//
)
where
{
//
val loc0 =
loctn_pytrcpy(dexp.lctn((*0*)))
//
val (  ) =
(
  printsln("d2exp_pytrcpy: dexp = ", dexp))
//
val (  ) =
printsln("d2exp_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d2exp_pytrcpy(dexp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2gua_pytrcpy
(   dgua   ) =
(
case+
dgua.node() of
//
|D2GUAexp
(   dexp   ) =>
(
PY_D2GUAexp
(loc0, dexp)) where
{
val dexp =
(
  d2exp_pytrcpy(dexp)) }
//
|D2GUAmat
(dexp, dpat) =>
(
PY_D2GUAmat
(loc0, dexp, dpat))
where
{
val dexp =
(
  d2exp_pytrcpy(dexp))
val dpat =
(
  d2pat_pytrcpy(dpat)) }
)
where
{
//
val loc0 =
loctn_pytrcpy(dgua.lctn((*0*)))
//
#extern
fun
PY_D2GUAexp
( lctn: PY$loctn
, dexp: PY$d2exp): PY$d2gua = $extnam()
#extern
fun
PY_D2GUAmat
( lctn: PY$loctn
, dexp: PY$d2exp
, dpat: PY$d2pat): PY$d2gua = $extnam()
//
val (  ) =
printsln("d2gua_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d2gua_pytrcpy(dgua)]
//
(* ****** ****** *)
//
#implfun
d2cls_pytrcpy
(   dcls   ) =
(
case+
dcls.node() of
|D2CLSgpt
(   dgpt   ) =>
(
PY_D2CLSgpt
(loc0, dgpt)) where
{
val
dgpt = d2gpt_pytrcpy(dgpt)
}
|D2CLScls
(dgpt, dexp) =>
(
PY_D2CLScls
(loc0, dgpt, dexp))
where
{
val
dgpt = d2gpt_pytrcpy(dgpt)
val
dexp = d2exp_pytrcpy(dexp) }
)
where
{
//
val loc0 =
loctn_pytrcpy(dcls.lctn((*0*)))
//
#extern
fun
PY_D2CLSgpt
( lctn: PY$loctn
, dgpt: PY$d2gpt): PY$d2cls = $extnam()
#extern
fun
PY_D2CLScls
( lctn: PY$loctn
, dgpt: PY$d2gpt
, dexp: PY$d2exp): PY$d2cls = $extnam()
//
val (  ) =
printsln("d2cls_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d2cls_pytrcpy(dcls)]
//
(* ****** ****** *)
//
#implfun
d2gpt_pytrcpy
(   dgpt   ) =
(
case+
dgpt.node() of
//
|D2GPTpat
(   dpat   ) =>
(
PY_D2GPTpat
(loc0, dpat)) where
{
val dpat =
(
  d2pat_pytrcpy(dpat)) }
//
|D2GPTgua
(dpat, d2gs) =>
(
PY_D2GPTgua
(loc0, dpat, d2gs))
where
{
val
dpat =
(
  d2pat_pytrcpy(dpat))
val
d2gs =
(
  d2gualst_pytrcpy(d2gs)) }
)
where
{
//
val loc0 =
loctn_pytrcpy(dgpt.lctn((*0*)))
//
#extern
fun
PY_D2GPTpat
( lctn: PY$loctn
, dpat: PY$d2pat): PY$d2gpt = $extnam()
#extern
fun
PY_D2GPTgua(
lctn: PY$loctn,
dpat: PY$d2pat,
d2gs: PY$d2gualst): PY$d2gpt = $extnam()
//
val (  ) =
printsln("d2gpt_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d2gpt_pytrcpy(dgpt)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
f2arg_pytrcpy
(   farg   ) =
(
case+
farg.node() of
//
|F2ARGdapp
(npf1, d2ps) =>
(
PY_F2ARGdapp
(loc0, npf1, d2ps))
where
{
val d2ps =
(
  d2patlst_pytrcpy(d2ps)) }
//
|F2ARGsapp
(s2vs, s2ps) =>
(
PY_F2ARGsapp
(loc0, s2vs, s2ps))
where
{
val s2vs =
(
  s2varlst_pytrcpy(s2vs))
val s2ps =
(
  s2explst_pytrcpy(s2ps)) }
//
|F2ARGmets
(   s2es   ) =>
(
PY_F2ARGmets(loc0, s2es))
where
{
val
s2es = s2explst_pytrcpy(s2es) }
//
)
where
{
//
val loc0 =
loctn_pytrcpy(farg.lctn((*0*)))
//
#extern
fun
PY_F2ARGdapp
(
lctn: PY$loctn,
npf1: sint,
d2ps: PY$d2patlst): PY$f2arg = $extnam()
#extern
fun
PY_F2ARGsapp
(
lctn: PY$loctn,
s2vs: PY$s2varlst,
s2es: PY$s2explst): PY$f2arg = $extnam()
#extern
fun
PY_F2ARGmets
(
lctn: PY$loctn,
s2es: PY$s2explst): PY$f2arg = $extnam()
//
val (  ) =
(
  printsln("f2arg_pytrcpy: farg = ", farg))
val (  ) =
printsln("f2arg_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[f2arg_pytrcpy(farg)]
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
//
(* ****** ****** *)
//
|D2Clocal0
(head, body) =>
(
PY_D2Clocal0
(loc0, head, body))
where
{
val head =
(
  d2eclist_pytrcpy(head))
val body =
(
  d2eclist_pytrcpy(body)) }
//
(* ****** ****** *)
(* ****** ****** *)
//
|D2Cvaldclst
(tknd, d2vs) =>
(
PY_D2Cvaldclst
(loc0, tknd, d2vs))
where
{
val tknd =
(
  token_pytrcpy(tknd))
val d2vs =
(
  d2valdclist_pytrcpy(d2vs))
}
//
|D2Cvardclst
(tknd, d2vs) =>
(
PY_D2Cvardclst
(loc0, tknd, d2vs))
where
{
val tknd =
(
  token_pytrcpy(tknd))
val d2vs =
(
  d2vardclist_pytrcpy(d2vs))
}
//
(* ****** ****** *)
//
|D2Cfundclst
(tknd
,tqas
,d2cs, d2fs) =>
(
PY_D2Cfundclst
(loc0, tknd
,tqas, d2cs, d2fs))
where
{
val tknd =
(
  token_pytrcpy(tknd))
val d2cs =
(
  d2cstlst_pytrcpy(d2cs))
val d2fs =
(
  d2fundclist_pytrcpy(d2fs))
}
//
(* ****** ****** *)
(* ****** ****** *)
//
|
D2Cimplmnt0
(tknd
,sqas, tqas
,dimp
,tias, f2as
,sres, d2e1) =>
(
PY_D2Cimplmnt0
(loc0
,tknd
,sqas, tqas, dimp
,tias, f2as, sres, d2e1))
where
{
//
val tknd =
(
  token_pytrcpy(tknd))
//
val f2as =
(
  f2arglst_pytrcpy(f2as))
//
val sres = s2res_pytrcpy(sres)
val d2e1 = d2exp_pytrcpy(d2e1)
}
//
(* ****** ****** *)
(* ****** ****** *)
|_(*otherwise*) => PY_D2Ca3src(loc0, d2cl)
(* ****** ****** *)
(* ****** ****** *)
//
) where
{
//
val loc0 =
loctn_pytrcpy(d2cl.lctn((*0*)))
//
val (  ) =
(
  printsln("d2ecl_pytrcpy: d2cl = ", d2cl))
//
val (  ) =
printsln("d2ecl_pytrcpy: loc0 = ", PY_repr(loc0))
//
}(*where*)//end-of-[d2ecl_pytrcpy(d2cl)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2conlst_pytrcpy
(   d2cs   ) =
(
list_map$f1un_PY$list(d2cs, d2con_pytrcpy))
//
#implfun
d2cstlst_pytrcpy
(   d2cs   ) =
(
list_map$f1un_PY$list(d2cs, d2cst_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d2varlst_pytrcpy
(   d2vs   ) =
(
list_map$f1un_PY$list(d2vs, d2var_pytrcpy))
//
#implfun
d2varopt_pytrcpy
(   dopt   ) =
(
optn_map$f1un_PY$optn(dopt, d2var_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d2ptmlst_pytrcpy
(   dpis   ) =
(
list_map$f1un_PY$list(dpis, d2ptm_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d2patlst_pytrcpy
(   d2ps   ) =
(
list_map$f1un_PY$list(d2ps, d2pat_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d2explst_pytrcpy
(   d2es   ) =
(
list_map$f1un_PY$list(d2es, d2exp_pytrcpy))
//
#implfun
d2expopt_pytrcpy
(   dopt   ) =
(
optn_map$f1un_PY$optn(dopt, d2exp_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d2gualst_pytrcpy
(   d2gs   ) =
(
list_map$f1un_PY$list(d2gs, d2gua_pytrcpy))
//
#implfun
d2clslst_pytrcpy
(   dcls   ) =
(
list_map$f1un_PY$list(dcls, d2cls_pytrcpy))
//
(* ****** ****** *)
//
#implfun
f2arglst_pytrcpy
(   f2as   ) =
(
list_map$f1un_PY$list(f2as, f2arg_pytrcpy))
//
(* ****** ****** *)
//
#implfun
d2eclist_pytrcpy
(   dcls   ) =
(
list_map$f1un_PY$list(dcls, d2ecl_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
teqd2exp_pytrcpy
(   tdxp   ) =
(
case+ tdxp of
|
TEQD2EXPnone
( (*void*) ) =>
PY_TEQD2EXPnone((*void*))
|
TEQD2EXPsome
(teq0, dexp) =>
let
val teq0 =
token_pytrcpy(teq0)
val dexp =
d2exp_pytrcpy(dexp)
in//let
  PY_TEQD2EXPsome(teq0, dexp) end
) where
{
#extern
fun
PY_TEQD2EXPnone
(   (*nil*)   ): PY$teqd2exp = $extnam()
#extern
fun
PY_TEQD2EXPsome
(
teq0: PY$token,
dexp: PY$d2exp): PY$teqd2exp = $extnam()
}(*where*)//end-of-[teqd2exp_pytrcpy(tdxp)]
//
(* ****** ****** *)
//
#implfun
wths2exp_pytrcpy
(   wsxp   ) =
(
case+ wsxp of
|
WTHS2EXPnone
( (*void*) ) =>
PY_WTHS2EXPnone((*void*))
|
WTHS2EXPsome
(twth, sexp) =>
let
val twth =
token_pytrcpy(twth)
val sexp =
s2exp_pytrcpy(sexp)
in//let
  PY_WTHS2EXPsome(twth, sexp) end
) where
{
#extern
fun
PY_WTHS2EXPnone
(   (*nil*)   ): PY$wths2exp = $extnam()
#extern
fun
PY_WTHS2EXPsome
(
teq0: PY$token,
sexp: PY$s2exp): PY$wths2exp = $extnam()
}(*where*)//end-of-[wths2exp_pytrcpy(wsxp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2valdcl_pytrcpy
(   dval   ) =
let
//
val loc0 =
loctn_pytrcpy
(
d2valdcl_get_lctn(dval))
//
val dpat =
d2pat_pytrcpy
(
d2valdcl_get_dpat(dval))
//
val tdxp =
teqd2exp_pytrcpy
(
d2valdcl_get_tdxp(dval))
//
val wsxp =
wths2exp_pytrcpy
(
d2valdcl_get_wsxp(dval))
//
in//let
(
PY_d2valdcl_make_args(
  loc0, dpat, tdxp(*dopt*), wsxp(*wtyp*)))
end(*let*)//end-of-[d2valdcl_pytrcpy(dval)]
//
(* ****** ****** *)
//
#implfun
d2vardcl_pytrcpy
(   dvar   ) =
let
//
val loc0 =
loctn_pytrcpy
(
d2vardcl_get_lctn(dvar))
//
val dpid =
d2var_pytrcpy
(
d2vardcl_get_dpid(dvar))
//
val vpid =
d2varopt_pytrcpy
(
d2vardcl_get_vpid(dvar))
//
val sres =
s2expopt_pytrcpy
(
d2vardcl_get_sres(dvar))
//
val dini =
teqd2exp_pytrcpy
(
d2vardcl_get_dini(dvar))
//
in//let
(
PY_d2vardcl_make_args(loc0,
  dpid, vpid(*view*), sres, dini(*init*)))
end(*let*)//end-of-[d2vardcl_pytrcpy(dvar)]
//
(* ****** ****** *)
//
#implfun
d2fundcl_pytrcpy
(   dfun   ) =
let
//
val loc0 =
loctn_pytrcpy
(
d2fundcl_get_lctn(dfun))
//
val dpid =
d2var_pytrcpy
(
d2fundcl_get_dpid(dfun))
//
val f2as =
f2arglst_pytrcpy
(
d2fundcl_get_farg(dfun))
//
val sres =
s2res_pytrcpy
(
d2fundcl_get_sres(dfun))
//
val tdxp =
teqd2exp_pytrcpy
(
d2fundcl_get_tdxp(dfun))
val wsxp =
wths2exp_pytrcpy
(d2fundcl_get_wsxp(dfun))
//
in//let
(
PY_d2fundcl_make_args(loc0,
  dpid(*fid*),f2as(*arg*),sres,tdxp,wsxp))
end(*let*)//end-of-[d2fundcl_pytrcpy(dfun)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2valdclist_pytrcpy
(   d2vs   ) =
(
list_map$f1un_PY$list(d2vs, d2valdcl_pytrcpy))
//
#implfun
d2vardclist_pytrcpy
(   d2vs   ) =
(
list_map$f1un_PY$list(d2vs, d2vardcl_pytrcpy))
//
#implfun
d2fundclist_pytrcpy
(   d2fs   ) =
(
list_map$f1un_PY$list(d2fs, d2fundcl_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2eclistopt_pytrcpy
(   dopt   ) =
(
optn_map$f1un_PY$optn(dopt, d2eclist_pytrcpy))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d2parsed_pytrcpy
(   dpar   ) =
let
//
val stadyn =
d2parsed_get_stadyn(dpar)
//
val nerror =
d2parsed_get_nerror(dpar)
//
val source =
lcsrc_pytrcpy
(
d2parsed_get_source(dpar))
//
val t1penv =
(
d2parsed_get_t1penv(dpar))
val t2penv =
(
d2parsed_get_t2penv(dpar))
//
val parsed =
(
d2parsed_get_parsed(dpar))
val parsed =
(
d2eclistopt_pytrcpy(parsed))
//
in//let
//
PY_d2parsed
( stadyn, nerror
, source, t1penv, t2penv, parsed)
//
end where
{
//
#extern
fun
PY_d2parsed
( stadyn: sint
, nerror: sint
, source: PY$lcsrc
, t1penv: d1topenv
, t2penv: d2topenv
, parsed: PY$d2eclistopt): PY$d2parsed = $extnam()
//
}(*where*)//end-of-[PYDEV_d2parsed_pytrcpy(dpar)]
//
#extern
fun
PYDEV_d2parsed_pytrcpy
(dpar: d2parsed): PY$d2parsed = $extnam()
#implfun
PYDEV_d2parsed_pytrcpy(dpar) = d2parsed_pytrcpy(dpar)
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3-PYDEV/srcgen1/DATS/dynexp2_pytrcpy.dats] *)
(***********************************************************************)
