v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 600 300 600 380 { lab=#net1}
N 540 270 560 270 { lab=#net2}
N 540 270 540 410 { lab=#net2}
N 540 410 560 410 { lab=#net2}
N 400 300 400 380 { lab=#net2}
N 440 270 460 270 { lab=#net1}
N 460 270 460 410 { lab=#net1}
N 440 410 460 410 { lab=#net1}
N 400 320 540 320 { lab=#net2}
N 460 360 600 360 { lab=#net1}
N 400 220 400 240 { lab=VDD}
N 400 220 600 220 { lab=VDD}
N 600 220 600 240 { lab=VDD}
N 400 440 400 460 { lab=GND}
N 400 460 600 460 { lab=GND}
N 600 440 600 460 { lab=GND}
N 500 200 500 220 { lab=VDD}
N 500 460 500 480 { lab=GND}
N 300 320 400 320 { lab=#net2}
N 600 360 700 360 { lab=#net1}
N 270 360 270 540 { lab=DA}
N 270 540 730 540 { lab=DA}
N 730 400 730 540 { lab=DA}
N 500 540 500 570 { lab=DA}
N 480 570 500 570 { lab=DA}
N 200 320 240 320 { lab=BL}
N 760 360 800 360 { lab=notBL}
N 200 160 200 630 { lab=BL}
N 800 160 800 630 { lab=notBL}
N 200 160 220 160 { lab=BL}
N 780 160 800 160 { lab=notBL}
N 1280 460 1280 490 { lab=DA}
N 1260 490 1280 490 { lab=DA}
N 1040 200 1060 200 { lab=BL}
N 1480 200 1500 200 { lab=notBL}
N 1180 260 1180 380 { lab=#net3}
N 1180 380 1200 380 { lab=#net3}
N 1340 380 1360 380 { lab=#net4}
N 1360 260 1360 380 { lab=#net4}
N 1340 260 1360 260 { lab=#net4}
N 1180 260 1200 260 { lab=#net3}
N 1140 320 1180 320 { lab=#net3}
N 1360 320 1400 320 { lab=#net4}
N 1460 320 1500 320 { lab=notBL}
N 1040 320 1080 320 { lab=BL}
N 1110 360 1110 460 { lab=DA}
N 1110 460 1430 460 { lab=DA}
N 1430 360 1430 460 { lab=DA}
N 1040 200 1040 520 { lab=BL}
N 1500 200 1500 520 { lab=notBL}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 580 410 0 0 {name=M1
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
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 580 270 0 0 {name=M2
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
C {gnd.sym} 500 480 0 0 {name=l1 lab=GND}
C {vdd.sym} 500 200 0 0 {name=l2 lab=VDD}
C {ipin.sym} 480 570 0 0 {name=p1 lab=DA}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 420 410 0 1 {name=M3
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
C {xscheme_sky130/sky130_fd_pr/pfet3_01v8.sym} 420 270 0 1 {name=M4
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
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 270 340 1 1 {name=M5
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
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 730 380 1 1 {name=M6
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
C {opin.sym} 220 160 0 0 {name=p2 lab=BL}
C {opin.sym} 780 160 2 0 {name=p3 lab=notBL}
C {ipin.sym} 1260 490 0 0 {name=p4 lab=DA}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 1110 340 1 1 {name=M11
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
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 1430 340 1 1 {name=M12
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
C {opin.sym} 1060 200 0 0 {name=p5 lab=BL}
C {opin.sym} 1480 200 2 0 {name=p6 lab=notBL}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} 1260 260 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} 1280 380 0 1 {name=x2}
