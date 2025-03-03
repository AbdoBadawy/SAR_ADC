v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 390 -60 390 -50 {
lab=GND}
N 350 -190 360 -190 {
lab=GND}
N 350 -200 350 -190 {
lab=GND}
N 120 -240 140 -240 {
lab=VINPi}
N 110 -150 150 -150 {
lab=VINNi}
N 390 -130 390 -120 {
lab=VOUTN}
N 390 -130 460 -130 {
lab=VOUTN}
N 350 -270 350 -260 {
lab=VOUTP}
N 350 -270 410 -270 {
lab=VOUTP}
C {devices/vsource.sym} 90 -240 1 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} 80 -150 1 0 {name=V2 value=0 savecurrent=false}
C {devices/bsource.sym} 350 -230 0 0 {name=B1 VAR=V FUNC="\{VCC/2 + VCC/2*(tanh(V(VINPi,VINNi)*1e6))\}"}
C {devices/gnd.sym} 390 -50 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 360 -190 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 60 -240 0 0 {name=p1 lab=VINP}
C {devices/ipin.sym} 50 -150 0 0 {name=p2 lab=VINN}
C {devices/lab_pin.sym} 140 -240 2 0 {name=p3 sig_type=std_logic lab=VINPi}
C {devices/lab_pin.sym} 150 -150 2 0 {name=p4 sig_type=std_logic lab=VINNi}
C {devices/opin.sym} 410 -270 0 0 {name=p5 lab=VOUTP}
C {devices/opin.sym} 460 -130 0 0 {name=p6 lab=VOUTN}
C {devices/bsource.sym} 390 -90 0 0 {name=B2 VAR=V FUNC="\{VCC/2 + VCC/2*(tanh(V(VINPi,VINNi)*1e6*-1))\}"}
