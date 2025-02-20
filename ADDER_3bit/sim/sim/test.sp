* Global nodes
.GLOBAL vss vdd

* Temperature
.TEMP 25.0

* Simulation options
.OPTION
+ 	ARTIST=2
+ 	INGOLD=2
+ 	PARHIER=LOCAL
+ 	PSF=2
+ 	HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1

* Include necessary model files
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"
.INCLUDE "ADDER_3bit.sp"

* Power supply
v1  vss  0 0v
v2  vdd  0 0.9v

* Define multibit input using simpler node names (IN2, IN1, IN0)
v3 a<2>  0 pwl(0ns 0v    5ns 0v    5.025ns 0v      10ns 0v     10.025ns 0.9v   15ns 0.9v   15.025ns 0.9v  20ns 0.9v)
v4 a<1>  0 pwl(0ns 0v    5ns 0v    5.025ns 0v      10ns 0v     10.025ns 0v     15ns 0v     15.025ns 0v     20ns 0v)
v5 a<0>  0 pwl(0ns 0v    5ns 0v    5.025ns 0v      10ns 0v     10.025ns 0v     15ns 0v     15.025ns 0v     20ns 0v)

v6 b<2> 0 pwl(0ns 0v    5ns 0v    5.025ns 0v      10ns 0v     10.025ns 0v     15ns 0v     15.025ns 0v     20ns 0v)
v7 b<1> 0 pwl(0ns 0v    5ns 0v    5.025ns 0v      10ns 0v     10.025ns 0v     15ns 0v     15.025ns 0v     20ns 0v)
v8 b<0> 0 pwl(0ns 0v    5ns 0v    5.025ns 0v      10ns 0v     10.025ns 0v     15ns 0v     15.025ns 0v     20ns 0v)

* Transient analysis
.OP
.TRAN STEP=1p STOP=20n

* End the testbench
.END
