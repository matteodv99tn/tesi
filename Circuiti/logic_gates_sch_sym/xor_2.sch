v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 140 -60 160 -60 { lab=#net1}
N 160 -60 160 -20 { lab=#net1}
N 160 -20 200 -20 { lab=#net1}
N 140 60 160 60 { lab=#net2}
N 160 20 160 60 { lab=#net2}
N 160 20 200 20 { lab=#net2}
N -160 -80 0 -80 { lab=A}
N -100 40 0 40 { lab=A}
N -100 -80 -100 40 { lab=A}
N -160 -40 0 -40 { lab=B}
N -40 -40 -40 80 { lab=B}
N -40 80 -0 80 { lab=B}
N 340 -0 380 0 { lab=xxx}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nand_2.sym} 60 -60 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} 60 60 0 0 {name=x2}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 260 0 0 0 {name=x3}
C {ipin.sym} -160 -80 0 0 {name=p1 lab=A}
C {ipin.sym} -160 -40 0 0 {name=p2 lab=B}
C {opin.sym} 380 0 0 0 {name=p3 lab=Y}
