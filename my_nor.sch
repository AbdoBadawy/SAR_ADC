v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 10 50 10 {
lab=A}
N 170 10 240 10 {
lab=Y}
N -150 -30 60 -30 {
lab=B}
C {devices/lab_pin.sym} 50 10 2 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 170 10 0 0 {name=p2 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} 60 -30 2 0 {name=p3 sig_type=std_logic lab=B}
C {devices/code_shown.sym} -220 -340 0 0 {name=s2 only_toplevel=false value="a6 [A B] Yi nor1
.model nor1 d_nor(rise_delay = 1e-9 fall_delay = 1e-9 input_load = 1e-12)

v1 Yi Y 0
"}
C {devices/ipin.sym} -150 -30 0 0 {name=p4 lab=B}
C {devices/ipin.sym} -40 10 0 0 {name=p5 lab=A}
C {devices/opin.sym} 240 10 0 0 {name=p6 lab=Y}
