v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 200 190 200 {lab=#net1}
N 190 80 190 200 {lab=#net1}
N 190 80 210 80 {lab=#net1}
N -220 40 -180 40 {lab=#net2}
N -180 0 -180 40 {lab=#net2}
N -180 -0 -160 -0 {lab=#net2}
N 250 80 310 80 {lab=AVDD}
N -120 0 -70 -0 {lab=AGND}
N -120 -150 -120 -30 {lab=VBOT}
N -120 -150 250 -150 {lab=VBOT}
N 250 -150 250 50 {lab=VBOT}
N 560 -150 560 -90 {lab=VBOT}
N 250 -150 560 -150 {lab=VBOT}
N 320 -300 360 -300 {lab=AVDD}
N 460 60 490 60 {lab=AVDD}
N 630 60 670 60 {lab=AGND}
N 320 -250 360 -250 {lab=AGND}
N 560 210 560 240 {lab=VIN}
N 590 210 590 270 {lab=SMPL}
N 590 270 620 270 {lab=SMPL}
N -20 180 20 180 {lab=D}
N -20 230 20 230 {lab=SMPL_B}
N -480 -10 -430 -10 {lab=D}
N -480 90 -430 90 {lab=SMPL}
N -120 30 -120 70 {lab=VREFN}
N 250 110 250 150 {lab=VREFP}
N -30 230 -30 300 {lab=SMPL_B}
N -30 230 -20 230 {lab=SMPL_B}
N 150 -180 150 -150 {lab=VBOT}
C {symbols/nfet_03v3.sym} -140 0 0 0 {name=M1
L=0.28u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 230 80 0 0 {name=M2
L=0.28u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {tg.sym} 560 60 3 0 {name=x1}
C {my_nand.sym} 80 200 0 0 {name=x2}
C {my_nor.sym} -370 40 0 0 {name=x3}
C {devices/lab_pin.sym} 310 80 2 0 {name=p1 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} -70 0 2 0 {name=p2 sig_type=std_logic lab=AGND}
C {devices/iopin.sym} 360 -300 0 0 {name=p3 lab=AVDD}
C {devices/lab_pin.sym} 320 -300 0 0 {name=p4 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 460 60 0 0 {name=p5 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 670 60 2 0 {name=p6 sig_type=std_logic lab=AGND}
C {devices/iopin.sym} 360 -250 0 0 {name=p7 lab=AGND}
C {devices/lab_pin.sym} 320 -250 0 0 {name=p8 sig_type=std_logic lab=AGND}
C {devices/ipin.sym} 560 240 3 0 {name=p9 lab=VIN}
C {devices/ipin.sym} 620 270 2 0 {name=p10 lab=SMPL}
C {devices/lab_pin.sym} -20 180 0 0 {name=p11 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} -480 90 0 0 {name=p13 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} -480 -10 0 0 {name=p14 sig_type=std_logic lab=D}
C {devices/iopin.sym} -120 70 1 0 {name=p15 lab=VREFN}
C {devices/iopin.sym} 250 150 1 0 {name=p16 lab=VREFP}
C {devices/ipin.sym} -440 290 2 0 {name=p20 lab=D}
C {devices/iopin.sym} 150 -180 0 0 {name=p21 lab=VBOT}
C {devices/ipin.sym} -30 300 3 0 {name=p12 lab=SMPL_B}
