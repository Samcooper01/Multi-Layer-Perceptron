** Generated for: hspiceD
** Generated on: Dec  1 12:04:34 2024
** Design library name: 555_project
** Design cell name: ADDER_3bit
** Design view name: schematic

** Library name: 555_project
** Cell name: NAND2_rvt
** View name: schematic
.subckt NAND2_rvt a b vdd vss y
mn1 y a net2 vss nmos_rvt w=108e-9 l=20e-9 nfin=4
mn0 net2 b vss vss nmos_rvt w=108e-9 l=20e-9 nfin=4
mp4 y b vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp3 y a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
.ends NAND2_rvt
** End of subcircuit definition.

** Library name: 555_project
** Cell name: INV_rvt
** View name: schematic
.subckt INV_rvt in out vdd vss
mn0 out in vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mp1 out in vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
.ends INV_rvt
** End of subcircuit definition.

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
** Cell name: ADDER_3bit
** View name: schematic
xi21 net23 net24 vdd vss y<2> NAND2_rvt
xi20 net22 net13 vdd vss net24 NAND2_rvt
xi19 net20 net22 vdd vss net23 NAND2_rvt
xi18 net20 net13 vdd vss net22 NAND2_rvt
xi17 net17 net19 vdd vss net20 NAND2_rvt
xi16 net14 b<2> vdd vss net19 NAND2_rvt
xi15 b<2> net14 vdd vss net17 NAND2_rvt
xi14 a<2> b<2> vdd vss net14 NAND2_rvt
xi12 net27 net15 vdd vss net13 NAND2_rvt
xi11 net30 net33 vdd vss y<1> NAND2_rvt
xi10 net27 net26 vdd vss net33 NAND2_rvt
xi9 net3 net27 vdd vss net30 NAND2_rvt
xi8 net3 net26 vdd vss net27 NAND2_rvt
xi7 net18 net21 vdd vss net3 NAND2_rvt
xi6 net15 b<1> vdd vss net21 NAND2_rvt
xi5 a<1> net15 vdd vss net18 NAND2_rvt
xi4 a<1> b<1> vdd vss net15 NAND2_rvt
xi3 net7 net10 vdd vss y<0> NAND2_rvt
xi2 net4 b<0> vdd vss net10 NAND2_rvt
xi1 a<0> net4 vdd vss net7 NAND2_rvt
xi0 a<0> b<0> vdd vss net4 NAND2_rvt
xi13 net4 net26 vdd vss INV_rvt
xi24 net22 net14 vdd vss y<3> AND2_rvt
