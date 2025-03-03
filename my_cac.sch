v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1750 -1190 1750 -1160 {lab=VDAC}
N 1750 -1190 2380 -1190 {lab=VDAC}
N 2380 -1190 2380 -1160 {lab=VDAC}
N 2300 -1190 2300 -1160 {lab=VDAC}
N 2220 -1190 2220 -1160 {lab=VDAC}
N 2130 -1190 2130 -1160 {lab=VDAC}
N 2050 -1190 2050 -1160 {lab=VDAC}
N 1950 -1190 1950 -1160 {lab=VDAC}
N 1850 -1190 1850 -1160 {lab=VDAC}
N 2380 -1100 2380 -1070 {lab=VBOT_D}
N 1670 -1190 1670 -1160 {lab=VDAC}
N 1670 -1190 1750 -1190 {lab=VDAC}
C {bot_plate_sw.sym} 2390 -540 3 0 {name=x1}
C {bot_plate_sw.sym} 2070 -590 3 0 {name=x2[7..0]}
C {devices/capa.sym} 2380 -1130 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2300 -1130 0 0 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2220 -1130 0 0 {name=C3
m=2
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2130 -1130 0 0 {name=C4
m=4
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2050 -1130 0 0 {name=C5
m=8
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1950 -1130 0 0 {name=C6
m=16
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1850 -1130 0 0 {name=C7
m=32
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1750 -1130 0 0 {name=C8
m=64
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2320 -530 3 0 {name=p1 lab=AVDD}
C {devices/lab_pin.sym} 2460 -560 3 1 {name=p2 lab=AGND}
C {devices/lab_pin.sym} 2390 -690 3 1 {name=p3 lab=VBOT_D}
C {devices/lab_pin.sym} 2460 -520 3 0 {name=p4 lab=VREFN}
C {devices/lab_pin.sym} 2320 -560 3 1 {name=p5 lab=VREFP}
C {devices/lab_pin.sym} 2350 -390 3 0 {name=p6 lab=VIN}
C {devices/lab_pin.sym} 2370 -390 3 0 {name=p7 lab=SMPL}
C {devices/lab_pin.sym} 2390 -390 3 0 {name=p8 lab=DW_D}
C {devices/lab_pin.sym} 2410 -390 3 0 {name=p9 lab=SMPL_B}
C {devices/lab_pin.sym} 2380 -1070 1 1 {name=p10 lab=VBOT_D}
C {devices/lab_pin.sym} 2000 -580 3 0 {name=p11 lab=AVDD}
C {devices/lab_pin.sym} 2140 -610 3 1 {name=p12 lab=AGND}
C {devices/lab_pin.sym} 2070 -740 3 1 {name=p13 lab=VBOT[7..0]}
C {devices/lab_pin.sym} 2140 -570 3 0 {name=p14 lab=VREFN}
C {devices/lab_pin.sym} 2000 -610 3 1 {name=p15 lab=VREFP}
C {devices/lab_pin.sym} 2030 -440 3 0 {name=p16 lab=VIN}
C {devices/lab_pin.sym} 2050 -440 3 0 {name=p17 lab=SMPL}
C {devices/lab_pin.sym} 2070 -440 3 0 {name=p18 lab=DW[7..0]}
C {devices/lab_pin.sym} 2090 -440 3 0 {name=p19 lab=SMPL_B}
C {devices/lab_pin.sym} 2300 -1100 1 1 {name=p20 lab=VBOT0}
C {devices/lab_pin.sym} 2220 -1100 1 1 {name=p21 lab=VBOT1}
C {devices/lab_pin.sym} 2130 -1100 1 1 {name=p22 lab=VBOT2}
C {devices/lab_pin.sym} 2050 -1100 1 1 {name=p23 lab=VBOT3}
C {devices/lab_pin.sym} 1950 -1100 1 1 {name=p24 lab=VBOT4}
C {devices/lab_pin.sym} 1850 -1100 1 1 {name=p25 lab=VBOT5}
C {devices/lab_pin.sym} 1750 -1100 1 1 {name=p26 lab=VBOT6}
C {devices/capa.sym} 1670 -1130 0 0 {name=C9
m=128
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1670 -1100 1 1 {name=p27 lab=VBOT7}
C {devices/lab_pin.sym} 2070 -1190 1 0 {name=p28 sig_type=std_logic lab=VDAC}
C {devices/iopin.sym} 1650 -850 0 0 {name=p29 lab=AVDD}
C {devices/iopin.sym} 1760 -850 0 0 {name=p30 lab=AGND}
C {devices/iopin.sym} 1640 -790 0 0 {name=p31 lab=VREFP}
C {devices/iopin.sym} 1750 -790 0 0 {name=p32 lab=VREFN}
C {devices/ipin.sym} 1610 -660 0 0 {name=p33 lab=VIN}
C {devices/ipin.sym} 1620 -610 0 0 {name=p34 lab=SMPL}
C {devices/ipin.sym} 1750 -610 0 0 {name=p35 lab=SMPL_B}
C {devices/ipin.sym} 1630 -540 0 0 {name=p36 lab=DW[7..0]}
C {devices/ipin.sym} 1780 -540 0 0 {name=p37 lab=DW_D}
C {devices/opin.sym} 1640 -730 0 0 {name=p38 lab=VDAC}
