v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -0 300 0 380 { lab=Vs}
N -60 260 -60 460 { lab=Vr}
N -0 40 -0 300 { lab=Vs}
N -60 -0 -60 260 { lab=Vr}
N 360 240 360 260 { lab=#net1}
N 280 240 400 240 { lab=#net1}
N 520 200 520 220 { lab=#net2}
N 440 200 560 200 { lab=#net2}
N 280 200 440 200 { lab=#net2}
N -300 100 170 100 { lab=EN}
N -300 100 -300 120 { lab=EN}
N 360 40 360 60 { lab=#net3}
N 280 40 400 40 { lab=#net3}
N 520 0 520 20 { lab=#net4}
N 440 0 560 0 { lab=#net4}
N 280 0 440 0 { lab=#net4}
N 360 -160 360 -140 { lab=#net5}
N 280 -160 400 -160 { lab=#net5}
N 520 -200 520 -180 { lab=#net6}
N 440 -200 560 -200 { lab=#net6}
N 280 -200 440 -200 { lab=#net6}
N 0 -160 -0 40 { lab=Vs}
N -60 -200 -60 0 { lab=Vr}
N -300 -100 170 -100 { lab=#net7}
N -300 -100 -300 -80 { lab=#net7}
N 170 -340 170 -320 { lab=CLK}
N 360 -380 360 -360 { lab=#net8}
N 280 -380 400 -380 { lab=#net8}
N 520 -420 520 -400 { lab=#net9}
N 440 -420 560 -420 { lab=#net9}
N 280 -420 440 -420 { lab=#net9}
N -300 -320 170 -320 { lab=CLK}
N -300 -320 -300 -300 { lab=CLK}
N 0 -380 -0 -160 { lab=Vs}
N -60 -420 -60 -200 { lab=Vr}
N -300 -520 60 -520 { lab=CLK}
N -300 -520 -300 -320 { lab=CLK}
N 0 -380 120 -380 { lab=Vs}
N -60 -420 120 -420 { lab=Vr}
N -0 -560 -0 -380 { lab=Vs}
N -60 -600 -60 -420 { lab=Vr}
N 360 -560 360 -540 { lab=notQ}
N 280 -560 400 -560 { lab=notQ}
N 520 -600 520 -580 { lab=Q}
N 440 -600 560 -600 { lab=Q}
N 280 -600 440 -600 { lab=Q}
N 0 -560 120 -560 { lab=Vs}
N -60 -600 120 -600 { lab=Vr}
N 60 -520 170 -520 { lab=CLK}
C {vsource.sym} -440 350 0 0 {name=V1 value=1.8}
C {gnd.sym} -440 380 0 0 {name=l1 lab=GND}
C {vdd.sym} -440 320 0 0 {name=l2 lab=Vdd}
C {vsource.sym} 0 410 0 0 {name=V2 value="pulse 0 1.8 0n 0.01p  0.01p 30n 90n"}
C {gnd.sym} 0 440 0 0 {name=l3 lab=GND}
C {vsource.sym} -60 490 0 0 {name=V3 value="pulse 0 1.8 45n 0.01p  0.01p 30n 90n"}
C {gnd.sym} -60 520 0 0 {name=l6 lab=GND}
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
tran 1n 180n
plot vs vr CLK+2 q+4
plot clk q+2 out+4
wrdata output.txt vs vr q notq CLK
.endc
" }
C {lab_pin.sym} 0 360 0 0 {name=l5 sig_type=std_logic lab=Vs}
C {gnd.sym} 0 440 0 0 {name=l11 lab=GND}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/sr_latch_en.sym} 200 20 0 0 {name=x1}
C {vsource.sym} -300 150 0 0 {name=V4 value="pulse 0 1.8 0 0.01p  0.01p 65n 90n"}
C {gnd.sym} -300 180 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -300 100 0 0 {name=l10 sig_type=std_logic lab=EN}
C {capa.sym} 360 290 0 0 {name=C1
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 360 320 0 0 {name=l12 lab=GND}
C {gnd.sym} 520 280 0 0 {name=l13 lab=GND}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/sr_latch.sym} 200 220 0 0 {name=x2}
C {gnd.sym} 360 120 0 0 {name=l15 lab=GND}
C {gnd.sym} 520 80 0 0 {name=l17 lab=GND}
C {capa.sym} 520 250 0 0 {name=C2
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 360 90 0 0 {name=C3
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 520 50 0 0 {name=C4
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 360 -80 0 0 {name=l8 lab=GND}
C {gnd.sym} 520 -120 0 0 {name=l9 lab=GND}
C {capa.sym} 360 -110 0 0 {name=C5
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 520 -150 0 0 {name=C6
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/sr_flip_flop.sym} 200 -180 0 0 {name=x3}
C {vsource.sym} -300 -50 0 0 {name=V5 value="pulse 0 1.8 8n 0.01p  0.01p 8n 16n"}
C {gnd.sym} -300 -20 0 0 {name=l14 lab=GND}
C {gnd.sym} 360 -300 0 0 {name=l20 lab=GND}
C {gnd.sym} 520 -340 0 0 {name=l21 lab=GND}
C {capa.sym} 360 -330 0 0 {name=C7
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 520 -370 0 0 {name=C8
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -300 -270 0 0 {name=V6 value="pulse 0 1.8 15n 0.01p  0.01p 15n 30n"}
C {gnd.sym} -300 -240 0 0 {name=l24 lab=GND}
C {lab_pin.sym} -300 -320 0 0 {name=l25 sig_type=std_logic lab=CLK}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_flip_flop.sym} 200 -400 0 0 {name=x4}
C {gnd.sym} 170 80 0 0 {name=l16 lab=GND}
C {gnd.sym} 120 0 0 0 {name=l18 lab=GND}
C {gnd.sym} 120 40 0 0 {name=l19 lab=GND}
C {gnd.sym} 120 200 0 0 {name=l26 lab=GND}
C {gnd.sym} 120 240 0 0 {name=l27 lab=GND}
C {gnd.sym} 170 -120 0 0 {name=l28 lab=GND}
C {gnd.sym} 120 -160 0 0 {name=l29 lab=GND}
C {gnd.sym} 120 -200 0 0 {name=l30 lab=GND}
C {gnd.sym} 360 -480 0 0 {name=l31 lab=GND}
C {gnd.sym} 520 -520 0 0 {name=l32 lab=GND}
C {capa.sym} 360 -510 0 0 {name=C9
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 520 -550 0 0 {name=C10
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 400 -560 2 0 {name=l33 sig_type=std_logic lab=notQ}
C {lab_pin.sym} 560 -600 2 0 {name=l34 sig_type=std_logic lab=Q}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} 200 -580 0 0 {name=x5}
