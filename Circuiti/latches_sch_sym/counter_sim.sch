v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -400 0 -400 40 { lab=Vdd}
N -400 40 -380 40 { lab=Vdd}
N -400 80 -380 80 { lab=RST}
N -400 80 -400 200 { lab=RST}
N -420 200 -400 200 { lab=RST}
N -0 0 660 0 { lab=Vdd}
N 20 140 60 140 { lab=o1}
N -100 260 -90 260 { lab=#net1}
N -90 220 -90 260 { lab=#net1}
N -260 240 -240 240 { lab=CLK}
N -160 140 -140 140 { lab=Vdd}
N -180 180 -140 180 { lab=set}
N 40 140 40 240 { lab=o1}
N 340 140 380 140 { lab=o2}
N 220 260 230 260 { lab=#net2}
N 230 220 230 260 { lab=#net2}
N 160 140 180 140 { lab=Vdd}
N 140 180 180 180 { lab=set}
N 360 140 360 240 { lab=o2}
N 40 240 80 240 { lab=o1}
N 660 140 700 140 { lab=o3}
N 540 260 550 260 { lab=#net3}
N 550 220 550 260 { lab=#net3}
N 480 140 500 140 { lab=Vdd}
N 460 180 500 180 { lab=set}
N 680 140 680 240 { lab=o3}
N 360 240 400 240 { lab=o2}
N 980 140 1020 140 { lab=o4}
N 860 260 870 260 { lab=#net4}
N 870 220 870 260 { lab=#net4}
N 800 140 820 140 { lab=Vdd}
N 780 180 820 180 { lab=set}
N 680 240 720 240 { lab=o3}
N 660 -0 940 -0 { lab=Vdd}
N -440 -0 0 -0 { lab=Vdd}
N -240 60 900 60 { lab=set}
N -260 280 -240 280 { lab=rstclk}
N 60 280 80 280 { lab=rstclk}
N 60 280 60 320 { lab=rstclk}
N 380 280 400 280 { lab=rstclk}
N 380 280 380 320 { lab=rstclk}
N 700 280 720 280 { lab=rstclk}
N 700 280 700 320 { lab=rstclk}
N -400 320 800 320 { lab=rstclk}
N 20 180 20 200 { lab=D1}
N 340 180 340 200 { lab=D2}
N 660 180 660 200 { lab=D3}
N 980 180 980 200 { lab=D4}
N -260 280 -260 320 { lab=rstclk}
N -400 200 -400 260 { lab=RST}
N -160 0 -160 140 { lab=Vdd}
N -180 60 -180 180 { lab=set}
N 160 0 160 140 { lab=Vdd}
N 140 60 140 180 { lab=set}
N 480 0 480 140 { lab=Vdd}
N 460 60 460 180 { lab=set}
N 800 0 800 140 { lab=Vdd}
N 780 60 780 180 { lab=set}
N -1120 40 -1120 80 { lab=RST}
N -1120 40 -1100 40 { lab=RST}
N -1220 40 -1220 80 { lab=CLK}
N -1220 40 -1200 40 { lab=CLK}
N 980 180 1000 180 { lab=D4}
N -580 260 -400 260 { lab=RST}
N -580 260 -580 300 { lab=RST}
N -580 300 -540 300 { lab=RST}
N -580 340 -580 380 { lab=#net5}
N -580 340 -540 340 { lab=#net5}
N -970 170 -970 210 { lab=temp}
N -970 170 -950 170 { lab=temp}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} -60 160 0 0 {name=x5}
C {vdd.sym} -260 0 0 0 {name=l3 lab=Vdd}
C {ipin.sym} -260 240 0 0 {name=p1 lab=CLK}
C {ipin.sym} -420 200 0 0 {name=p6 lab=RST}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} -180 260 0 0 {name=x6}
C {opin.sym} 20 200 1 0 {name=p2 lab=D1}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} 260 160 0 0 {name=x7}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} 140 260 0 0 {name=x8}
C {opin.sym} 340 200 1 0 {name=p7 lab=D2}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} 580 160 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} 460 260 0 0 {name=x2}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} 900 160 0 0 {name=x3}
C {opin.sym} 1000 180 0 0 {name=p4 lab=D4}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} 780 260 0 0 {name=x9}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/xor_2.sym} -320 60 0 0 {name=x4}
C {capa.sym} 980 230 0 0 {name=C1
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 980 260 0 0 {name=l1 lab=GND}
C {vsource.sym} -970 240 0 0 {name=V1 value=1.8}
C {gnd.sym} -1120 140 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -1100 40 2 0 {name=l5 sig_type=std_logic lab=RST}
C {vsource.sym} -1280 110 0 0 {name=V2 value=1.8}
C {gnd.sym} -1280 140 0 0 {name=l6 lab=GND}
C {vdd.sym} -1280 80 0 0 {name=l7 lab=Vdd}
C {sqwsource.sym} -1220 110 0 0 {name=V3 vhi=1.8 freq=1e7}
C {gnd.sym} -1220 140 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -1200 40 2 0 {name=l9 sig_type=std_logic lab=CLK}
C {code.sym} -1290 220 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {code_shown.sym} -1290 380 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 10n 1u
plot d1 d2+2 d3+4 d4+6 clk-2 rst-4
plot o1 o2+2 o3+4 o4+6 clk-2 rst-4
plot rstclk-2 rst set+2
.endc
" }
C {opin.sym} 660 200 1 0 {name=p3 lab=D3}
C {capa.sym} 1050 140 3 0 {name=C3
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1080 140 3 0 {name=l10 lab=GND}
C {lab_pin.sym} 60 140 2 0 {name=l11 sig_type=std_logic lab=o1}
C {lab_pin.sym} 380 140 2 0 {name=l12 sig_type=std_logic lab=o2}
C {lab_pin.sym} 700 140 2 0 {name=l13 sig_type=std_logic lab=o3}
C {lab_pin.sym} 1000 140 1 0 {name=l14 sig_type=std_logic lab=o4}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -480 320 0 0 {name=x10}
C {sqwsource.sym} -580 410 0 0 {name=V4 vhi=1.8 freq=3e7}
C {gnd.sym} -580 440 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -320 320 3 0 {name=l15 sig_type=std_logic lab=rstclk}
C {lab_pin.sym} -220 60 3 0 {name=l16 sig_type=std_logic lab=set}
C {vsource.sym} -1120 110 0 0 {name=V5 value="pulse 0 1.8 250n 0.01p  0.01p 200n 1u"}
C {gnd.sym} -970 270 0 0 {name=l17 lab=GND}
C {lab_pin.sym} -950 170 2 0 {name=l18 sig_type=std_logic lab=temp}
