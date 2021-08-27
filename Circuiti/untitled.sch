v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {sqwsource.sym} -280 -30 0 0 {name=V1 vhi=3 freq=1}
C {gnd.sym} -280 0 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -280 -60 0 0 {name=l2 sig_type=std_logic lab=out}
C {code_shown.sym} -150 -30 0 0 {name=s1 only_toplevel=false value=".control
tran 0.01 5
plot out
.endc
"}
