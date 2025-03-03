v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 -160 -160 -160 {
lab=VLOW,QCNT[8..1]}
N -200 -140 -160 -140 {
lab=CLK}
N -200 -120 -160 -120 {
lab=RST,8*VLOW}
N -200 -100 -160 -100 {
lab=VLOW,8*RST}
N -200 -10 -160 -10 {
lab=CMP}
N -200 10 -160 10 {
lab=DW[6..0],EOC}
N -200 30 -160 30 {
lab=QCNT[8..1]}
N -200 50 -160 50 {
lab=VLOW,7*RST}
N 380 -10 410 -10 {
lab=VLOW}
N 380 10 410 10 {
lab=VLOW}
N 380 30 410 30 {
lab=QCNT0}
N 380 50 410 50 {
lab=RST}
N 710 -10 740 -10 {
lab=EOC}
N 710 10 730 10 {
lab=#net1}
N 140 -160 170 -160 {
lab=QCNT[8..0]}
N 140 -140 170 -140 {
lab=Q_B[8..0]}
N 140 -10 160 -10 {
lab=DW[7..0]}
N 140 10 160 10 {
lab=DW_B[7..0]}
N 530 -240 570 -240 {
lab=CMP}
N 530 -210 580 -210 {
lab=CLK}
N 530 -180 580 -180 {
lab=RST}
N 550 -140 600 -140 {
lab=DW[7..0]}
N 550 -120 600 -120 {
lab=DW_B[7..0]}
N 550 -100 600 -100 {
lab=EOC}
C {dff.sym} -10 -130 0 0 {name=xRING_CNT[8..0]}
C {dff.sym} -10 20 0 0 {name=xCODE_REG[7..0]}
C {dff.sym} 560 20 0 0 {name=x3}
C {devices/lab_pin.sym} -230 -160 0 0 {name=p1 sig_type=std_logic lab=VLOW,QCNT[8..1]}
C {devices/lab_pin.sym} -200 -140 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -200 -120 0 0 {name=p3 sig_type=std_logic lab=RST,8*VLOW}
C {devices/lab_pin.sym} -200 -100 0 0 {name=p4 sig_type=std_logic lab=VLOW,8*RST}
C {devices/lab_pin.sym} -200 -10 0 0 {name=p5 sig_type=std_logic lab=CMP}
C {devices/lab_pin.sym} -200 10 0 0 {name=p6 sig_type=std_logic lab=DW[6..0],EOC}
C {devices/lab_pin.sym} -200 30 0 0 {name=p7 sig_type=std_logic lab=QCNT[8..1]}
C {devices/lab_pin.sym} -200 50 0 0 {name=p8 sig_type=std_logic lab=VLOW,7*RST}
C {devices/lab_pin.sym} 380 -10 0 0 {name=p9 sig_type=std_logic lab=VLOW}
C {devices/lab_pin.sym} 380 10 0 0 {name=p10 sig_type=std_logic lab=VLOW}
C {devices/lab_pin.sym} 380 30 0 0 {name=p11 sig_type=std_logic lab=QCNT0}
C {devices/lab_pin.sym} 380 50 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 740 -10 2 0 {name=p13 sig_type=std_logic lab=EOC}
C {devices/lab_pin.sym} 170 -160 2 0 {name=p14 sig_type=std_logic lab=QCNT[8..0]}
C {devices/lab_pin.sym} 170 -140 2 0 {name=p15 sig_type=std_logic lab=Q_B[8..0]}
C {devices/lab_pin.sym} 160 -10 2 0 {name=p16 sig_type=std_logic lab=DW[7..0]}
C {devices/lab_pin.sym} 160 10 2 0 {name=p17 sig_type=std_logic lab=DW_B[7..0]}
C {devices/ipin.sym} 530 -240 0 0 {name=p18 lab=CMP}
C {devices/ipin.sym} 530 -210 0 0 {name=p19 lab=CLK}
C {devices/ipin.sym} 530 -180 0 0 {name=p20 lab=RST}
C {devices/opin.sym} 600 -140 0 0 {name=p21 lab=DW[7..0]}
C {devices/opin.sym} 600 -120 0 0 {name=p22 lab=DW_B[7..0]}
C {devices/opin.sym} 600 -100 0 0 {name=p23 lab=EOC}
C {devices/lab_pin.sym} 570 -240 2 0 {name=p24 sig_type=std_logic lab=CMP}
C {devices/lab_pin.sym} 580 -210 2 0 {name=p25 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 580 -180 2 0 {name=p26 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 550 -140 0 0 {name=p27 sig_type=std_logic lab=DW[7..0]}
C {devices/lab_pin.sym} 550 -120 0 0 {name=p28 sig_type=std_logic lab=DW_B[7..0]}
C {devices/lab_pin.sym} 550 -100 0 0 {name=p29 sig_type=std_logic lab=EOC}
C {devices/code_shown.sym} 120 -410 0 0 {name=s1 only_toplevel=false value="V1 VLOW 0 0
"}
