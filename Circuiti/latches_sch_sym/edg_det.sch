v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1000 420 1000 440 { lab=#net1}
N 1000 420 1020 420 { lab=#net1}
N 1000 380 1020 380 { lab=CLK}
N 1000 360 1000 380 { lab=CLK}
N 780 360 780 440 { lab=CLK}
N 960 440 1000 440 { lab=#net1}
N 980 440 980 480 { lab=#net1}
N 1160 400 1190 400 { lab=OUT}
N 740 400 780 400 { lab=CLK}
N 780 440 820 440 { lab=CLK}
N 780 360 1000 360 { lab=CLK}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} 880 440 0 0 {name=x3}
C {capa.sym} 980 510 0 0 {name=C3
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 980 540 0 0 {name=l8 lab=GND}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1080 400 0 0 {name=x1}
C {ipin.sym} 740 400 0 0 {name=p1 lab=CLK}
C {opin.sym} 1190 400 0 0 {name=p2 lab=OUT}
