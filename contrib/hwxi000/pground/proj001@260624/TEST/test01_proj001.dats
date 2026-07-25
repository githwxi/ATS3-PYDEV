(* ****** ****** *)
(* ****** ****** *)
(*
HX-2026-06-19:
For testing a3pydev!
Fri Jun 19 09:40:50 AM EDT 2026
*)
(* ****** ****** *)
(* ****** ****** *)
//
#include
"prelude\
/HATS/prelude_dats.hats"
//
(* ****** ****** *)
//
#staload "./../\
DATS/proj001_tmplib.dats"
//
(* ****** ****** *)
(* ****** ****** *)
//
val N1 = 5
val N2 = (N1+N1)
and N3 = (N1*N1)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
fact1
(x: sint): sint =
if (x > 0)
then(x*fact1(x-1))else(1)
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
fact2
(x: sint): sint =
(
case+ x <= 0 of
| true => 1
| false => x * fact2(x-1))
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
fact3
(x: sint): sint =
(
case+ x of
|
_ when(x>0) =>
  (x*fact3(x-1)) | _ => (1))
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
fact4
(x: sint): sint =
(
loop(x, r); r) where
{
var x: sint = x
var r: sint = 1
fun
loop(x: &sint, r: &sint): void =
(
if (x > 0) then
(r := x * r; x := x - 1; loop(x, r)))
}
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [
 * ATS3-PYDEV/contrib/hwxi000/pground/proj001@260624/TEST/test01_proj001.dats] *)
(***********************************************************************)
