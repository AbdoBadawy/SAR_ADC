v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 780 -520 870 -520 {lab=VDACP}
N 870 -520 930 -520 {lab=VDACP}
N 930 -560 930 -520 {lab=VDACP}
N 930 -650 930 -620 {lab=AGND}
N 1310 -200 1330 -200 {lab=#net1}
N 580 -270 1010 -270 {lab=VDACP}
N 930 -520 930 -270 {lab=VDACP}
N 580 -90 1000 -90 {lab=VDACN}
N 1000 -150 1000 -90 {lab=VDACN}
N 1000 -150 1010 -150 {lab=VDACN}
N 970 200 970 230 {lab=AGND}
N 970 -90 970 -80 {lab=VDACN}
N 970 -80 970 -10 {lab=VDACN}
N 970 -10 970 140 {lab=VDACN}
N 730 150 930 150 {lab=VDACN}
N 930 80 930 150 {lab=VDACN}
N 930 80 970 80 {lab=VDACN}
N 1230 520 1290 520 {lab=SMPL_D}
N 1290 520 1300 520 {lab=SMPL_D}
N 890 520 930 520 {lab=SMPL_B}
N 1540 260 1540 310 {lab=SMPL}
N 1540 -60 1540 -40 {lab=SMPL_B}
C {sar1.sym} 110 330 0 0 {name=x1}
C {my_dac.sym} 630 -520 0 0 {name=x2}
C {comparator_behav.sym} 1160 -210 0 0 {name=x3}
C {my_inverter.sym} 1080 520 0 0 {name=x4}
C {tg.sym} 430 -270 0 0 {name=x5}
C {devices/lab_pin.sym} 780 -560 0 1 {name=p1 lab=AVDD}
C {devices/lab_pin.sym} 780 -480 0 1 {name=p2 lab=AGND}
C {devices/lab_pin.sym} 780 -500 0 1 {name=p3 lab=VREFN}
C {devices/lab_pin.sym} 780 -540 0 1 {name=p4 lab=VREFP}
C {devices/lab_pin.sym} 480 -560 0 0 {name=p6 lab=VINP}
C {devices/lab_pin.sym} 480 -540 0 0 {name=p7 lab=SMPL_B_D}
C {devices/lab_pin.sym} 480 -520 0 0 {name=p8 lab=SMPL_D}
C {devices/lab_pin.sym} 480 -500 0 0 {name=p9 lab=VREFP}
C {devices/lab_pin.sym} 480 -480 0 0 {name=p10 lab=DW_B[7..0]}
C {devices/capa.sym} 930 -590 2 0 {name=C1
m=1
value=12.8f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 930 -650 1 0 {name=p11 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 1310 -220 0 1 {name=p12 lab=CMP}
C {devices/lab_pin.sym} 1010 -270 0 0 {name=p13 lab=VDACP}
C {devices/lab_pin.sym} 1010 -150 0 0 {name=p14 lab=VDACN}
C {devices/noconn.sym} 1330 -200 2 0 {name=l1}
C {devices/lab_pin.sym} 280 -240 0 0 {name=p15 lab=SMPL}
C {devices/lab_pin.sym} 430 -200 0 1 {name=p16 lab=AGND}
C {devices/lab_pin.sym} 280 -270 0 0 {name=p17 lab=VCM}
C {devices/lab_pin.sym} 430 -340 0 1 {name=p18 lab=AVDD}
C {tg.sym} 430 -90 0 0 {name=x6}
C {devices/lab_pin.sym} 430 -20 0 1 {name=p20 lab=AGND}
C {devices/lab_pin.sym} 430 -160 0 1 {name=p23 lab=AVDD}
C {devices/lab_pin.sym} 280 -60 0 0 {name=p19 lab=SMPL}
C {devices/lab_pin.sym} 280 -90 0 0 {name=p22 lab=VCM}
C {devices/capa.sym} 970 170 0 0 {name=C2
m=1
value=12.8f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 970 230 3 0 {name=p21 sig_type=std_logic lab=AGND}
C {my_dac.sym} 580 150 0 0 {name=x7}
C {devices/lab_pin.sym} 730 110 0 1 {name=p24 lab=AVDD}
C {devices/lab_pin.sym} 730 190 0 1 {name=p25 lab=AGND}
C {devices/lab_pin.sym} 730 170 0 1 {name=p26 lab=VREFN}
C {devices/lab_pin.sym} 730 130 0 1 {name=p27 lab=VREFP}
C {devices/lab_pin.sym} 430 110 0 0 {name=p29 lab=VINN}
C {devices/lab_pin.sym} 430 130 0 0 {name=p30 lab=SMPL_B_D}
C {devices/lab_pin.sym} 430 150 0 0 {name=p31 lab=SMPL_D}
C {devices/lab_pin.sym} 430 170 0 0 {name=p32 lab=VREFN}
C {devices/lab_pin.sym} 430 190 0 0 {name=p33 lab=DW[7..0]}
C {devices/lab_pin.sym} -40 310 0 0 {name=p28 lab=CMP}
C {devices/lab_pin.sym} -40 330 0 0 {name=p34 lab=CLK}
C {devices/lab_pin.sym} -40 350 0 0 {name=p35 lab=SMPL}
C {devices/lab_pin.sym} 260 310 0 1 {name=p36 lab=DW[7..0]}
C {devices/lab_pin.sym} 260 330 0 1 {name=p37 lab=DW_B[7..0]}
C {devices/lab_pin.sym} 260 350 0 1 {name=p38 lab=EOC}
C {my_inverter.sym} 1450 520 0 0 {name=x8}
C {devices/lab_pin.sym} 1600 520 2 0 {name=p39 lab=SMPL_B_D}
C {devices/lab_pin.sym} 1270 520 3 0 {name=p40 lab=SMPL_D}
C {my_inverter.sym} 1540 110 3 0 {name=x9}
C {devices/lab_pin.sym} 890 520 0 0 {name=p41 lab=SMPL_B}
C {devices/lab_pin.sym} 1540 -60 1 0 {name=p42 lab=SMPL_B}
C {devices/lab_pin.sym} 1540 310 3 0 {name=p43 lab=SMPL}
C {devices/iopin.sym} 1550 -560 0 0 {name=p46 lab=VREFP}
C {devices/iopin.sym} 1550 -500 0 0 {name=p47 lab=VREFN}
C {devices/iopin.sym} 1550 -450 0 0 {name=p48 lab=AVDD}
C {devices/iopin.sym} 1550 -390 0 0 {name=p49 lab=AGND}
C {devices/iopin.sym} 1550 -340 0 0 {name=p50 lab=VCM}
C {devices/ipin.sym} 1780 -560 0 0 {name=p51 lab=VINP}
C {devices/ipin.sym} 1780 -510 0 0 {name=p52 lab=VINN}
C {devices/ipin.sym} 1780 -450 0 0 {name=p53 lab=SMPL}
C {devices/ipin.sym} 1780 -370 0 0 {name=p54 lab=CLK}
C {devices/opin.sym} 1900 -570 0 0 {name=p55 lab=EOC}
C {devices/opin.sym} 1890 -480 0 0 {name=p56 lab=DW[7..0]}
