v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 150 160 150 {
lab=Q}
N 110 200 160 200 {
lab=QB}
N -330 90 -280 90 {
lab=D}
N -330 130 -280 130 {
lab=CLK}
N -330 170 -280 170 {
lab=SET}
N -330 210 -280 210 {
lab=RST}
C {devices/ipin.sym} -330 90 0 0 {name=p1 lab=D}
C {devices/ipin.sym} -330 130 0 0 {name=p2 lab=CLK}
C {devices/ipin.sym} -330 170 0 0 {name=p3 lab=SET}
C {devices/ipin.sym} -330 210 0 0 {name=p4 lab=RST}
C {devices/opin.sym} 160 150 0 0 {name=p7 lab=Q}
C {devices/opin.sym} 160 200 0 0 {name=p8 lab=QB}
C {devices/lab_pin.sym} 110 150 0 0 {name=p9 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 110 200 0 0 {name=p10 sig_type=std_logic lab=QB}
C {devices/lab_pin.sym} -280 90 2 0 {name=p11 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} -280 130 2 0 {name=p12 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -280 170 2 0 {name=p13 sig_type=std_logic lab=SET}
C {devices/lab_pin.sym} -280 210 2 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/code_shown.sym} -340 -250 0 0 {name=s2 only_toplevel=false value="a1 D CLK SET RST Qi QBi flop1
.model flop1 d_dff(clk_delay = 1e-9 set_delay = 1e-9
+ reset_delay = 1e-9 ic = 2 rise_delay = 1e-9
+ fall_delay = 1e-9)

v1 Qi Q 0
V2 QBi QB 0
"}
