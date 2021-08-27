v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -60 360 -60 { lab=#net1}
N 360 -60 360 -40 { lab=#net1}
N 200 -60 240 -60 { lab=xxx}
N 200 -140 200 40 { lab=xxx}
N 270 -120 270 -100 { lab=WL}
N 270 -120 300 -120 { lab=WL}
N 200 -140 220 -140 { lab=xxx}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 270 -80 3 1 {name=M1
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
C {capa.sym} 360 -10 0 0 {name=C1
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 360 20 0 0 {name=l1 lab=GND}
C {ipin.sym} 300 -120 2 0 {name=p1 lab=WL}
C {opin.sym} 220 -140 0 0 {name=p2 lab=BL}
