v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 -620 220 -600 { lab=Vdd}
N 220 -620 380 -620 { lab=Vdd}
N 380 -620 380 -600 { lab=Vdd}
N 220 -540 220 -520 { lab=Vout}
N 220 -520 380 -520 { lab=Vout}
N 380 -540 380 -520 { lab=Vout}
N 300 -520 300 -460 { lab=Vout}
N 300 -480 520 -480 { lab=Vout}
C {code.sym} -10 -110 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 280 -430 0 0 {name=M1
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
C {code_shown.sym} -300 -120 0 0 {name=NGSPICE
only_toplevel=true
value=".control
tran 0.05n 18n
plot vin1 vin2+2 vout+4
wrdata output.txt vin1 vin2 vout
.endc
" }
C {vdd.sym} 160 -80 0 0 {name=l4 lab=Vdd}
C {vsource.sym} 160 -50 0 0 {name=V1 value=1.8}
C {gnd.sym} 160 -20 0 0 {name=l3 lab=GND}
C {vdd.sym} 300 -620 0 0 {name=l1 lab=Vdd}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 360 -570 0 0 {name=M3
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
C {gnd.sym} 300 -340 0 0 {name=l2 lab=GND}
C {vsource.sym} 240 -50 0 0 {name=V2 value="pulse 0 1.8 1.5n 0.01p  0.01p 3n 6n"}
C {gnd.sym} 240 -20 0 0 {name=l5 lab=GND}
C {opin.sym} 520 -480 0 0 {name=p2 lab=Vout}
C {lab_pin.sym} 240 -80 1 0 {name=l6 sig_type=std_logic lab=Vin1}
C {capa.sym} 440 -450 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 440 -420 0 0 {name=l7 lab=GND}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 200 -570 0 0 {name=M4
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
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 280 -370 0 0 {name=M2
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
C {vsource.sym} 530 -50 0 0 {name=V3 value="pulse 0 1.8 1.5n 0.01p  0.01p 6n 12n"}
C {gnd.sym} 530 -20 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 530 -80 1 0 {name=l9 sig_type=std_logic lab=Vin2

}
C {lab_pin.sym} 260 -430 0 0 {name=l10 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 180 -570 0 0 {name=l11 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 260 -370 0 0 {name=l12 sig_type=std_logic lab=Vin2

}
C {lab_pin.sym} 340 -570 0 0 {name=l13 sig_type=std_logic lab=Vin2

}
