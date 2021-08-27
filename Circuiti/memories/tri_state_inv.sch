v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 110 80 110 { lab=IN}
N 60 10 60 110 { lab=IN}
N 60 10 80 10 { lab=IN}
N 60 -50 80 -50 { lab=#net1}
N -100 -50 -80 -50 { lab=EN}
N -100 -50 -100 170 { lab=EN}
N -120 60 -100 60 { lab=EN}
N 120 40 120 80 { lab=OUT}
N 120 60 240 60 { lab=OUT}
N 20 60 60 60 { lab=IN}
N -140 60 -120 60 { lab=EN}
N -100 170 80 170 { lab=EN}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 100 110 0 0 {name=M1
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
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 100 170 0 0 {name=M2
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
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 100 10 0 0 {name=M3
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
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 100 -50 0 0 {name=M4
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
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} -20 -50 0 0 {name=x1}
C {ipin.sym} -140 60 0 0 {name=p1 lab=EN}
C {ipin.sym} 20 60 0 0 {name=p2 lab=IN}
C {opin.sym} 240 60 0 0 {name=p3 lab=OUT}
C {vdd.sym} 120 -80 0 0 {name=l1 lab=VDD}
C {gnd.sym} 120 200 0 0 {name=l2 lab=GND}
