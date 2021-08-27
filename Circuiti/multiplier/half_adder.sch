v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -140 -20 0 -20 { lab=A}
N -140 20 0 20 { lab=B}
N -40 80 0 80 { lab=A}
N -80 120 0 120 { lab=B}
N 140 0 180 0 { lab=R}
N 140 100 180 100 { lab=C}
N -40 -20 -40 80 { lab=A}
N -80 20 -80 120 { lab=B}
C {ipin.sym} -140 -20 0 0 {name=p1 lab=A}
C {ipin.sym} -140 20 0 0 {name=p2 lab=B}
C {opin.sym} 180 0 0 0 {name=p3 lab=R}
C {opin.sym} 180 100 0 0 {name=p4 lab=Cout}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/xor_2.sym} 60 0 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 60 100 0 0 {name=x2}
