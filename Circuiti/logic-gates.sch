v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 420 -660 420 -180 { lab=Vin2}
N 420 -660 480 -660 { lab=Vin2}
N 420 -800 420 -660 { lab=Vin2}
N 420 -800 480 -800 { lab=Vin2}
N 420 -520 480 -520 { lab=Vin2}
N 420 -360 480 -360 { lab=Vin2}
N 340 -840 340 -100 { lab=Vin1}
N 340 -840 480 -840 { lab=Vin1}
N 340 -700 480 -700 { lab=Vin1}
N 340 -560 480 -560 { lab=Vin1}
N 340 -400 480 -400 { lab=Vin1}
N 340 -240 480 -240 { lab=Vin1}
N 700 -240 700 -220 { lab=Vnot}
N 700 -240 720 -240 { lab=Vnot}
N 620 -240 700 -240 { lab=Vnot}
N 700 -380 700 -360 { lab=Vnor}
N 700 -380 720 -380 { lab=Vnor}
N 620 -380 700 -380 { lab=Vnor}
N 700 -540 700 -520 { lab=Vnand}
N 700 -540 720 -540 { lab=Vnand}
N 620 -540 700 -540 { lab=Vnand}
N 700 -680 700 -660 { lab=Vor}
N 700 -680 720 -680 { lab=Vor}
N 620 -680 700 -680 { lab=Vor}
N 700 -820 700 -800 { lab=Vand}
N 700 -820 720 -820 { lab=Vand}
N 620 -820 700 -820 { lab=Vand}
C {code.sym} 10 -130 0 0 {name="Libraries and models"
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {vsource.sym} 260 -70 0 0 {name=V1 value=1.8}
C {vsource.sym} 340 -70 0 0 {name=V2 value="pulse 0 1.8 1.5n 0.01p  0.01p 3n 12n"}
C {vsource.sym} 420 -150 0 0 {name=V3 value="pulse 0 1.8 1.5n 0.01p  0.01p 6n 12n"}
C {gnd.sym} 260 -40 0 0 {name=l1 lab=GND}
C {gnd.sym} 340 -40 0 0 {name=l2 lab=GND}
C {gnd.sym} 420 -120 0 0 {name=l3 lab=GND}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} 540 -240 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 540 -380 0 0 {name=x2}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nand_2.sym} 540 -540 0 0 {name=x3}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/or_2.sym} 540 -680 0 0 {name=x4}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 540 -820 0 0 {name=x5}
C {vdd.sym} 260 -100 0 0 {name=l4 lab=Vdd}
C {capa.sym} 700 -190 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 700 -160 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 720 -240 2 0 {name=l6 sig_type=std_logic lab=Vnot}
C {capa.sym} 700 -330 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 700 -300 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 720 -380 2 0 {name=l8 sig_type=std_logic lab=Vnor}
C {capa.sym} 700 -490 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 700 -460 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 720 -540 2 0 {name=l10 sig_type=std_logic lab=Vnand}
C {capa.sym} 700 -630 0 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 700 -600 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 720 -680 2 0 {name=l12 sig_type=std_logic lab=Vor}
C {capa.sym} 700 -770 0 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 700 -740 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 720 -820 2 0 {name=l14 sig_type=std_logic lab=Vand}
C {lab_pin.sym} 420 -200 0 0 {name=l15 sig_type=std_logic lab=Vin2}
C {lab_pin.sym} 340 -200 0 0 {name=l16 sig_type=std_logic lab=Vin1}
C {code.sym} 10 -280 0 0 {name="Ngspice sim"
only_toplevel=true
format="tcleval( @value )"
value=".control
tran 0.05n 18n
plot vin1 vin2+2 vnot+4 vnor+6 vnand+8 vor+10 vnand+12
wrdata output.txt vin1 vin2+2 vnot+4 vnor+6 vnand+8 vor+10 vnand+1
.endc
"}
