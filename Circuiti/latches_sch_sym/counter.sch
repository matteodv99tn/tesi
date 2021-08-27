v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 140 40 240 { lab=#net1}
N 20 180 20 200 { lab=B1}
N 340 180 340 200 { lab=B2}
N 660 180 660 200 { lab=B3}
N 40 240 230 240 { lab=#net1}
N 230 220 230 240 { lab=#net1}
N 20 140 40 140 { lab=#net1}
N 360 140 360 240 { lab=#net2}
N 360 240 550 240 { lab=#net2}
N 550 220 550 240 { lab=#net2}
N 340 140 360 140 { lab=#net2}
N 680 140 680 240 { lab=#net3}
N 680 240 870 240 { lab=#net3}
N 870 220 870 240 { lab=#net3}
N 660 140 680 140 { lab=#net3}
N -160 140 -140 140 { lab=Vdd}
N -160 60 -160 140 { lab=Vdd}
N -180 180 -140 180 { lab=Vdd}
N -180 60 -180 180 { lab=Vdd}
N 160 140 180 140 { lab=Vdd}
N 160 60 160 140 { lab=Vdd}
N 140 180 180 180 { lab=Vdd}
N 140 60 140 180 { lab=Vdd}
N 480 140 500 140 { lab=Vdd}
N 480 60 480 140 { lab=Vdd}
N 460 180 500 180 { lab=Vdd}
N 460 60 460 180 { lab=Vdd}
N 800 140 820 140 { lab=Vdd}
N 800 60 800 140 { lab=Vdd}
N 780 180 820 180 { lab=Vdd}
N 780 60 780 180 { lab=Vdd}
N -120 240 -90 240 { lab=CLK}
N -90 220 -90 240 { lab=CLK}
N 980 180 980 200 { lab=B3}
N -200 60 1000 60 {}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} -60 160 0 0 {name=x5}
C {vdd.sym} 280 60 0 0 {name=l3 lab=Vdd}
C {ipin.sym} -120 240 0 0 {name=p1 lab=CLK}
C {opin.sym} 20 200 1 0 {name=p2 lab=B1}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} 260 160 0 0 {name=x7}
C {opin.sym} 340 200 1 0 {name=p7 lab=B2}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} 580 160 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} 900 160 0 0 {name=x3}
C {opin.sym} 660 200 1 0 {name=p3 lab=B3}
C {opin.sym} 980 200 1 0 {name=p4 lab=B4}
