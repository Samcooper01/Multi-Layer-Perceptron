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
.INCLUDE "2T1MUX3bit.sp"
*.INCLUDE "INV_rvt.sp"

* Power supply
v1  vss  0 0v
v2  vdd  0 0.9v

* Define multibit input using simpler node names (IN2, IN1, IN0)
v3 in<3>  0 pwl(0ns 0v  5ns 0v  5.025ns 0v      10ns 0v     10.025ns 0.9v   15ns 0.9v   15.025ns 0.9v  20ns 0.9v)
v4 in<2>  0 pwl(0ns 0.9v  5ns 0.9v  5.025ns 0v      10ns 0v     10.025ns 0.9v   15ns 0.9v   15.025ns 0.9v  20ns 0.9v)
v5 in<1>  0 pwl(0ns 0.9v  5ns 0.9v  5.025ns 0v      10ns 0v     10.025ns 0.9v   15ns 0.9v   15.025ns 0.9v  20ns 0.9v)
v6 in<0>  0 pwl(0ns 0.9v  5ns 0.9v  5.025ns 0v      10ns 0v     10.025ns 0v     15ns 0v     15.025ns 0.9v  20ns 0.9v)

* Instantiate DUT - 3-bit multiplexer
*X2T1MUX3BIT vss vdd IN2 IN1 IN0 OUT2 OUT1 OUT0 2T1MUX3bit

* Output load (optional small capacitance for output node OUT<2>, OUT<1>, OUT<0>)
* COUT1 out<2> 0 4f
* COUT2 out<1> 0 4f
* COUT3 out<0> 0 4f

* Transient analysis
.OP
.TRAN STEP=1p STOP=20n

* End the testbench
.END
