v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {code.sym} -10 -110 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 470 -110 0 0 {name=M1
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
C {gnd.sym} 490 -20 0 0 {name=l2 lab=GND}
C {code_shown.sym} 0 -280 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
dc v1 0 1.8 0.01 v2 0 1.8 0.3
plot i(v3) vs vdd
wrdata output.txt vdd vs i(v3)
.endc
" }
C {vdd.sym} 160 -80 0 0 {name=l4 lab=Vdd}
C {vsource.sym} 160 -50 0 0 {name=V1 value=1.8}
C {gnd.sym} 160 -20 0 0 {name=l3 lab=GND}
C {vsource.sym} 280 -50 0 0 {name=V2 value=1.8
}
C {gnd.sym} 280 -20 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 280 -80 1 0 {name=l5 sig_type=std_logic lab=Vg
}
C {lab_pin.sym} 450 -110 0 0 {name=l7 sig_type=std_logic lab=Vg
}
C {vsource.sym} 490 -50 0 0 {name=V3 value=0}
C {vdd.sym} 490 -140 0 0 {name=l1 lab=Vdd}
