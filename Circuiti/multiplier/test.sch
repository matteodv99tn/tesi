v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1180 1070 1220 1070 { lab=#net1}
N 980 1070 1020 1070 { lab=#net2}
N 780 1070 820 1070 { lab=#net3}
N 1380 750 1420 750 { lab=#net4}
N 1180 750 1220 750 { lab=#net5}
N 980 750 1020 750 { lab=#net6}
N 900 340 1730 340 { lab=b1}
N 1100 340 1100 360 { lab=b1}
N 1300 340 1300 360 { lab=b1}
N 1500 340 1500 360 { lab=b1}
N 1700 340 1700 360 { lab=b1}
N 1480 500 1480 700 { lab=#net7}
N 740 540 1570 540 { lab=b2}
N 940 540 940 560 { lab=b2}
N 1140 540 1140 560 { lab=b2}
N 1340 540 1340 560 { lab=b2}
N 1540 540 1540 560 { lab=b2}
N 1500 500 1600 500 { lab=a1}
N 1500 500 1500 560 { lab=a1}
N 1100 500 1200 500 { lab=a3}
N 1100 500 1100 560 { lab=a3}
N 1300 500 1400 500 { lab=a2}
N 1300 500 1300 560 { lab=a2}
N 900 500 1000 500 { lab=a4}
N 900 500 900 560 { lab=a4}
N 800 560 900 560 { lab=a4}
N 800 560 800 820 { lab=a4}
N 700 820 800 820 { lab=a4}
N 700 820 700 880 { lab=a4}
N 1000 560 1100 560 { lab=a3}
N 1000 560 1000 820 { lab=a3}
N 900 820 1000 820 { lab=a3}
N 900 820 900 880 { lab=a3}
N 1200 560 1300 560 { lab=a2}
N 1200 560 1200 820 { lab=a2}
N 1100 820 1200 820 { lab=a2}
N 1100 820 1100 880 { lab=a2}
N 1400 560 1500 560 { lab=a1}
N 1400 560 1400 820 { lab=a1}
N 1300 820 1400 820 { lab=a1}
N 1300 820 1300 880 { lab=a1}
N 540 860 1370 860 { lab=b3}
N 740 860 740 880 { lab=b3}
N 940 860 940 880 { lab=b3}
N 1140 860 1140 880 { lab=b3}
N 1340 860 1340 880 { lab=b3}
N 1060 260 1060 360 { lab=a4}
N 1260 260 1260 360 { lab=a3}
N 1460 260 1460 360 { lab=a2}
N 1660 260 1660 360 { lab=a1}
N 1280 1140 1280 1220 { lab=R3}
N 1080 1140 1080 1220 { lab=R4}
N 880 1140 880 1220 { lab=R5}
N 680 1140 680 1220 { lab=R6}
N 1480 830 1480 1220 { lab=R2}
N 1680 500 1680 1220 { lab=R1}
N 1480 820 1480 830 { lab=R2}
N 1080 500 1080 700 { lab=#net8}
N 680 750 680 1020 { lab=#net9}
N 680 750 820 750 { lab=#net9}
N 880 820 880 1020 { lab=#net10}
N 1080 820 1080 1020 { lab=#net11}
N 1280 820 1280 1020 { lab=#net12}
N -80 -40 -80 0 { lab=a4}
N 0 -40 0 0 { lab=a3}
N 80 -40 80 0 { lab=a2}
N 160 -40 160 0 { lab=a1}
N 160 100 160 140 { lab=b1}
N 80 180 80 220 { lab=b2}
N 0 260 0 300 { lab=b3}
N 1000 360 1000 500 { lab=a4}
N 1000 360 1060 360 { lab=a4}
N 1200 360 1200 500 { lab=a3}
N 1200 360 1260 360 { lab=a3}
N 1400 360 1400 500 { lab=a2}
N 1400 360 1460 360 { lab=a2}
N 1600 360 1600 500 { lab=a1}
N 1600 360 1660 360 { lab=a1}
N 540 1220 560 1220 { lab=R7}
N 680 1220 700 1220 { lab=R6}
N 880 1220 900 1220 { lab=R5}
N 1080 1220 1100 1220 { lab=R4}
N 1280 1220 1300 1220 { lab=R3}
N 1480 1220 1500 1220 { lab=R2}
N 1680 1220 1700 1220 { lab=R1}
N 540 1070 610 1070 { lab=R7}
N 540 1070 540 1220 { lab=R7}
N 610 1070 620 1070 { lab=R7}
N 1280 500 1280 700 { lab=#net13}
N 860 700 880 700 { lab=GND}
N 540 1220 540 1240 { lab=R7}
N 680 1220 680 1240 { lab=R6}
N 880 1220 880 1240 { lab=R5}
N 1080 1220 1080 1240 { lab=R4}
N 1280 1220 1280 1240 { lab=R3}
N 1480 1220 1480 1240 { lab=R2}
N 1680 1220 1680 1240 { lab=R1}
C {vsource.sym} -440 350 0 0 {name=V1 value=1.8}
C {gnd.sym} -440 380 0 0 {name=l1 lab=GND}
C {vdd.sym} -440 320 0 0 {name=l2 lab=Vdd}
C {code.sym} -170 720 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {code_shown.sym} -10 730 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 10n 800n
plot b1 b2+2 b3+4
plot r1 r2+2 r3+4 r4+6 r5+8 r6+10 r7+12
wrdata output.txt r1 r2 r3 r4 r5 r6 r7
.endc
" }
C {code.sym} -170 870 0 0 {name="Initial conditions" only_toplevel=true
format="tcleval( @value )"
value="
.ic v(r1)=0
.ic v(r2)=0
.ic v(r3)=0
.ic v(r4)=0
"}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1680 420 1 0 {name=x5}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1480 420 1 0 {name=x6}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1280 420 1 0 {name=x7}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1080 420 1 0 {name=x8}
C {/home/matteo/Documenti/tesi/Circuiti/multiplier/half_adder.sym} 1320 1220 0 0 {name=x9}
C {/home/matteo/Documenti/tesi/Circuiti/multiplier/full_adder.sym} 1140 1120 0 0 {name=x10}
C {/home/matteo/Documenti/tesi/Circuiti/multiplier/full_adder.sym} 940 1120 0 0 {name=x11}
C {/home/matteo/Documenti/tesi/Circuiti/multiplier/full_adder.sym} 740 1120 0 0 {name=x12}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1320 940 1 0 {name=x13}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1120 940 1 0 {name=x14}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 920 940 1 0 {name=x15}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 720 940 1 0 {name=x16}
C {/home/matteo/Documenti/tesi/Circuiti/multiplier/half_adder.sym} 1520 900 0 0 {name=x17}
C {/home/matteo/Documenti/tesi/Circuiti/multiplier/full_adder.sym} 1340 800 0 0 {name=x18}
C {/home/matteo/Documenti/tesi/Circuiti/multiplier/full_adder.sym} 1140 800 0 0 {name=x19}
C {/home/matteo/Documenti/tesi/Circuiti/multiplier/full_adder.sym} 940 800 0 0 {name=x20}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1520 620 1 0 {name=x21}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1320 620 1 0 {name=x22}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1120 620 1 0 {name=x23}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 920 620 1 0 {name=x24}
C {gnd.sym} -80 60 0 0 {name=l28 lab=GND}
C {vsource.sym} -80 30 0 0 {name=V2 value=0}
C {lab_pin.sym} -80 -30 2 0 {name=l29 sig_type=std_logic lab=a4}
C {gnd.sym} 0 60 0 0 {name=l30 lab=GND}
C {vsource.sym} 0 30 0 0 {name=V4 value=1.8}
C {lab_pin.sym} 0 -30 2 0 {name=l31 sig_type=std_logic lab=a3}
C {gnd.sym} 80 60 0 0 {name=l32 lab=GND}
C {vsource.sym} 80 30 0 0 {name=V6 value=0}
C {lab_pin.sym} 80 -30 2 0 {name=l33 sig_type=std_logic lab=a2}
C {gnd.sym} 160 60 0 0 {name=l34 lab=GND}
C {vsource.sym} 160 30 0 0 {name=V7 value=1.8}
C {lab_pin.sym} 160 -30 2 0 {name=l35 sig_type=std_logic lab=a1}
C {gnd.sym} 80 280 0 0 {name=l36 lab=GND}
C {vsource.sym} 80 250 0 0 {name=V8 value="pulse 0 1.8 200n 1n 1n 200n 400n"}
C {gnd.sym} 160 200 0 0 {name=l37 lab=GND}
C {vsource.sym} 160 170 0 0 {name=V9 value="pulse 0 1.8 100n 1n 1n 100n 200n"}
C {lab_pin.sym} 160 110 2 0 {name=l3 sig_type=std_logic lab=b1}
C {lab_pin.sym} 80 190 2 0 {name=l7 sig_type=std_logic lab=b2}
C {gnd.sym} 0 360 0 0 {name=l15 lab=GND}
C {vsource.sym} 0 330 0 0 {name=V3 value="pulse 0 1.8 400n 1n 1n 400n 800n"}
C {lab_pin.sym} 0 270 2 0 {name=l17 sig_type=std_logic lab=b3}
C {opin.sym} 560 1220 0 0 {name=p1 lab=R7}
C {opin.sym} 700 1220 0 0 {name=p2 lab=R6}
C {opin.sym} 900 1220 0 0 {name=p3 lab=R5}
C {opin.sym} 1100 1220 0 0 {name=p4 lab=R4}
C {opin.sym} 1300 1220 0 0 {name=p5 lab=R3}
C {opin.sym} 1500 1220 0 0 {name=p6 lab=R2}
C {opin.sym} 1700 1220 0 0 {name=p7 lab=R1}
C {ipin.sym} 1660 260 0 0 {name=p8 lab=a1}
C {ipin.sym} 1460 260 0 0 {name=p9 lab=a2}
C {ipin.sym} 1260 260 0 0 {name=p10 lab=a3}
C {ipin.sym} 1060 260 0 0 {name=p11 lab=a4}
C {ipin.sym} 900 340 0 0 {name=p12 lab=b1}
C {ipin.sym} 740 540 0 0 {name=p13 lab=b2}
C {ipin.sym} 540 860 0 0 {name=p14 lab=b3}
C {gnd.sym} 860 700 0 0 {name=l4 lab=GND}
C {capa.sym} 540 1270 0 0 {name=C1
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 540 1300 0 0 {name=l5 lab=GND}
C {capa.sym} 680 1270 0 0 {name=C2
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 680 1300 0 0 {name=l6 lab=GND}
C {capa.sym} 880 1270 0 0 {name=C3
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 880 1300 0 0 {name=l8 lab=GND}
C {capa.sym} 1080 1270 0 0 {name=C4
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1080 1300 0 0 {name=l9 lab=GND}
C {capa.sym} 1280 1270 0 0 {name=C5
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1280 1300 0 0 {name=l10 lab=GND}
C {capa.sym} 1480 1270 0 0 {name=C6
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1480 1300 0 0 {name=l11 lab=GND}
C {capa.sym} 1680 1270 0 0 {name=C7
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1680 1300 0 0 {name=l12 lab=GND}
