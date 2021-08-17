v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 90 -20 90 20 { lab=Y}
N 30 50 50 50 { lab=A}
N 30 -50 30 50 { lab=A}
N 30 -50 50 -50 { lab=A}
N 10 0 30 0 { lab=A}
N 90 0 120 0 { lab=Y}
N 120 0 180 0 { lab=Y}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 70 50 0 0 {name=M1
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
C {vdd.sym} 90 -80 0 0 {name=l1 lab=Vdd}
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 70 -50 0 0 {name=M2
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
C {gnd.sym} 90 80 0 0 {name=l2 lab=GND}
C {ipin.sym} 10 0 0 0 {name=p1 lab=A}
C {opin.sym} 180 0 0 0 {name=p2 lab=Y}
