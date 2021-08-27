v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1000 420 1000 440 { lab=#net1}
N 1000 420 1020 420 { lab=#net1}
N 1000 380 1020 380 { lab=CLK}
N 1000 360 1000 380 { lab=CLK}
N 780 360 780 440 { lab=CLK}
N 960 440 1000 440 { lab=#net1}
N 980 440 980 480 { lab=#net1}
N 1160 400 1190 400 { lab=vout}
N 740 400 780 400 { lab=CLK}
N 780 440 820 440 { lab=CLK}
N 780 360 1000 360 { lab=CLK}
N 290 470 290 500 { lab=CLK}
C {code.sym} 150 650 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {code_shown.sym} 310 660 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 0.05n 16n
plot clk vout+2
wrtdata output.txt clk vout
.endc
" }
C {vsource.sym} 220 530 0 0 {name=V1 value=1.8}
C {gnd.sym} 220 560 0 0 {name=l3 lab=GND}
C {vdd.sym} 220 500 0 0 {name=l6 lab=VDD}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} 880 440 0 0 {name=x3}
C {capa.sym} 980 510 0 0 {name=C3
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 980 540 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 1190 400 2 0 {name=l9 sig_type=std_logic lab=vout}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 1080 400 0 0 {name=x1}
C {lab_pin.sym} 290 470 2 0 {name=l1 sig_type=std_logic lab=CLK}
C {vsource.sym} 290 530 0 0 {name=V3 value="pulse 0 1.8 2n 0.01p  0.01p 5n 8n"}
C {gnd.sym} 290 560 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 740 400 0 0 {name=l4 sig_type=std_logic lab=CLK}
