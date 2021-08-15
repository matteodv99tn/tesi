v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 280 -300 280 -260 { lab=Vout}
N 220 -230 240 -230 { lab=Vin}
N 220 -330 220 -230 { lab=Vin}
N 220 -330 240 -330 { lab=Vin}
N 200 -280 220 -280 { lab=Vin}
N 400 -280 400 -260 { lab=Vout}
N 280 -280 440 -280 { lab=Vout}
C {code.sym} -10 -110 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 260 -230 0 0 {name=M1
L=0.15
W=7
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
C {code_shown.sym} 540 -110 0 0 {name=NGSPICE
only_toplevel=true
value=".ic v(vout)=1.8
.control
tran 1p 1200p
plot vin vout+2
wrdata output.txt vin vout
.endc
" }
C {vdd.sym} 160 -80 0 0 {name=l4 lab=Vdd}
C {vsource.sym} 160 -50 0 0 {name=V1 value=1.8}
C {gnd.sym} 160 -20 0 0 {name=l3 lab=GND}
C {vdd.sym} 280 -360 0 0 {name=l1 lab=Vdd}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 260 -330 0 0 {name=M2
L=0.15
W=7
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
C {gnd.sym} 280 -200 0 0 {name=l2 lab=GND}
C {vsource.sym} 240 -50 0 0 {name=V2 value="pulse 0 1.8 250p 0.01p 0.01p 500p 1n"}
C {gnd.sym} 240 -20 0 0 {name=l5 lab=GND}
C {ipin.sym} 200 -280 0 0 {name=p1 lab=Vin}
C {opin.sym} 440 -280 0 0 {name=p2 lab=Vout}
C {lab_pin.sym} 240 -80 1 0 {name=l6 sig_type=std_logic lab=Vin}
C {capa.sym} 400 -230 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 400 -200 0 0 {name=l7 lab=GND}
