v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 10 400 40 400 { lab=CLK}
N 380 460 420 460 { lab=#net1}
N 420 420 420 460 { lab=#net1}
N 420 340 420 380 { lab=#net2}
N 380 340 420 340 { lab=#net2}
N 580 380 840 380 { lab=#net3}
N 220 300 240 300 { lab=#net3}
N 220 280 220 300 { lab=#net3}
N 220 280 600 280 { lab=#net3}
N 600 280 600 380 { lab=#net3}
N 220 500 240 500 { lab=#net4}
N 580 420 680 420 { lab=#net4}
N 160 400 180 400 { lab=#net5}
N 180 380 180 400 { lab=#net5}
N 180 380 240 380 { lab=#net5}
N 180 400 180 420 { lab=#net5}
N 180 420 240 420 { lab=#net5}
N -0 400 10 400 { lab=CLK}
N -60 340 240 340 { lab=reset}
N 60 460 60 660 { lab=set}
N -0 400 0 740 { lab=CLK}
N -60 340 -60 820 { lab=reset}
N 220 500 220 520 { lab=#net4}
N 220 520 600 520 { lab=#net4}
N 600 420 600 520 { lab=#net4}
N 60 460 240 460 { lab=set}
N 360 60 380 60 { lab=#net6}
N 380 60 380 80 { lab=#net6}
N 360 20 560 20 { lab=out}
N 480 20 480 80 { lab=out}
N -60 20 -60 340 {}
N -60 20 200 20 {}
N 60 60 60 460 {}
N 60 60 200 60 {}
N -0 180 -0 400 {}
N -0 180 250 180 {}
N 250 100 250 180 {}
C {vsource.sym} -440 750 0 0 {name=V1 value=1.8}
C {gnd.sym} -440 780 0 0 {name=l1 lab=GND}
C {vdd.sym} -440 720 0 0 {name=l2 lab=Vdd}
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
tran 0.5n 180n
plot set reset clk+2 out+4
.endc
" }
C {gnd.sym} 60 720 0 0 {name=l9 lab=GND}
C {vsource.sym} 60 690 0 0 {name=V6 value="pulse 0 1.8 10n 0.01p  0.01p 20n 60n"}
C {lab_pin.sym} 0 400 0 0 {name=l11 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 560 20 2 0 {name=l6 sig_type=std_logic lab=out}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_3.sym} 300 460 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_3.sym} 300 340 0 0 {name=x4}
C {gnd.sym} 640 480 0 0 {name=l7 lab=GND}
C {capa.sym} 640 450 0 0 {name=C1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 760 440 0 0 {name=l8 lab=GND}
C {capa.sym} 760 410 0 0 {name=C2
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/sr_latch.sym} 500 400 0 0 {name=x3}
C {gnd.sym} 0 800 0 0 {name=l12 lab=GND}
C {vsource.sym} 0 770 0 0 {name=V2 value="pulse 0 1.8 20n 0.01p  0.01p 20n 40n"}
C {gnd.sym} -60 870 0 0 {name=l13 lab=GND}
C {vsource.sym} -60 840 0 0 {name=V3 value="pulse 0 1.8 30n 0.01p  0.01p 20n 60n"}
C {lab_pin.sym} 60 460 0 0 {name=l14 sig_type=std_logic lab=set}
C {lab_pin.sym} -60 460 0 0 {name=l15 sig_type=std_logic lab=reset}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/edg_det.sym} 100 400 0 0 {name=x2}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_flip_flop.sym} 280 40 0 0 {name=x5}
C {gnd.sym} 380 140 0 0 {name=l3 lab=GND}
C {capa.sym} 380 110 0 0 {name=C3
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 480 140 0 0 {name=l4 lab=GND}
C {capa.sym} 480 110 0 0 {name=C4
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
