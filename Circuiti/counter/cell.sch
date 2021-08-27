v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -80 440 -60 440 { lab=#net1}
N -80 440 -80 460 { lab=#net1}
N -80 460 100 500 { lab=#net1}
N 100 500 100 540 { lab=#net1}
N 80 540 100 540 { lab=#net1}
N -80 520 -60 520 { lab=#net2}
N -80 500 -80 520 { lab=#net2}
N -80 500 100 460 { lab=#net2}
N 100 420 100 460 { lab=#net2}
N 80 420 100 420 { lab=#net2}
N 100 420 120 420 { lab=#net2}
N -100 420 -80 420 { lab=#net3}
N -80 400 -80 420 { lab=#net3}
N -80 400 -60 400 { lab=#net3}
N -100 540 -80 540 { lab=#net4}
N -80 540 -80 560 { lab=#net4}
N -80 560 -60 560 { lab=#net4}
N 340 440 360 440 { lab=notQ}
N 340 440 340 460 { lab=notQ}
N 340 460 520 500 { lab=notQ}
N 520 500 520 540 { lab=notQ}
N 500 540 520 540 { lab=notQ}
N 340 520 360 520 { lab=Q}
N 340 500 340 520 { lab=Q}
N 340 500 520 460 { lab=Q}
N 520 420 520 460 { lab=Q}
N 500 420 520 420 { lab=Q}
N 320 420 340 420 { lab=#net5}
N 340 400 340 420 { lab=#net5}
N 340 400 360 400 { lab=#net5}
N 320 540 340 540 { lab=#net6}
N 340 540 340 560 { lab=#net6}
N 340 560 360 560 { lab=#net6}
N 160 520 180 520 { lab=#net7}
N 160 440 160 520 { lab=#net7}
N 160 440 180 440 { lab=#net7}
N 80 640 120 640 { lab=#net7}
N 120 480 120 640 { lab=#net7}
N 120 480 160 480 { lab=#net7}
N 100 540 140 540 { lab=#net1}
N 140 540 140 560 { lab=#net1}
N 140 560 180 560 { lab=#net1}
N 120 420 140 420 { lab=#net2}
N 140 400 140 420 { lab=#net2}
N 140 400 180 400 { lab=#net2}
N -260 520 -240 520 { lab=EN}
N -260 440 -260 520 { lab=EN}
N -260 440 -240 440 { lab=EN}
N -460 640 -60 640 { lab=EN}
N -280 480 -260 480 { lab=EN}
N -280 480 -280 640 { lab=EN}
N -300 540 -260 540 { lab=#net8}
N -260 540 -260 560 { lab=#net8}
N -260 560 -240 560 { lab=#net8}
N -300 420 -260 420 { lab=#net9}
N -260 400 -260 420 { lab=#net9}
N -260 400 -240 400 { lab=#net9}
N -440 560 -440 700 { lab=notQ}
N -440 700 540 700 { lab=notQ}
N -440 360 -440 400 { lab=Q}
N -440 360 560 360 { lab=Q}
N 520 540 600 540 { lab=notQ}
N -480 440 -440 440 { lab=S}
N -480 520 -440 520 { lab=R}
N 600 540 640 540 { lab=notQ}
N -480 640 -460 640 { lab=EN}
N 520 420 640 420 {}
N 540 420 540 700 {}
N 560 360 560 540 {}
C {opin.sym} 640 540 0 0 {name=p2 lab=notQ}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 0 420 0 0 {name=x1}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 0 540 0 0 {name=x2}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -180 420 0 0 {name=x5}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -180 540 0 0 {name=x7}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/not.sym} 0 640 0 0 {name=x8}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 420 420 0 0 {name=x14}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/nor_2.sym} 420 540 0 0 {name=x16}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 240 420 0 0 {name=x17}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} 240 540 0 0 {name=x19}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -380 420 0 0 {name=x21}
C {/home/matteo/Documenti/tesi/Circuiti/logic_gates_sch_sym/and_2.sym} -380 540 0 0 {name=x22}
C {opin.sym} 640 420 0 0 {name=p1 lab=Q}
C {ipin.sym} -480 440 0 0 {name=p3 lab=S}
C {ipin.sym} -480 520 0 0 {name=p4 lab=R}
C {ipin.sym} -480 640 0 0 {name=p5 lab=EN}
