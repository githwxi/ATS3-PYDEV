(* ****** ****** *)
(* ****** ****** *)
(*
HX-2026-07-25:
Sat Jul 25 05:09:51 PM EDT 2026
*)
(* ****** ****** *)
(* ****** ****** *)
//
#include
"prelude\
/HATS/prelude_dats.hats"
//
#include
"prelude\
/HATS/prelude_JS_dats.hats"
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
list_vt_inc1by
(xs: !list_vt(sint)): void =
(
case+ xs of
|
list_vt_nil() => ()
|
list_vt_cons(!x1, xs) =>
(x1 := x1 + 1; list_vt_inc1by(xs))
)
//
(* ****** ****** *)
(* ****** ****** *)
//
val xs =
list_vt_3val(1, 2, 3)
val () =
let
val ys = list_vt2t(xs)
in
  prints("xs = ", ys, "\n") end
//
val () =
(
  list_vt_inc1by(xs))
val () =
let
val ys = list_vt2t(xs)
in
  prints("xs = ", ys, "\n") end
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun fibo1: nint -> nint
//
#implfun
fibo1(n) =
(
if // if
(n <= 1)
then n else fibo1(n-2)+fibo1(n-1))
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [
 * ATS3-PYDEV/contrib/hwxi000/pground/proj003@260725/TEST/test02_proj001.dats] *)
(***********************************************************************)
