v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 100 240 100 { lab=#net1}
N 240 40 240 100 { lab=#net1}
N 240 40 360 40 { lab=#net1}
N 360 40 360 60 { lab=#net1}
N 480 100 500 100 { lab=#net2}
N 500 40 500 100 { lab=#net2}
N 500 40 620 40 { lab=#net2}
N 620 40 620 60 { lab=#net2}
N 740 100 760 100 { lab=#net3}
N 760 40 760 100 { lab=#net3}
N 760 40 880 40 { lab=#net3}
N 880 40 880 60 { lab=#net3}
N 180 180 180 220 { lab=R1}
N 440 180 440 220 { lab=R2}
N 700 180 700 220 { lab=R3}
N 960 180 960 220 { lab=R4}
N 1080 100 1080 220 { lab=carry}
N 1000 100 1080 100 { lab=carry}
N -40 40 -40 70 { lab=GND}
N -40 40 100 40 { lab=GND}
N 100 40 100 60 { lab=GND}
N 360 460 360 540 { lab=#net4}
N 420 460 480 460 { lab=#net4}
N 360 460 420 460 { lab=#net4}
N 460 490 460 540 {}
N 460 490 480 490 {}
C {vsource.sym} -440 350 0 0 {name=V1 value=1.8}
C {gnd.sym} -440 380 0 0 {name=l1 lab=GND}
C {vdd.sym} -440 320 0 0 {name=l2 lab=Vdd}
C {code.sym} -470 550 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {code_shown.sym} -310 560 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 1n 1u
plot a1 a2+2 a3+4 a4+6
plot r1 r2+2 r3+4 r4+6 carry+8
*wrdata output.txt in1 in2 res carry
.endc
" }
C {capa.sym} 180 250 0 0 {name=C1
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 180 280 0 0 {name=l8 lab=GND}
C {/home/matteo/Documenti/tesi/Circuiti/adders/full_adder.sym} 140 120 0 0 {name=x2}
C {/home/matteo/Documenti/tesi/Circuiti/adders/full_adder.sym} 400 120 0 0 {name=x1}
C {lab_pin.sym} 60 100 0 0 {name=l10 sig_type=std_logic lab=A1}
C {lab_pin.sym} 60 140 0 0 {name=l11 sig_type=std_logic lab=B1}
C {lab_pin.sym} 320 100 0 0 {name=l12 sig_type=std_logic lab=A2}
C {lab_pin.sym} 320 140 0 0 {name=l13 sig_type=std_logic lab=B2}
C {/home/matteo/Documenti/tesi/Circuiti/adders/full_adder.sym} 660 120 0 0 {name=x3}
C {lab_pin.sym} 580 100 0 0 {name=l14 sig_type=std_logic lab=A3}
C {lab_pin.sym} 580 140 0 0 {name=l15 sig_type=std_logic lab=B3}
C {/home/matteo/Documenti/tesi/Circuiti/adders/full_adder.sym} 920 120 0 0 {name=x4}
C {lab_pin.sym} 840 100 0 0 {name=l16 sig_type=std_logic lab=A4}
C {lab_pin.sym} 840 140 0 0 {name=l17 sig_type=std_logic lab=B4}
C {lab_pin.sym} 180 200 2 0 {name=l18 sig_type=std_logic lab=R1}
C {capa.sym} 440 250 0 0 {name=C2
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 440 280 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 440 200 2 0 {name=l7 sig_type=std_logic lab=R2}
C {capa.sym} 700 250 0 0 {name=C3
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 700 280 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 700 200 2 0 {name=l19 sig_type=std_logic lab=R3}
C {capa.sym} 960 250 0 0 {name=C4
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 960 280 0 0 {name=l20 lab=GND}
C {lab_pin.sym} 960 200 2 0 {name=l21 sig_type=std_logic lab=R4}
C {capa.sym} 1080 250 0 0 {name=C5
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1080 280 0 0 {name=l22 lab=GND}
C {gnd.sym} -40 60 0 0 {name=l23 lab=GND}
C {vsource.sym} -340 350 0 0 {name=V5 value=1.8}
C {gnd.sym} -340 380 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -340 320 1 0 {name=l5 sig_type=std_logic lab=B1}
C {vsource.sym} -260 350 0 0 {name=V6 value=1.8}
C {gnd.sym} -260 380 0 0 {name=l24 lab=GND}
C {lab_pin.sym} -260 320 1 0 {name=l25 sig_type=std_logic lab=B2}
C {vsource.sym} -200 350 0 0 {name=V7 value=0}
C {gnd.sym} -200 380 0 0 {name=l26 lab=GND}
C {lab_pin.sym} -200 320 1 0 {name=l27 sig_type=std_logic lab=B3}
C {vsource.sym} -140 350 0 0 {name=V8 value=0}
C {gnd.sym} -140 380 0 0 {name=l28 lab=GND}
C {lab_pin.sym} -140 320 1 0 {name=l29 sig_type=std_logic lab=B4}
C {lab_pin.sym} 710 460 2 0 {name=l30 sig_type=std_logic lab=A1}
C {lab_pin.sym} 710 480 2 0 {name=l32 sig_type=std_logic lab=A2}
C {lab_pin.sym} 710 500 2 0 {name=l34 sig_type=std_logic lab=A3}
C {lab_pin.sym} 1080 200 2 0 {name=l37 sig_type=std_logic lab=carry}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/counter.sym} 560 490 0 0 {name=x5}
C {lab_pin.sym} 710 520 2 0 {name=l38 sig_type=std_logic lab=A4}
C {sqwsource.sym} 360 570 0 0 {name=V2 vhi=3 freq=1e7}
C {gnd.sym} 360 600 0 0 {name=l3 lab=GND}
C {vsource.sym} 460 570 0 0 {name=V3 value="pulse 0 1.8 0n 0.01p  0.01p 200n 1s"}
C {gnd.sym} 460 600 0 0 {name=l31 lab=GND}
