**Test
.GLOBAL vss! vdd!
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"
.INCLUDE "FA_mirror_schematic.sp"

v1 vdd! 0 0.9v
v2 vss! 0 0v
*                                   Test 1              Test 2                  Test 3                  Test 4                   Test 5                     Test 6                    Test 7                    Test 8              
v3 a    0 pwl   0ns 0v              1ns 0v  2.9ns 0v    3ns 0v  5.9ns 0v        6ns 0v  8.9ns 0v        9ns 0v  11.9ns 0v        12ns 0.9v  14.9ns 0.9v     15ns 0.9v  17.9ns 0.9v    18ns 0.9v  20.9ns 0.9v    21ns 0.9v  23.9ns 0.9v    
v4 b    0 pwl   0ns 0v              1ns 0v  2.9ns 0v    3ns 0v  5.9ns 0v        6ns 0.9v  8.9ns 0.9v    9ns 0.9v  11.9ns 0.9v    12ns 0v  14.9ns 0v         15ns 0v  17.9ns 0v        18ns 0.9v  20.9ns 0.9v    21ns 0.9v  23.9ns 0.9v   
v5 cin   0 pwl   0ns 0v             1ns 0v  2.9ns 0v    3ns 0.9v  5.9ns 0.9v    6ns 0v  8.9ns 0v        9ns 0.9v  11.9ns 0.9v    12ns 0v  14.9ns 0v         15ns 0.9v  17.9ns 0.9v    18ns 0v  20.9ns 0v        21ns 0.9v  23.9ns 0.9v    

       
.OP
.TRAN STEP=25p STOP=25n
.end