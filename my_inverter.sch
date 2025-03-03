v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 0 -40 0 {
lab=A}
N 80 0 150 0 {
lab=Y}
C {devices/lab_pin.sym} -40 0 2 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 80 0 0 0 {name=p2 sig_type=std_logic lab=Y}
C {devices/code_shown.sym} -160 -220 0 0 {name=s2 only_toplevel=false value="a1 A Yi inv1
.model inv1 d_inverter(rise_delay = 0.5e-9 fall_delay = 0.5e-9 input_load = 0.1e-12)
v1 Yi Y 0
"}
C {devices/ipin.sym} -130 0 0 0 {name=p3 lab=A}
C {devices/opin.sym} 150 0 0 0 {name=p4 lab=Y}
