v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 940 500 1340 500 { lab=O3}
N 940 480 1340 480 { lab=O2}
N 940 460 1340 460 { lab=O1}
N 940 440 1340 440 { lab=O4}
N 960 500 960 530 { lab=O3}
N 1040 480 1040 530 { lab=O2}
N 1120 460 1120 530 { lab=O1}
N 1200 440 1200 530 { lab=O4}
N 680 530 680 560 { lab=CLK}
N 620 460 620 700 { lab=reset}
N 620 460 640 460 { lab=reset}
N 580 440 580 780 { lab=en}
N 580 440 640 440 { lab=en}
C {vsource.sym} -440 350 0 0 {name=V1 value=1.8}
C {gnd.sym} -440 380 0 0 {name=l1 lab=GND}
C {vdd.sym} -440 320 0 0 {name=l2 lab=Vdd}
C {code.sym} -170 720 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {code_shown.sym} -10 730 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 10n 2000n
plot reset en clk+2 O1+4 O2+6 O3+8 O4+10
wrdata output.txt clk reset en o1 o2 o3 o4
.endc
" }
C {capa.sym} 960 560 0 0 {name=C1
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 960 590 0 0 {name=l8 lab=GND}
C {gnd.sym} 580 840 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 680 550 2 0 {name=l30 sig_type=std_logic lab=CLK}
C {vsource.sym} 580 810 0 0 {name=V3 value="pulse 0 1.8 200n 1n 1n 600n 800n"}
C {code.sym} -170 870 0 0 {name="Initial conditions" only_toplevel=true
format="tcleval( @value )"
value="
.ic v(r1)=0
.ic v(r2)=0
.ic v(r3)=0
.ic v(r4)=0
"}
C {capa.sym} 1040 560 0 0 {name=C2
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1040 590 0 0 {name=l6 lab=GND}
C {gnd.sym} 620 760 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1340 460 2 0 {name=l12 sig_type=std_logic lab=O1}
C {vsource.sym} 620 730 0 0 {name=V5 value="pulse 0 1.8 0n 1n 1n 100n 1300n"}
C {/home/matteo/Documenti/tesi/Circuiti/counter/counter.sym} 800 480 0 0 {name=x1}
C {capa.sym} 1120 560 0 0 {name=C3
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1120 590 0 0 {name=l4 lab=GND}
C {capa.sym} 1200 560 0 0 {name=C4
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1200 590 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 1340 480 2 0 {name=l10 sig_type=std_logic lab=O2}
C {lab_pin.sym} 1340 500 2 0 {name=l11 sig_type=std_logic lab=O3}
C {lab_pin.sym} 1340 440 2 0 {name=l13 sig_type=std_logic lab=O4}
C {lab_pin.sym} 620 680 2 0 {name=l15 sig_type=std_logic lab=reset}
C {sqwsource.sym} 680 590 0 0 {name=V4 vhi=1.8 freq=1e7}
C {gnd.sym} 680 620 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 580 680 0 0 {name=l17 sig_type=std_logic lab=en}
