include
  private/rmathlib

proc set_seed*(a2: int; a3: int) =
  set_seed(a2.cuint,a3.cuint)

proc unif_rand*(): float64 =
  result = Rf_unif_rand().float64

proc norm_rand*(): float64 =
  result = Rf_norm_rand().float64

proc pchisq*(q: float64; df: int; lower_tail: bool; log_p: bool): float64 =
  result = pchisq(q,df.cdouble,lower_tail.cint,log_p.cint).float64
