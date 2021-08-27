v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -320 360 50 360 { lab=O3}
N -320 340 50 340 { lab=O2}
N -320 380 50 380 { lab=O4}
N -320 320 50 320 { lab=O1}
N -270 380 -270 420 { lab=O4}
N -190 360 -190 420 { lab=O3}
N -110 340 -110 420 { lab=O2}
N -30 320 -30 420 { lab=O1}
N -880 320 -880 460 { lab=CLK}
N -880 320 -620 320 { lab=CLK}
N -780 360 -780 460 { lab=RST}
N -780 350 -780 360 { lab=RST}
N -1090 670 -1090 770 { lab=temp}
N -1090 660 -1090 670 { lab=temp}
N -780 340 -780 350 {}
N -780 340 -620 340 {}
C {vsource.sym} -1480 300 0 0 {name=V1 value=1.8}
C {gnd.sym} -1480 330 0 0 {name=l1 lab=GND}
C {vdd.sym} -1480 270 0 0 {name=l2 lab=Vdd}
C {code.sym} -1440 240 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {code_shown.sym} -1280 250 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 20n 0.8u
plot CLK RST+2
plot o1 o2+2 o3+4 o4+6 clk-2 rst-4
.endc
" }
C {gnd.sym} -190 480 0 0 {name=l32 lab=GND}
C {sqwsource.sym} -880 490 0 0 {name=V2 vhi=1.8 freq=1e7}
C {gnd.sym} -880 520 0 0 {name=l5 lab=GND}
C {capa.sym} -190 450 0 0 {name=C2
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -270 480 0 0 {name=l8 lab=GND}
C {capa.sym} -270 450 0 0 {name=C1
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -30 480 0 0 {name=l3 lab=GND}
C {capa.sym} -30 450 0 0 {name=C3
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -110 480 0 0 {name=l4 lab=GND}
C {capa.sym} -110 450 0 0 {name=C4
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1090 800 0 0 {name=V3 value=1.8}
C {gnd.sym} -780 520 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -780 350 0 0 {name=l7 sig_type=std_logic lab=RST}
C {lab_pin.sym} -880 320 0 0 {name=l9 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 50 380 2 0 {name=l10 sig_type=std_logic lab=O4}
C {lab_pin.sym} 50 360 2 0 {name=l11 sig_type=std_logic lab=O3}
C {lab_pin.sym} 50 340 2 0 {name=l12 sig_type=std_logic lab=O2}
C {lab_pin.sym} 50 320 2 0 {name=l13 sig_type=std_logic lab=O1}
C {vsource.sym} -780 490 0 0 {name=V4 value="pulse 0 1.8 30n 0.01p  0.01p 170n 0.8u"}
C {gnd.sym} -1090 830 0 0 {name=l14 lab=GND}
C {lab_pin.sym} -1090 660 0 0 {name=l15 sig_type=std_logic lab=temp}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/counter_2.sym} -470 350 0 0 {name=x1}
