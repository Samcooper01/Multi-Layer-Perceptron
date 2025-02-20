** Generated for: hspiceD
** Generated on: Dec  1 10:58:16 2024
** Design library name: 555_project
** Design cell name: 2T1MUX3bit
** Design view name: schematic

** Library name: 555_project
** Cell name: AND2_rvt
** View name: schematic
.subckt AND2_rvt a b vdd vss y
mn6 y net1 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn1 net1 a net2 vss nmos_rvt w=108e-9 l=20e-9 nfin=4
mn0 net2 b vss vss nmos_rvt w=108e-9 l=20e-9 nfin=4
mp5 y net1 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp4 net1 b vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp3 net1 a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
.ends AND2_rvt
** End of subcircuit definition.

** Library name: 555_project
** Cell name: 2T1MUX3bit
** View name: schematic
xi9 in<2> in<3> vdd vss out<2> AND2_rvt
xi7 in<0> in<3> vdd vss out<0> AND2_rvt
xi8 in<1> in<3> vdd vss out<1> AND2_rvt
.END
