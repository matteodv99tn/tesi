v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 200 220 320 { lab=sx}
N 380 320 400 320 { lab=dx}
N 400 200 400 320 { lab=dx}
N 380 200 400 200 { lab=dx}
N 220 200 240 200 { lab=sx}
N 220 320 240 320 { lab=sx}
N 200 260 220 260 { lab=sx}
N 400 260 420 260 { lab=dx}
N 170 300 170 380 { lab=#net1}
N 170 500 450 500 { lab=#net1}
N 450 300 450 380 { lab=#net1}
N 120 260 140 260 { lab=#net2}
N 480 260 500 260 { lab=#net3}
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 170 280 1 1 {name=M5
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
C {xscheme_sky130/sky130_fd_pr/nfet3_01v8.sym} 450 280 1 1 {name=M6
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
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} 320 200 2 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} 300 320 0 0 {name=x2}
C {lab_pin.sym} 220 200 1 0 {name=l5 sig_type=std_logic lab=sx}
C {lab_pin.sym} 400 200 1 0 {name=l7 sig_type=std_logic lab=dx}
