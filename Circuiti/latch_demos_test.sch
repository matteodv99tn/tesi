v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -60 260 -60 460 { lab=Vr}
N 0 40 120 40 { lab=Vs}
N -60 -0 120 -0 { lab=Vdd}
N 0 40 -0 320 { lab=Vs}
N -0 320 0 380 { lab=Vs}
N 500 40 540 40 { lab=#net1}
N 120 40 340 40 { lab=Vs}
N 120 -0 340 -0 { lab=Vdd}
N 500 -0 680 0 { lab=out}
N 340 120 390 120 { lab=#net2}
N 390 80 390 120 { lab=#net2}
C {vsource.sym} -440 350 0 0 {name=V1 value=1.8}
C {gnd.sym} -440 380 0 0 {name=l1 lab=GND}
C {vdd.sym} -440 320 0 0 {name=l2 lab=Vdd}
C {lab_pin.sym} -60 360 0 0 {name=l7 sig_type=std_logic lab=Vr}
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
tran 0.05n 200n
plot clk vr+2 vs+2 out+4
.endc
" }
C {lab_pin.sym} 0 200 0 0 {name=l5 sig_type=std_logic lab=Vs}
C {gnd.sym} 0 440 0 0 {name=l8 lab=GND}
C {gnd.sym} -60 520 0 0 {name=l9 lab=GND}
C {gnd.sym} -290 490 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -290 430 1 0 {name=l6 sig_type=std_logic lab=temp}
C {vsource.sym} -290 460 0 0 {name=V3 value="pulse 0 1.8 2n 0.01p  0.01p 5n 80n"}
C {vsource.sym} -60 490 0 0 {name=V6 value="pulse 0 1.8 20n 0.01p  0.01p 20n 60n"}
C {gnd.sym} -380 380 0 0 {name=l4 lab=GND}
C {sqwsource.sym} -380 350 0 0 {name=V4 vhi=1.8 freq=5e7}
C {lab_pin.sym} -380 320 1 0 {name=l10 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 680 0 2 0 {name=l14 sig_type=std_logic lab=out}
C {capa.sym} 530 70 0 0 {name=C1
m=1
value=0.15p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 530 100 0 0 {name=l13 lab=GND}
C {capa.sym} 600 30 0 0 {name=C2
m=1
value=0.15p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 600 60 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 220 120 0 0 {name=l11 sig_type=std_logic lab=CLK}
C {vsource.sym} 0 410 0 0 {name=V5 value="pulse 0 1.8 20n 0.01p  0.01p 160n 200n"}
C {vdd.sym} -60 0 0 0 {name=l12 lab=Vdd}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch.sym} 420 20 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/edg_det.sym} 280 120 0 0 {name=x2}
