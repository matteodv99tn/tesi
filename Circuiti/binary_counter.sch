v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -220 240 -60 240 { lab=Vdd}
N -200 320 -180 320 { lab=Vdd}
N -200 240 -200 320 { lab=Vdd}
N -240 360 -180 360 { lab=Vdd}
N -240 240 -240 360 { lab=Vdd}
N 120 320 140 320 { lab=Vdd}
N 120 240 120 320 { lab=Vdd}
N 80 360 140 360 { lab=Vdd}
N 80 240 80 360 { lab=Vdd}
N -20 320 40 320 { lab=s1}
N 40 320 40 420 { lab=s1}
N 40 420 190 420 { lab=s1}
N 190 400 190 420 { lab=s1}
N -60 240 140 240 { lab=Vdd}
N 140 240 780 240 { lab=Vdd}
N 440 320 460 320 { lab=Vdd}
N 440 240 440 320 { lab=Vdd}
N 400 360 460 360 { lab=Vdd}
N 400 240 400 360 { lab=Vdd}
N 300 320 360 320 { lab=s2}
N 360 320 360 420 { lab=s2}
N 360 420 510 420 { lab=s2}
N 510 400 510 420 { lab=s2}
N 760 320 780 320 { lab=Vdd}
N 760 240 760 320 { lab=Vdd}
N 720 360 780 360 { lab=Vdd}
N 720 240 720 360 { lab=Vdd}
N 620 320 680 320 { lab=s3}
N 680 320 680 420 { lab=s3}
N 680 420 830 420 { lab=s3}
N 830 400 830 420 { lab=s3}
N -820 320 -800 320 { lab=Vdd}
N -820 240 -820 320 { lab=Vdd}
N -860 360 -800 360 { lab=Vdd}
N -860 240 -860 360 { lab=Vdd}
N -880 240 -800 240 { lab=Vdd}
N -750 400 -750 420 { lab=CLK2}
N -640 360 -600 360 { lab=#net1}
N -600 360 -590 360 { lab=#net1}
N -640 320 -580 320 { lab=out}
N -580 320 -480 320 { lab=out}
N -20 360 0 360 { lab=B1}
N 300 360 320 360 { lab=B2}
N 620 360 640 360 { lab=B3}
N 940 320 1000 320 { lab=s4}
N 1000 320 1000 420 { lab=s4}
N 940 360 960 360 { lab=B4}
N -240 240 -220 240 { lab=Vdd}
N -260 240 -240 240 { lab=Vdd}
N -220 420 -130 420 { lab=CLK}
N -130 400 -130 420 { lab=CLK}
N -130 420 -130 440 { lab=CLK}
N 960 360 960 500 { lab=B4}
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
value=".ic v(s1)=0
.ic v(s2)=0
.ic v(s3)=0
.ic v(s4)=0
.ic v(out)=0

.control
tran 1n 2u
plot CLK B1+2 B2+4 B3+6 B4+8
wrdata output.txt clk b1 b2 b3 b4 
.endc
" }
C {gnd.sym} 1000 480 0 0 {name=l32 lab=GND}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} -100 340 0 0 {name=x5}
C {vdd.sym} 220 240 0 0 {name=l3 lab=Vdd}
C {sqwsource.sym} -130 470 0 0 {name=V2 vhi=1.8 freq=1e7}
C {gnd.sym} -130 500 0 0 {name=l5 lab=GND}
C {capa.sym} 1000 450 0 0 {name=C2
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -220 420 0 0 {name=l6 sig_type=std_logic lab=CLK}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} 220 340 0 0 {name=x1}
C {lab_pin.sym} 0 360 2 0 {name=l7 sig_type=std_logic lab=B1}
C {gnd.sym} 960 560 0 0 {name=l8 lab=GND}
C {capa.sym} 960 530 0 0 {name=C1
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} 540 340 0 0 {name=x2}
C {lab_pin.sym} 320 360 2 0 {name=l9 sig_type=std_logic lab=B2}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} 860 340 0 0 {name=x3}
C {lab_pin.sym} 640 360 2 0 {name=l10 sig_type=std_logic lab=B3}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/jk_latch_ms.sym} -720 340 0 0 {name=x4}
C {vdd.sym} -840 240 0 0 {name=l11 lab=Vdd}
C {sqwsource.sym} -750 450 0 0 {name=V3 vhi=1.8 freq=2e7}
C {gnd.sym} -750 480 0 0 {name=l12 lab=GND}
C {gnd.sym} -520 380 0 0 {name=l13 lab=GND}
C {lab_pin.sym} -480 320 2 0 {name=l14 sig_type=std_logic lab=out}
C {capa.sym} -520 350 0 0 {name=C3
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -620 420 0 0 {name=l15 lab=GND}
C {capa.sym} -620 390 0 0 {name=C4
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -750 410 2 0 {name=l16 sig_type=std_logic lab=CLK2}
C {lab_pin.sym} 960 360 2 0 {name=l17 sig_type=std_logic lab=B4}
C {lab_pin.sym} 40 320 2 0 {name=l4 sig_type=std_logic lab=s1}
C {lab_pin.sym} 360 320 2 0 {name=l18 sig_type=std_logic lab=s2}
C {lab_pin.sym} 680 320 2 0 {name=l19 sig_type=std_logic lab=s3
}
C {lab_pin.sym} 1000 320 2 0 {name=l20 sig_type=std_logic lab=s4}
