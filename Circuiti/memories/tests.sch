v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 680 860 680 880 { lab=#net1}
N 680 940 680 980 { lab=OUT}
N 680 1040 680 1060 { lab=#net2}
N 680 960 880 960 { lab=OUT}
N 600 1010 640 1010 { lab=IN}
N 600 910 600 1010 { lab=IN}
N 600 910 640 910 { lab=IN}
N 580 960 600 960 { lab=IN}
N 620 830 640 830 { lab=#net3}
N 460 830 480 830 { lab=EN}
N 460 830 460 1090 { lab=EN}
N 460 1090 640 1090 { lab=EN}
N 440 960 460 960 { lab=EN}
N 120 1060 120 1080 { lab=EN}
N 120 1060 140 1060 { lab=EN}
N 240 1060 240 1080 { lab=IN}
N 240 1060 260 1060 { lab=IN}
C {vsource.sym} 20 1110 0 0 {name=V1 value=1.8}
C {gnd.sym} 20 1140 0 0 {name=l1 lab=GND}
C {vdd.sym} 20 1080 0 0 {name=l2 lab=Vdd}
C {code.sym} -170 720 0 0 {name=Libreries and models
only_toplevel=true
format="tcleval( @value )"
value="

.lib /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt

*.include /home/matteo/xschem_downloads/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {code_shown.sym} -10 730 0 0 {name=NGSPICE
only_toplevel=true
value=".control
dc v3 0 1.8 0.01
plot out vs in
.endc
" }
C {code.sym} -170 870 0 0 {name="Initial conditions" only_toplevel=true
format="tcleval( @value )"
value="
.ic v(r1)=0
.ic v(r2)=0
.ic v(r3)=0
.ic v(r4)=0
"}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 660 830 0 0 {name=M2
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
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 660 1090 0 0 {name=M3
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
C {ipin.sym} 580 960 0 0 {name=p1 lab=IN}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} 540 830 0 0 {name=x1}
C {ipin.sym} 440 960 0 0 {name=p2 lab=EN}
C {gnd.sym} 680 1120 0 0 {name=l3 lab=GND}
C {vdd.sym} 680 800 0 0 {name=l4 lab=Vdd}
C {lab_pin.sym} 140 1060 2 0 {name=l7 sig_type=std_logic lab=EN}
C {vsource.sym} 120 1110 0 0 {name=V2 value=1.8}
C {gnd.sym} 120 1140 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 260 1060 2 0 {name=l9 sig_type=std_logic lab=IN}
C {vsource.sym} 240 1110 0 0 {name=V3 value=1.8}
C {gnd.sym} 240 1140 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 880 960 2 0 {name=l11 sig_type=std_logic lab=OUT}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 660 1010 0 0 {name=M1
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
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 660 910 0 0 {name=M4
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
