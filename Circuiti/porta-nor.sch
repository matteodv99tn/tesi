v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 100 -320 180 -320 { lab=Vand}
N 140 -320 140 -290 { lab=Vand}
N 460 -320 540 -320 { lab=Vor}
N 500 -320 500 -290 { lab=Vor}
C {code.sym} -10 -110 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {code_shown.sym} -300 -120 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 0.1n 60n
plot vin1 vin2+2 vand+4 vor+6
wrdata output.txt vin1 vin2 vout
.endc
" }
C {vdd.sym} 160 -80 0 0 {name=l4 lab=Vdd}
C {vsource.sym} 160 -50 0 0 {name=V1 value=1.8}
C {gnd.sym} 160 -20 0 0 {name=l3 lab=GND}
C {vsource.sym} 240 -50 0 0 {name=V2 value="pulse 0 1.8 5n 0.01p  0.01p 10n 20n"}
C {gnd.sym} 240 -20 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 240 -80 1 0 {name=l6 sig_type=std_logic lab=Vin1}
C {capa.sym} 140 -260 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 140 -230 0 0 {name=l7 lab=GND}
C {vsource.sym} 530 -50 0 0 {name=V3 value="pulse 0 1.8 5n 0.01p  0.01p 20n 40n"}
C {gnd.sym} 530 -20 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 530 -80 1 0 {name=l9 sig_type=std_logic lab=Vin2

}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 20 -320 0 0 {name=x1}
C {lab_pin.sym} -40 -340 0 0 {name=l1 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} -40 -300 0 0 {name=l2 sig_type=std_logic lab=Vin2

}
C {lab_pin.sym} 180 -320 2 0 {name=l10 sig_type=std_logic lab=Vand

}
C {capa.sym} 500 -260 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 500 -230 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 320 -340 0 0 {name=l12 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 320 -300 0 0 {name=l13 sig_type=std_logic lab=Vin2

}
C {lab_pin.sym} 540 -320 2 0 {name=l14 sig_type=std_logic lab=Vor

}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} 380 -320 0 0 {name=x2}
