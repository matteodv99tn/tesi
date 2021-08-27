v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -220 180 -200 180 { lab=CLK}
N -360 100 -320 100 { lab=RST}
N -240 -160 -240 -120 { lab=VDD}
N -240 -160 -220 -160 { lab=VDD}
N -0 0 40 0 { lab=#net1}
N 20 -40 40 -40 { lab=VDD}
N 60 200 80 200 { lab=#net2}
N 80 170 80 200 { lab=#net2}
N -220 -160 990 -160 { lab=VDD}
N -80 -100 1030 -100 { lab=#net1}
N 420 0 460 0 { lab=VDD}
N 420 -160 420 0 { lab=VDD}
N 440 -40 460 -40 { lab=#net1}
N 440 -100 440 -40 { lab=#net1}
N 480 200 500 200 { lab=#net3}
N 500 170 500 200 { lab=#net3}
N 220 -40 340 -40 { lab=#net4}
N 340 -40 340 200 { lab=#net4}
N 340 200 360 200 { lab=#net4}
N 840 0 880 0 { lab=VDD}
N 840 -160 840 0 { lab=VDD}
N 860 -40 880 -40 { lab=#net1}
N 860 -100 860 -40 { lab=#net1}
N 900 200 920 200 { lab=#net5}
N 920 170 920 200 { lab=#net5}
N 640 -40 760 -40 { lab=#net6}
N 760 -40 760 200 { lab=#net6}
N 760 200 780 200 { lab=#net6}
N 1260 0 1300 0 { lab=VDD}
N 1260 -160 1260 0 { lab=VDD}
N 1280 -40 1300 -40 { lab=#net1}
N 1280 -100 1280 -40 { lab=#net1}
N 1320 200 1340 200 { lab=#net7}
N 1340 170 1340 200 { lab=#net7}
N 1060 -40 1180 -40 { lab=#net8}
N 1180 -40 1180 200 { lab=#net8}
N 1180 200 1200 200 { lab=#net8}
N 1030 -100 1500 -100 { lab=#net1}
N -320 -80 -220 -80 { lab=RST}
N -320 260 1500 260 { lab=RST}
N 120 170 120 260 { lab=RST}
N 540 170 540 260 { lab=RST}
N 960 170 960 260 { lab=RST}
N 1380 170 1380 250 { lab=RST}
N 1380 250 1380 260 { lab=RST}
N 220 0 240 0 { lab=D1}
N 640 0 660 0 { lab=D2}
N 1060 0 1080 0 { lab=D3}
N 1480 0 1500 0 { lab=D4}
N 20 -160 20 -40 { lab=VDD}
N -0 -100 -0 0 { lab=#net1}
N -220 220 -200 220 { lab=EN}
N 990 -160 1500 -160 { lab=VDD}
N -320 -80 -320 260 { lab=RST}
N -240 -120 -220 -120 { lab=VDD}
N 1480 -40 1500 -40 { lab=#net9}
C {/home/matteo/Documenti/tesi/Circuiti/counter/cell.sym} 120 -20 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} 100 110 3 0 {name=x7}
C {ipin.sym} -360 100 0 0 {name=p1 lab=RST}
C {ipin.sym} -220 180 0 0 {name=p2 lab=CLK
}
C {vdd.sym} -40 -160 0 0 {name=l1 lab=VDD}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nand_2.sym} -160 -100 0 0 {name=x8}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/edg_det.sym} 0 200 0 0 {name=x2}
C {/home/matteo/Documenti/tesi/Circuiti/counter/cell.sym} 540 -20 0 0 {name=x3}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} 520 110 3 0 {name=x4}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/edg_det.sym} 420 200 0 0 {name=x5}
C {/home/matteo/Documenti/tesi/Circuiti/counter/cell.sym} 960 -20 0 0 {name=x6}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} 940 110 3 0 {name=x9}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/edg_det.sym} 840 200 0 0 {name=x10}
C {/home/matteo/Documenti/tesi/Circuiti/counter/cell.sym} 1380 -20 0 0 {name=x11}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} 1360 110 3 0 {name=x12}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/edg_det.sym} 1260 200 0 0 {name=x13}
C {opin.sym} 240 0 0 0 {name=p3 lab=D1}
C {opin.sym} 660 0 0 0 {name=p4 lab=D2}
C {opin.sym} 1080 0 0 0 {name=p5 lab=D3}
C {opin.sym} 1500 0 0 0 {name=p6 lab=D4}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -140 200 0 0 {name=x14}
C {ipin.sym} -220 220 0 0 {name=p7 lab=EN
}
