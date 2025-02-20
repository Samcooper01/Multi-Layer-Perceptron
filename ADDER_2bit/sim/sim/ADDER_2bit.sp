** Generated for: hspiceD
** Generated on: Dec  1 16:05:33 2024
** Design library name: 555_project
** Design cell name: ADDER_2bit
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
** Cell name: ADDER_2bit
** View name: schematic
xi12 net27 net15 vdd vss y<2> NAND2_rvt
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
