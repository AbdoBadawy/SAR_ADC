v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 80 -30 80 {
lab=A}
N 90 80 160 80 {
lab=Y}
N -230 40 -20 40 {
lab=B}
C {devices/code_shown.sym} -280 -180 0 0 {name=s2 only_toplevel=false value="a6 [A B] Yi nand1
.model nand1 d_nand(rise_delay = 1e-9 fall_delay = 1e-9 input_load = 1e-12)

v1 Yi Y 0
"}
C {devices/lab_pin.sym} -30 80 2 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 90 80 0 0 {name=p2 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} -20 40 2 0 {name=p3 sig_type=std_logic lab=B}
C {devices/ipin.sym} -230 40 0 0 {name=p4 lab=B}
C {devices/ipin.sym} -120 80 0 0 {name=p5 lab=A}
C {devices/opin.sym} 160 80 0 0 {name=p6 lab=Y}
