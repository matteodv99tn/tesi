v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 -420 220 -400 { lab=Y}
N 220 -420 380 -420 { lab=Y}
N 380 -420 380 -400 { lab=Y}
N 300 -440 300 -420 { lab=Y}
N 220 -340 220 -320 { lab=GND}
N 220 -320 380 -320 { lab=GND}
N 380 -340 380 -320 { lab=GND}
N 300 -320 300 -300 { lab=GND}
N 300 -480 300 -440 { lab=Y}
N 300 -460 400 -460 { lab=Y}
N 95 -440 140 -440 { lab=B}
N 140 -440 140 -370 { lab=B}
N 140 -370 180 -370 { lab=B}
N 140 -510 140 -440 { lab=B}
N 140 -510 260 -510 { lab=B}
N 95 -480 240 -480 { lab=A}
N 240 -480 240 -370 { lab=A}
N 240 -370 335 -370 { lab=A}
N 240 -570 240 -480 { lab=A}
N 240 -570 255 -570 { lab=A}
N 255 -570 260 -570 { lab=A}
N 335 -370 340 -370 { lab=A}
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
C {opin.sym} 400 -460 0 0 {name=p2 lab=Y}
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
C {ipin.sym} 100 -480 0 0 {name=p1 lab=A}
C {ipin.sym} 100 -440 0 0 {name=p3 lab=B}
