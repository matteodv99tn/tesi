v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 380 350 460 350 { lab=CLK}
N 380 350 380 480 { lab=CLK}
N 260 280 260 580 { lab=set}
N 260 280 560 280 { lab=set}
N 200 240 560 240 { lab=reset}
N 200 240 200 660 { lab=reset}
N 460 350 610 350 { lab=CLK}
N 610 320 610 350 { lab=CLK}
N 720 280 760 280 { lab=test}
N 800 240 840 240 { lab=Q}
N 720 240 800 240 { lab=Q}
C {vsource.sym} 380 510 0 0 {name=V1 value="pulse 0 1.8 2n 0.01p  0.01p 4n 8n"}
C {gnd.sym} 200 720 0 0 {name=l1 lab=GND}
C {code.sym} -320 480 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {code_shown.sym} -160 490 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 0.05n 25n
plot clk set+2 reset+4 Q+6 test+8
.endc
" }
C {lab_pin.sym} 380 350 0 0 {name=l4 sig_type=std_logic lab=CLK}
C {vsource.sym} 200 690 0 0 {name=V2 value="pulse 0 1.8 7n 0.01p  0.01p 4n 10nn"}
C {gnd.sym} 380 540 0 0 {name=l2 lab=GND}
C {gnd.sym} 260 640 0 0 {name=l3 lab=GND}
C {vsource.sym} 260 610 0 0 {name=V3 value="pulse 0 1.8 1n 0.01p  0.01p 4n 10n"}
C {lab_pin.sym} 260 350 0 0 {name=l6 sig_type=std_logic lab=set}
C {lab_pin.sym} 200 350 0 0 {name=l7 sig_type=std_logic lab=reset}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/sr_flip_flop.sym} 640 260 0 0 {name=x1}
C {lab_pin.sym} 840 240 2 0 {name=l9 sig_type=std_logic lab=Q}
C {capa.sym} 830 270 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 830 300 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 750 280 3 0 {name=l5 sig_type=std_logic lab=test}
