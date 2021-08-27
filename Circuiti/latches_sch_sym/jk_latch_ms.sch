v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -20 -40 0 -40 { lab=#net1}
N -20 -40 -20 -20 { lab=#net1}
N -20 -20 160 20 { lab=#net1}
N 160 20 160 60 { lab=#net1}
N -20 40 0 40 { lab=#net2}
N -20 20 -20 40 { lab=#net2}
N -20 20 160 -20 { lab=#net2}
N 160 -60 160 -20 { lab=#net2}
N 140 -60 180 -60 { lab=#net2}
N 140 60 180 60 { lab=#net1}
N 380 -40 400 -40 { lab=notQ}
N 380 -40 380 -20 { lab=notQ}
N 380 -20 560 20 { lab=notQ}
N 560 20 560 60 { lab=notQ}
N 380 40 400 40 { lab=Q}
N 380 20 380 40 { lab=Q}
N 380 20 560 -20 { lab=Q}
N 560 -60 560 -20 { lab=Q}
N 540 -60 580 -60 { lab=Q}
N 180 -80 180 -60 { lab=#net2}
N -60 80 0 80 { lab=#net3}
N -60 -80 0 -80 { lab=#net4}
N -220 40 -200 40 { lab=#net5}
N -220 -40 -220 40 { lab=#net5}
N -220 -40 -200 -40 { lab=#net5}
N -400 0 -360 0 { lab=#net6}
N -560 0 -540 0 { lab=CLK}
N -560 -40 -560 0 { lab=CLK}
N -560 -40 -540 -40 { lab=CLK}
N -540 -60 -540 -40 { lab=CLK}
N -540 -60 -380 -60 { lab=CLK}
N -380 -60 -380 -40 { lab=CLK}
N -380 -40 -360 -40 { lab=CLK}
N -600 0 -560 0 { lab=CLK}
N -600 -80 -200 -80 { lab=J}
N -600 80 -200 80 { lab=K}
N -220 -120 -200 -120 { lab=notQ}
N -220 -140 -220 -120 { lab=notQ}
N -220 -140 400 -140 { lab=notQ}
N -220 120 -200 120 { lab=Q}
N -220 120 -220 140 { lab=Q}
N 580 -60 620 -60 { lab=Q}
N 600 -140 600 60 { lab=notQ}
N 400 -140 420 -140 { lab=notQ}
N 580 -60 580 140 { lab=Q}
N 540 60 560 60 { lab=notQ}
N 560 60 620 60 { lab=notQ}
N 180 -100 180 -80 { lab=#net2}
N 180 -100 220 -100 { lab=#net2}
N 180 60 180 100 { lab=#net1}
N 180 100 220 100 { lab=#net1}
N -220 -20 -40 -20 { lab=#net5}
N -40 -20 -40 160 { lab=#net5}
N -40 160 0 160 { lab=#net5}
N 220 -60 220 60 { lab=#net7}
N 140 160 200 160 { lab=#net7}
N 200 -0 200 160 { lab=#net7}
N 200 -0 220 -0 { lab=#net7}
N 360 -80 400 -80 { lab=#net8}
N 360 80 400 80 { lab=#net9}
N 420 -140 600 -140 { lab=notQ}
N -40 220 580 220 { lab=Q}
N 580 140 580 220 { lab=Q}
N -220 140 -220 220 { lab=Q}
N -220 220 -40 220 { lab=Q}
C {ipin.sym} -600 80 0 0 {name=p2 lab=K}
C {ipin.sym} -600 0 0 0 {name=p3 lab=CLK}
C {opin.sym} 620 -60 0 0 {name=p4 lab=Q}
C {opin.sym} 620 60 0 0 {name=p5 lab=notQ}
C {ipin.sym} -600 -80 0 0 {name=p6 lab=J}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} -480 0 0 0 {name=x3}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -300 -20 0 0 {name=x5}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_3.sym} -140 80 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 60 -60 0 0 {name=x2}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 60 60 0 0 {name=x4}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 460 -60 0 0 {name=x6}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 460 60 0 0 {name=x7}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_3.sym} -140 -80 0 0 {name=x8}
C {capa.sym} -380 30 0 0 {name=C1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -380 60 0 0 {name=l1 lab=GND}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 280 -80 0 0 {name=x9}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 280 80 0 0 {name=x10}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} 60 160 0 0 {name=x11}
