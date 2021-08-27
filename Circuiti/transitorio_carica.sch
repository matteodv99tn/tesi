v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 240 -190 300 -190 { lab=#net1}
N 340 -160 340 -130 { lab=GND}
N 340 -240 460 -240 { lab=Vout}
N 460 -240 460 -220 { lab=Vout}
N 340 -240 340 -220 { lab=Vout}
N 460 -150 460 -130 { lab=GND}
N 460 -220 460 -210 { lab=Vout}
C {code.sym} -10 -110 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice ss

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 320 -190 0 0 {name=M1
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
C {gnd.sym} 340 -130 0 0 {name=l2 lab=GND}
C {code_shown.sym} 0 -310 0 0 {name=NGSPICE
only_toplevel=true
value="
.ic v(vout)=1.8
.control
tran 0.01n 10n
wrdata output.txt vout
plot vout
.endc
" }
C {vsource.sym} 240 -160 0 0 {name=V1 value=1.8}
C {gnd.sym} 240 -130 0 0 {name=l1 lab=GND}
C {capa.sym} 460 -180 0 0 {name=C1
m=1
value=0.75p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 460 -130 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 460 -240 2 0 {name=l4 sig_type=std_logic lab=Vout}
