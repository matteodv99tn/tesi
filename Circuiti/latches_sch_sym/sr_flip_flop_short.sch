v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -20 120 -20 { lab=Q}
N 80 20 120 20 { lab=notQ}
N -50 80 -30 80 { lab=#net1}
N -30 60 -30 80 { lab=#net1}
N -220 80 -170 80 { lab=CLK}
N -220 20 -80 20 { lab=S}
N -220 -20 -80 -20 { lab=R}
C {ipin.sym} -220 -20 0 0 {name=p1 lab=R}
C {ipin.sym} -220 20 0 0 {name=p2 lab=S}
C {opin.sym} 120 -20 0 0 {name=p3 lab=Q}
C {opin.sym} 120 20 0 0 {name=p4 lab=notQ}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/sr_latch_en.sym} 0 0 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/latches_sch_sym/edg_det.sym} -110 80 0 0 {name=x2}
C {ipin.sym} -220 80 0 0 {name=p6 lab=CLK}
