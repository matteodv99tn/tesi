v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 -420 220 -400 { lab=#net1}
N 220 -420 380 -420 { lab=#net1}
N 380 -420 380 -400 { lab=#net1}
N 300 -440 300 -420 { lab=#net1}
N 220 -340 220 -320 { lab=GND}
N 220 -320 380 -320 { lab=GND}
N 380 -340 380 -320 { lab=GND}
N 300 -320 300 -300 { lab=GND}
N 300 -480 300 -440 { lab=#net1}
N 300 -460 400 -460 { lab=#net1}
N 520 -480 520 -440 { lab=Voutor}
N 460 -510 480 -510 { lab=#net1}
N 460 -510 460 -410 { lab=#net1}
N 460 -410 480 -410 { lab=#net1}
N 430 -460 460 -460 { lab=#net1}
N 520 -460 560 -460 { lab=Voutor}
N 1390 -520 1390 -480 { lab=Voutand}
N 1330 -550 1350 -550 { lab=#net2}
N 1330 -550 1330 -450 { lab=#net2}
N 1330 -450 1350 -450 { lab=#net2}
N 1300 -500 1330 -500 { lab=#net2}
N 1390 -500 1430 -500 { lab=Voutand}
N 400 -460 430 -460 { lab=#net1}
N 1070 -620 1070 -600 { lab=Vdd}
N 1070 -620 1230 -620 { lab=Vdd}
N 1230 -620 1230 -600 { lab=Vdd}
N 1070 -540 1070 -520 { lab=#net2}
N 1070 -520 1230 -520 { lab=#net2}
N 1230 -540 1230 -520 { lab=#net2}
N 1150 -520 1150 -490 { lab=#net2}
N 1150 -500 1300 -500 { lab=#net2}
N 630 -460 630 -440 { lab=Voutor}
N 560 -460 680 -460 { lab=Voutor}
N 1500 -500 1500 -480 { lab=Voutand}
N 1430 -500 1550 -500 { lab=Voutand}
C {code.sym} -10 -110 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 200 -370 0 0 {name=M1
L=0.45
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {code_shown.sym} -380 -120 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 0.05n 18n
plot vin1 vin2+2 voutor+4 voutand+6
wrdata output.txt vin1 vin2 voutor voutand
.endc
" }
C {vdd.sym} 160 -80 0 0 {name=l4 lab=Vdd}
C {vsource.sym} 160 -50 0 0 {name=V1 value=1.8}
C {gnd.sym} 160 -20 0 0 {name=l3 lab=GND}
C {vdd.sym} 300 -600 0 0 {name=l1 lab=Vdd}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 280 -510 0 0 {name=M3
L=0.15
W=4.8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {gnd.sym} 300 -300 0 0 {name=l2 lab=GND}
C {vsource.sym} 240 -50 0 0 {name=V2 value="pulse 0 1.8 1.5n 0.01p  0.01p 3n 6n"}
C {gnd.sym} 240 -20 0 0 {name=l5 lab=GND}
C {opin.sym} 680 -460 0 0 {name=p2 lab=Voutor}
C {lab_pin.sym} 240 -80 1 0 {name=l6 sig_type=std_logic lab=Vin1}
C {capa.sym} 630 -410 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 630 -380 0 0 {name=l7 lab=GND}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 280 -570 0 0 {name=M4
L=0.15
W=4.8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 360 -370 0 0 {name=M2
L=0.45
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} 530 -50 0 0 {name=V3 value="pulse 0 1.8 1.5n 0.01p  0.01p 6n 12n"}
C {gnd.sym} 530 -20 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 530 -80 1 0 {name=l9 sig_type=std_logic lab=Vin2

}
C {lab_pin.sym} 180 -370 0 0 {name=l10 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 260 -570 0 0 {name=l11 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 340 -370 0 0 {name=l12 sig_type=std_logic lab=Vin2

}
C {lab_pin.sym} 260 -510 0 0 {name=l13 sig_type=std_logic lab=Vin2

}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 500 -410 0 0 {name=M5
L=0.45
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 500 -510 0 0 {name=M6
L=0.45
W=4.8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {gnd.sym} 520 -380 0 0 {name=l14 lab=GND}
C {vdd.sym} 520 -540 0 0 {name=l15 lab=Vdd}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 1370 -450 0 0 {name=M7
L=0.45
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 1370 -550 0 0 {name=M8
L=0.45
W=4.8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {gnd.sym} 1390 -420 0 0 {name=l16 lab=GND}
C {vdd.sym} 1390 -580 0 0 {name=l17 lab=Vdd}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 1210 -570 0 0 {name=M11
L=0.45
W=4.8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 1050 -570 0 0 {name=M12
L=0.45
W=4.8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 1130 -460 0 0 {name=M9
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 1130 -400 0 0 {name=M10
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 1150 -370 0 0 {name=l18 lab=GND}
C {vdd.sym} 1150 -620 0 0 {name=l19 lab=Vdd}
C {lab_pin.sym} 1030 -570 0 0 {name=l20 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 1190 -570 0 0 {name=l22 sig_type=std_logic lab=Vin2

}
C {lab_pin.sym} 1110 -460 0 0 {name=l21 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 1110 -400 0 0 {name=l23 sig_type=std_logic lab=Vin2

}
C {capa.sym} 1500 -450 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1500 -420 0 0 {name=l24 lab=GND}
C {opin.sym} 1550 -500 0 0 {name=p3 lab=Voutand}
