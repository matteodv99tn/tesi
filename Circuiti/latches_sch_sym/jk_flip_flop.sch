v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 40 180 40 { lab=Q}
N 160 20 160 40 { lab=Q}
N 160 20 340 -20 { lab=Q}
N 340 -60 340 -20 { lab=Q}
N 160 -40 180 -40 { lab=notQ}
N 160 -40 160 -20 { lab=notQ}
N 160 -20 340 20 { lab=notQ}
N 340 20 340 60 { lab=notQ}
N 160 80 180 80 { lab=#net1}
N 160 -80 180 -80 { lab=#net2}
N 0 40 20 40 { lab=#net3}
N 0 -40 0 40 { lab=#net3}
N 0 -40 20 -40 { lab=#net3}
N -180 20 -140 20 { lab=#net4}
N -180 -20 -140 -20 { lab=CLK}
N -180 -40 -180 -20 { lab=CLK}
N -320 -40 -180 -40 { lab=CLK}
N -320 -40 -320 -20 { lab=CLK}
N -360 -20 -320 -20 { lab=CLK}
N -360 -20 -360 20 { lab=CLK}
N -360 20 -320 20 { lab=CLK}
N -400 0 -360 0 { lab=CLK}
N -400 -80 20 -80 { lab=K}
N -100 80 20 80 { lab=J}
N -100 80 -100 120 { lab=J}
N -200 120 -100 120 { lab=J}
N -200 80 -200 120 { lab=J}
N -400 80 -200 80 { lab=J}
N 320 60 400 60 { lab=notQ}
N 320 -60 400 -60 { lab=Q}
N 0 120 20 120 { lab=notQ}
N 0 120 0 140 { lab=notQ}
N 0 140 360 140 { lab=notQ}
N 360 60 360 140 { lab=notQ}
N 0 -120 20 -120 { lab=Q}
N 0 -140 0 -120 { lab=Q}
N 0 -140 360 -140 { lab=Q}
N 360 -140 360 -60 { lab=Q}
C {ipin.sym} -400 -80 0 0 {name=p1 lab=K}
C {ipin.sym} -400 80 0 0 {name=p2 lab=J}
C {opin.sym} 400 -60 0 0 {name=p3 lab=Q}
C {opin.sym} 400 60 0 0 {name=p4 lab=notQ}
C {ipin.sym} -400 0 0 0 {name=p5 lab=CLK}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 240 -60 0 0 {name=x5}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 240 60 0 0 {name=x6}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_3.sym} 80 -80 0 0 {name=x7}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_3.sym} 80 80 0 0 {name=x8}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} -260 20 0 0 {name=x9}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -80 0 0 0 {name=x10}
C {capa.sym} -160 50 0 0 {name=C1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -160 80 0 0 {name=l1 lab=GND}
