v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 240 90 260 90 { lab=GND}
N 240 90 240 120 { lab=GND}
N 380 120 380 160 { lab=#net1}
N 360 120 360 240 { lab=#net2}
N 340 120 340 320 { lab=#net3}
N 320 120 320 400 { lab=#net4}
N 20 60 260 60 { lab=#net5}
N 20 60 20 160 { lab=#net5}
N 0 40 260 40 { lab=#net6}
N -20 20 260 20 { lab=#net7}
N -40 -0 260 0 { lab=#net8}
N -40 -0 -40 400 { lab=#net8}
N -20 20 -20 320 { lab=#net7}
N 0 40 0 240 { lab=#net6}
N 440 60 940 60 { lab=R1}
N 440 40 940 40 { lab=R2}
N 440 20 940 20 { lab=R3}
N 440 0 940 -0 { lab=R4}
N 380 -60 380 -40 { lab=carry}
N 380 -60 940 -60 { lab=carry}
N 500 60 500 80 { lab=R1}
N 580 40 580 80 { lab=R2}
N 660 20 660 80 { lab=R3}
N 740 -0 740 80 { lab=R4}
N 820 -60 820 80 { lab=carry}
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
tran 3n 800n
plot r1 r2+2 r3+4 r4+6 carry+8
*wrdata output.txt in1 in2 res carry
.endc
" }
C {gnd.sym} 320 460 0 0 {name=l3 lab=GND}
C {vsource.sym} 320 430 0 0 {name=V3 value="pulse 0 1.8 50n 1n 1n 50n 100n"}
C {gnd.sym} 340 380 0 0 {name=l31 lab=GND}
C {vsource.sym} 340 350 0 0 {name=V4 value="pulse 0 1.8 100n 1n 1n 100n 200n"}
C {gnd.sym} 360 300 0 0 {name=l33 lab=GND}
C {vsource.sym} 360 270 0 0 {name=V9 value="pulse 0 1.8 200n 1n  1n 200n 400n"}
C {gnd.sym} 380 220 0 0 {name=l35 lab=GND}
C {code.sym} -470 700 0 0 {name="Initial conditions" only_toplevel=true
format="tcleval( @value )"
value="
.ic v(r1)=0
.ic v(r2)=0
.ic v(r3)=0
.ic v(r4)=0
"}
C {vsource.sym} 380 190 0 0 {name=V2 value="pulse 0 1.8 400n 1n 1n 400n 800n"}
C {/home/matteo/Documenti/tesi/Circuiti/adders/4bit_adder.sym} 400 60 0 0 {name=x1}
C {gnd.sym} 240 120 0 0 {name=l6 lab=GND}
C {gnd.sym} -40 460 0 0 {name=l4 lab=GND}
C {vsource.sym} -40 430 0 0 {name=V5 value=1.8}
C {gnd.sym} -20 380 0 0 {name=l5 lab=GND}
C {vsource.sym} -20 350 0 0 {name=V6 value=1.8}
C {gnd.sym} 0 300 0 0 {name=l7 lab=GND}
C {vsource.sym} 0 270 0 0 {name=V7 value=0}
C {gnd.sym} 20 220 0 0 {name=l8 lab=GND}
C {vsource.sym} 20 190 0 0 {name=V8 value=0}
C {capa.sym} 500 110 0 0 {name=C1
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 500 140 0 0 {name=l9 lab=GND}
C {capa.sym} 580 110 0 0 {name=C2
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 580 140 0 0 {name=l10 lab=GND}
C {capa.sym} 660 110 0 0 {name=C3
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 660 140 0 0 {name=l11 lab=GND}
C {capa.sym} 740 110 0 0 {name=C4
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 740 140 0 0 {name=l12 lab=GND}
C {capa.sym} 820 110 0 0 {name=C5
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 820 140 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 940 60 2 0 {name=l14 sig_type=std_logic lab=R1}
C {lab_pin.sym} 940 40 2 0 {name=l15 sig_type=std_logic lab=R2}
C {lab_pin.sym} 940 20 2 0 {name=l16 sig_type=std_logic lab=R3}
C {lab_pin.sym} 940 0 2 0 {name=l17 sig_type=std_logic lab=R4}
C {lab_pin.sym} 940 -60 2 0 {name=l18 sig_type=std_logic lab=carry}
