v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 20 -130 20 {lab=VIN}
N -160 -150 -160 20 {lab=VIN}
N -160 -150 -130 -150 {lab=VIN}
N -70 -150 -50 -150 {lab=VOUT}
N -50 -150 -50 20 {lab=VOUT}
N -70 20 -50 20 {lab=VOUT}
N -100 -250 -100 -190 {lab=EN}
N -100 60 -100 100 {lab=ENB}
N -100 100 -100 110 {lab=ENB}
N -100 170 -100 190 {lab=AVDD}
N -160 120 -140 120 {lab=EN}
N -160 160 -140 160 {lab=AGND}
N -100 -150 -100 -120 {lab=AGND}
N -100 -10 -100 20 {lab=AVDD}
N -100 -20 -100 -10 {lab=AVDD}
N -100 -20 -30 -20 {lab=AVDD}
C {symbols/nfet_03v3.sym} -100 -170 1 0 {name=M1
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
C {symbols/pfet_03v3.sym} -100 40 3 0 {name=M2
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
C {devices/vcvs.sym} -100 140 0 0 {name=E1 value=-1}
C {devices/lab_pin.sym} -160 160 0 0 {name=p1 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} -160 120 0 0 {name=p2 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} -100 190 3 0 {name=p3 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} -100 80 2 0 {name=p4 sig_type=std_logic lab=ENB}
C {devices/iopin.sym} -100 -120 1 0 {name=p5 lab=AGND}
C {devices/iopin.sym} -30 -20 0 0 {name=p6 lab=AVDD}
C {devices/iopin.sym} -100 -250 3 0 {name=p7 lab=EN}
C {devices/iopin.sym} -50 -70 0 0 {name=p8 lab=VOUT}
C {devices/iopin.sym} -160 -70 2 0 {name=p9 lab=VIN}
