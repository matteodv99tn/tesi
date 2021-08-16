v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -100 180 -60 180 { lab=Vs}
N -100 160 -100 180 { lab=Vs}
N -100 60 -60 60 { lab=#net1}
N -100 60 -100 80 { lab=#net1}
N 80 40 200 40 { lab=Vs}
N 80 200 200 200 { lab=#net1}
N 140 40 140 80 { lab=Vs}
N 140 160 140 200 { lab=#net1}
N -100 80 140 160 { lab=#net1}
N -100 160 140 80 { lab=Vs}
N -140 220 -60 220 { lab=Vr}
N -140 20 -60 20 { lab=Vs}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 0 200 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 0 40 0 0 {name=x2}
C {vsource.sym} -440 350 0 0 {name=V1 value=3}
C {gnd.sym} -440 380 0 0 {name=l1 lab=GND}
C {vdd.sym} -440 320 0 0 {name=l2 lab=Vdd}
C {vsource.sym} -360 350 0 0 {name=V2 value=3}
C {gnd.sym} -360 380 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -360 320 1 0 {name=l4 sig_type=std_logic lab=Vs}
C {lab_pin.sym} -140 20 0 0 {name=l5 sig_type=std_logic lab=Vs}
C {vsource.sym} -360 470 0 0 {name=V3 value=3}
C {gnd.sym} -360 500 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -360 440 1 0 {name=l7 sig_type=std_logic lab=Vr}
C {lab_pin.sym} -140 220 0 0 {name=l8 sig_type=std_logic lab=Vr}
C {lab_pin.sym} 200 40 2 0 {name=l9 sig_type=std_logic lab=Qn}
C {lab_pin.sym} 200 200 2 0 {name=l10 sig_type=std_logic lab=Q}
