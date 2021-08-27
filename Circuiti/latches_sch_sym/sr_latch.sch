v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 60 80 60 { lab=Q}
N 40 40 40 60 { lab=Q}
N 40 -60 80 -60 { lab=xxx}
N 40 -60 40 -40 { lab=xxx}
N 260 -80 260 -40 { lab=Q}
N 260 40 260 80 { lab=xxx}
N 40 -40 260 40 { lab=xxx}
N 40 40 260 -40 { lab=Q}
N 220 80 300 80 { lab=xxx}
N 220 -80 300 -80 { lab=Q}
N 0 100 80 100 { lab=S}
N -0 -100 80 -100 { lab=R}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 140 -80 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 140 80 0 0 {name=x2}
C {ipin.sym} 0 -100 0 0 {name=p1 lab=R}
C {ipin.sym} 0 100 0 0 {name=p2 lab=S}
C {opin.sym} 300 -80 0 0 {name=p3 lab=Q}
C {opin.sym} 300 80 0 0 {name=p4 lab=notQ}
