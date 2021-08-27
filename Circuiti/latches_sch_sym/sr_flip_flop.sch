v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 60 80 60 { lab=Q}
N 40 40 40 60 { lab=Q}
N 40 -60 80 -60 { lab=notQ}
N 40 -60 40 -40 { lab=notQ}
N 260 -80 260 -40 { lab=Q}
N 260 40 260 80 { lab=notQ}
N 40 -40 260 40 { lab=notQ}
N 40 40 260 -40 { lab=Q}
N 220 80 300 80 { lab=notQ}
N 220 -80 300 -80 { lab=Q}
N 40 100 80 100 { lab=#net1}
N 40 -100 80 -100 { lab=#net2}
N -120 80 -100 80 { lab=#net3}
N -120 -80 -120 80 { lab=#net3}
N -120 -80 -100 -80 { lab=#net3}
N -160 120 -100 120 { lab=S}
N -160 -120 -100 -120 { lab=R}
N -340 20 -300 20 { lab=#net4}
N -520 20 -480 20 { lab=CLK}
N -520 0 -520 20 { lab=CLK}
N -560 0 -520 0 { lab=CLK}
N -300 -40 -300 -20 { lab=CLK}
N -520 -40 -300 -40 { lab=CLK}
N -520 -40 -520 0 { lab=CLK}
N -520 120 -160 120 { lab=S}
N -520 -120 -160 -120 { lab=R}
N -160 0 -120 0 { lab=#net3}
N -560 -120 -520 -120 { lab=R}
N -560 120 -520 120 { lab=S}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 140 -80 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 140 80 0 0 {name=x2}
C {ipin.sym} -560 -120 0 0 {name=p1 lab=R}
C {ipin.sym} -560 120 0 0 {name=p2 lab=S}
C {opin.sym} 300 -80 0 0 {name=p3 lab=Q}
C {opin.sym} 300 80 0 0 {name=p4 lab=notQ}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -40 100 0 0 {name=x3}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -40 -100 0 0 {name=x4}
C {ipin.sym} -560 0 0 0 {name=p5 lab=CLK}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} -420 20 0 0 {name=x5}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -240 0 0 0 {name=x6}
C {capa.sym} -320 50 0 0 {name=C1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -320 80 0 0 {name=l1 lab=GND}
