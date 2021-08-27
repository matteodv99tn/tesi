v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -360 0 -360 20 { lab=IN}
N -360 -0 0 -0 { lab=IN}
N -100 20 -100 60 { lab=EN}
N -100 20 -0 20 { lab=EN}
N 300 0 400 -0 { lab=OUT}
C {vdd.sym} -560 110 0 0 {name=l1 lab=VDD}
C {vsource.sym} -560 140 0 0 {name=V1 value=1.8}
C {gnd.sym} -560 170 0 0 {name=l2 lab=GND}
C {code.sym} -430 260 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {code_shown.sym} -420 420 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 5n 600n
plot en in+2 out+4
.endc
" }
C {vsource.sym} -360 50 0 0 {name=V2 value="pulse 0 1.8 25n 1n  1n 200n 300n"}
C {gnd.sym} -360 80 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -360 0 0 0 {name=l8 sig_type=std_logic lab=IN
}
C {/home/matteo/Documenti/tesi/Circuiti/memories/tri_state_inv.sym} 150 10 0 0 {name=x1}
C {vsource.sym} -100 90 0 0 {name=V3 value="pulse 0 1.8 0n 1n  1n 200n 400n"}
C {gnd.sym} -100 120 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -100 20 0 0 {name=l4 sig_type=std_logic lab=EN}
C {gnd.sym} 360 60 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 400 0 2 0 {name=l6 sig_type=std_logic lab=OUT
}
C {capa.sym} 360 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
