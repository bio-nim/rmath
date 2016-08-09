include
  private/rmathlib

proc set_seed*(a2: int; a3: int) =
  set_seed(a2.cuint,a3.cuint)

proc norm_rand*(): float64 =
  result = Rf_norm_rand().float64

proc unif_rand*(): float64 =
  result = Rf_unif_rand().float64

proc exp_rand*(): float64 =
  result = Rf_exp_rand().float64

proc dnorm*(x: float64; mean: float64 = 0.0; sd: float64 = 1.0; log: bool = false): float64 =
  ## Density function for the normal distribution with mean equal to mean and standard deviation equal to sd
  result = dnorm(x.cdouble, mean.cdouble, sd.cdouble, log.cint).float64

proc pnorm*(q: float64; mean: float64 = 0.0; sd: float64 = 1.0; lower_tail: bool = true;log_p: bool = false): float64 =
  ## Distribution function for the normal distribution with mean equal to mean and standard deviation equal to sd
  result = pnorm(q.cdouble, mean.cdouble, sd.cdouble, lower_tail.cint, log_p.cint).float64

proc qnorm*(p: float64, mean: float64 = 0.0; sd: float64 = 0.0; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the normal distribution with mean equal to mean and standard deviation equal to sd
  result = qnorm(p.cdouble,mean.cdouble,sd.cdouble,lower_tail.cint,log_p.cint).float64

proc rnorm*(mean: float64 = 0.0; sd: float64 = 1.0): float64 =
  ## Random number generation for the normal distribution with mean equal to mean and standard deviation equal to sd
  result = Rf_rnorm(mean.cdouble,sd.cdouble).float64

proc pchisq*(q: float64; df: int; lower_tail: bool; log_p: bool): float64 =
  result = pchisq(q,df.cdouble,lower_tail.cint,log_p.cint).float64
