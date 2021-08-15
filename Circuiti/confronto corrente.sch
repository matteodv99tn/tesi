v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 210 -20 390 -20 { lab=GND}
N 290 -110 350 -110 { lab=Vdd}
N 210 -80 210 -20 { lab=GND}
N 210 -160 210 -140 { lab=Vdd}
N 210 -160 390 -160 { lab=Vdd}
N 390 -160 390 -140 { lab=Vdd}
N 290 -160 290 -110 { lab=Vdd}
N 390 -20 570 -20 { lab=GND}
N 390 -160 570 -160 { lab=Vdd}
N 570 -160 570 -140 { lab=Vdd}
N 490 -110 530 -110 { lab=GND}
N 490 -110 490 -20 { lab=GND}
C {code.sym} -10 -110 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 370 -110 0 0 {name=M1
L=0.15
W=0.42
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
C {gnd.sym} 390 -20 0 0 {name=l2 lab=GND}
C {code_shown.sym} -10 -310 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
dc v1 0 1.8 0.01
plot i(v2) vs vdd
plot i(v3) vs vdd
.endc
" }
C {vsource.sym} 210 -110 0 0 {name=V1 value=1.8}
C {vsource.sym} 390 -50 0 0 {name=V2 value=0}
C {vdd.sym} 390 -160 0 0 {name=l1 lab=Vdd}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 550 -110 0 0 {name=M2
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
C {vsource.sym} 570 -50 0 0 {name=V3 value=0}
