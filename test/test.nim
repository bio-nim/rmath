import random
import rmath

randomize()
set_seed(random(2500),random(2500))

var x=unif_rand()
echo x

var z=norm_rand()
echo z

var y=pchisq(3.84,1,true,false)
echo y

var a=dnorm(0.0)
echo a
