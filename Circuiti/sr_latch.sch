v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -100 180 -60 180 { lab=Qn}
N -100 160 -100 180 { lab=Qn}
N -100 60 -60 60 { lab=Q}
N -100 60 -100 80 { lab=Q}
N 80 40 200 40 { lab=Qn}
N 80 200 200 200 { lab=Q}
N 140 40 140 80 { lab=Qn}
N 140 160 140 200 { lab=Q}
N -100 80 140 160 { lab=Q}
N -100 160 140 80 { lab=Qn}
N -140 220 -60 220 { lab=Vr}
N -140 20 -60 20 { lab=Vs}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 0 200 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 0 40 0 0 {name=x2}
C {vsource.sym} -440 350 0 0 {name=V1 value=1.8}
C {gnd.sym} -440 380 0 0 {name=l1 lab=GND}
C {vdd.sym} -440 320 0 0 {name=l2 lab=Vdd}
C {vsource.sym} -360 350 0 0 {name=V2 value="pulse 0 1.8 5n 0.01p  0.01p 50p 20n"}
C {gnd.sym} -360 380 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -360 320 1 0 {name=l4 sig_type=std_logic lab=Vs}
C {lab_pin.sym} -140 20 0 0 {name=l5 sig_type=std_logic lab=Vs}
C {vsource.sym} -360 470 0 0 {name=V3 value="pulse 0 1.8 10n 0.01p  0.01p 50p 20n"}
C {gnd.sym} -360 500 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -360 440 1 0 {name=l7 sig_type=std_logic lab=Vr}
C {lab_pin.sym} -140 220 0 0 {name=l8 sig_type=std_logic lab=Vr}
C {lab_pin.sym} 200 40 2 0 {name=l9 sig_type=std_logic lab=Qn}
C {lab_pin.sym} 200 200 2 0 {name=l10 sig_type=std_logic lab=Q}
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
tran 0.1n 60n
plot vs vr+2 q+4 qn+6
wrdata output.txt vin1 vin2 vout
.endc
" }
C {capa.sym} 180 230 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 180 260 0 0 {name=l11 lab=GND}
C {capa.sym} 180 70 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 180 100 0 0 {name=l12 lab=GND}
