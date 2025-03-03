v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 10 510 130 510 {lab=SMPL_B}
N 430 510 520 510 {lab=SMPL_D}
N 660 -20 980 -20 {lab=VDAC}
N 1280 -90 1370 -90 {lab=CMP}
N 840 -20 840 30 {lab=VDAC}
N 1280 -70 1360 -70 {lab=#net1}
N 50 -40 180 -40 {lab=DW_B[7..0]}
C {sar1.sym} -100 -40 0 0 {name=x1}
C {devices/lab_pin.sym} -250 -60 0 0 {name=p1 lab=CMP}
C {devices/lab_pin.sym} -250 -40 0 0 {name=p2 lab=CLK}
C {devices/lab_pin.sym} -250 -20 0 0 {name=p3 lab=SMPL}
C {devices/lab_pin.sym} 50 -60 0 1 {name=p4 lab=DW[7..0]}
C {devices/lab_pin.sym} 50 -40 0 1 {name=p5 lab=DW_B[7..0]}
C {devices/lab_pin.sym} 50 -20 0 1 {name=p6 lab=EOC}
C {my_dac.sym} 510 -20 0 0 {name=x2}
C {devices/lab_pin.sym} 660 -60 0 1 {name=p7 lab=AVDD}
C {devices/lab_pin.sym} 660 20 0 1 {name=p8 lab=AGND}
C {devices/lab_pin.sym} 660 0 0 1 {name=p9 lab=VREFN}
C {devices/lab_pin.sym} 660 -40 0 1 {name=p10 lab=VREFP}
C {devices/lab_pin.sym} 660 -20 0 1 {name=p11 lab=VDAC}
C {devices/lab_pin.sym} 360 -60 0 0 {name=p12 lab=VIN}
C {devices/lab_pin.sym} 360 -40 0 0 {name=p13 lab=SMPL_B_D}
C {devices/lab_pin.sym} 360 -20 0 0 {name=p14 lab=SMPL_D}
C {devices/lab_pin.sym} 360 20 0 0 {name=p16 lab=DW[7..0]}
C {devices/lab_pin.sym} 360 0 2 1 {name=p15 lab=VREFN}
C {my_inverter.sym} -140 510 0 0 {name=x3}
C {my_inverter.sym} 280 510 0 0 {name=x4}
C {my_inverter.sym} 670 510 0 0 {name=x5}
C {devices/lab_pin.sym} 50 510 1 0 {name=p17 sig_type=std_logic lab=SMPL_B}
C {devices/lab_pin.sym} -290 510 0 0 {name=p18 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} 480 510 1 0 {name=p19 sig_type=std_logic lab=SMPL_D}
C {devices/lab_pin.sym} 820 510 2 0 {name=p20 sig_type=std_logic lab=SMPL_B_D}
C {comparator_behav.sym} 1130 -80 0 0 {name=x6}
C {devices/lab_pin.sym} 980 -140 0 0 {name=p21 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 1370 -90 2 0 {name=p22 sig_type=std_logic lab=CMP}
C {tg.sym} 840 180 3 0 {name=x7}
C {devices/lab_pin.sym} 870 330 3 0 {name=p23 lab=SMPL}
C {devices/lab_pin.sym} 910 180 3 1 {name=p24 lab=AGND}
C {devices/lab_pin.sym} 840 330 3 0 {name=p25 lab=VCM}
C {devices/lab_pin.sym} 770 180 3 1 {name=p26 lab=AVDD}
C {devices/noconn.sym} 1360 -70 2 0 {name=l1}
C {devices/noconn.sym} 180 -40 2 0 {name=l2}
C {devices/iopin.sym} -100 -430 0 0 {name=p27 lab=AGND}
C {devices/iopin.sym} 10 -430 0 0 {name=p28 lab=AVDD}
C {devices/iopin.sym} 140 -430 0 0 {name=p29 lab=VREFP}
C {devices/iopin.sym} 240 -430 0 0 {name=p30 lab=VREFN}
C {devices/iopin.sym} 370 -430 0 0 {name=p31 lab=VCM}
C {devices/ipin.sym} -50 -380 0 0 {name=p32 lab=VIN}
C {devices/ipin.sym} 60 -380 0 0 {name=p33 lab=SMPL}
C {devices/ipin.sym} 150 -380 0 0 {name=p34 lab=CLK}
C {devices/opin.sym} -60 -320 0 0 {name=p35 lab=DW[7..0]}
C {devices/opin.sym} 50 -320 0 0 {name=p36 lab=EOC}
