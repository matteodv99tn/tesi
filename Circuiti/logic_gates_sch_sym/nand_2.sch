v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 -620 220 -600 { lab=Vdd}
N 220 -620 380 -620 { lab=Vdd}
N 380 -620 380 -600 { lab=Vdd}
N 220 -540 220 -520 { lab=Y}
N 220 -520 380 -520 { lab=Y}
N 380 -540 380 -520 { lab=Y}
N 300 -520 300 -460 { lab=Y}
N 300 -480 420 -480 { lab=Y}
N 80 -480 120 -480 { lab=A}
N 120 -570 120 -480 { lab=A}
N 120 -570 180 -570 { lab=A}
N 120 -480 120 -430 { lab=A}
N 120 -430 260 -430 { lab=A}
N 90 -420 250 -420 { lab=B}
N 250 -420 250 -370 { lab=B}
N 250 -370 260 -370 { lab=B}
N 250 -570 250 -420 { lab=B}
N 250 -570 340 -570 { lab=B}
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
C {ipin.sym} 90 -480 0 0 {name=p2 lab=A}
C {ipin.sym} 90 -420 0 0 {name=p3 lab=B}
C {opin.sym} 420 -480 0 0 {name=p5 lab=Y}
