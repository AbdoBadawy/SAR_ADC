v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 560 -80 1360 320 {flags=graph
y1=-1000000
y2=0.11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00011470865
x2=0.000102724
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vin"
color="5 6"
dataset=-1
unitx=1
logx=0
logy=0
}
N 50 -10 90 -10 {lab=#net1}
N -30 -10 -10 -10 {lab=#net2}
N -30 110 -10 110 {lab=#net2}
N -30 -10 -30 110 {lab=#net2}
N 50 110 80 110 {lab=#net1}
N 80 -10 80 110 {lab=#net1}
N -50 -10 -30 -10 {lab=#net2}
N 160 30 270 30 {lab=#net3}
N 160 -10 160 30 {lab=#net3}
N 150 -10 160 -10 {lab=#net3}
N 260 -10 270 -10 {lab=GND}
N 260 -30 260 -10 {lab=GND}
N 310 -50 310 -20 {lab=#net4}
N 310 -50 370 -50 {lab=#net4}
N 370 -50 370 -20 {lab=#net4}
N 390 -20 390 -0 {lab=#net4}
N 370 -20 390 -20 {lab=#net4}
N 390 60 390 100 {lab=#net3}
N -200 -10 -110 -10 {lab=VIN}
N 20 150 20 180 {lab=#net5}
N 20 210 20 230 {
lab=#net5}
N 20 290 20 300 {
lab=GND}
N 20 180 20 210 {lab=#net5}
N -80 -80 -80 -50 {lab=#net6}
N -80 -130 -80 -110 {
lab=#net6}
N -80 -200 -80 -190 {
lab=GND}
N -80 -110 -80 -80 {lab=#net6}
N -80 -70 120 -70 {lab=#net6}
N 120 -70 120 -50 {lab=#net6}
N -100 -60 -100 -50 {lab=GND}
N 80 -50 100 -50 {lab=GND}
N 40 150 40 170 {lab=GND}
N -210 -10 -200 -10 {lab=VIN}
N 390 100 390 120 {lab=#net3}
N 250 120 390 120 {lab=#net3}
N 250 30 250 120 {lab=#net3}
N 310 40 310 70 {lab=GND}
N -260 130 -260 210 {
lab=GND}
N -260 -10 -210 -10 {lab=VIN}
N 390 -20 410 -20 {lab=#net4}
N 470 -20 500 -20 {lab=VOUT}
N 420 -80 420 -60 {lab=GND}
N 440 -170 440 -60 {lab=#net6}
N 80 -170 440 -170 {lab=#net6}
N 80 -170 80 -70 {lab=#net6}
N -260 60 -260 70 {lab=#net7}
N -260 -10 -260 -0 {lab=VIN}
C {devices/switch_ngspice.sym} -80 -10 1 0 {name=S1 model=SWITCH1}
C {devices/switch_ngspice.sym} 120 -10 1 0 {name=S2 model=SWITCH1}
C {devices/capa.sym} 20 -10 1 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} 20 110 3 0 {name=S3 model=SWITCH1}
C {devices/vcvs.sym} 310 10 0 0 {name=E1 value=10e6}
C {devices/gnd.sym} 260 -30 2 0 {name=l1 lab=GND}
C {devices/capa.sym} 390 30 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 20 260 0 0 {name=V3 value="PULSE(0 \{VDD\} \{0.5*TS\} \{TRF\} \{TRF\} \{TON\} \{TS\})" savecurrent=false}
C {devices/gnd.sym} 20 300 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -80 -160 2 0 {name=V1 value="PULSE(0 \{VDD\} 0 \{TRF\} \{TRF\} \{TON\} \{TS\})" savecurrent=false}
C {devices/gnd.sym} -80 -200 2 0 {name=l2 lab=GND}
C {devices/gnd.sym} -100 -60 2 0 {name=l3 lab=GND}
C {devices/gnd.sym} 80 -50 1 0 {name=l4 lab=GND}
C {devices/gnd.sym} 40 170 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 500 -20 2 0 {name=p1 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 560 -440 0 0 {name=s4 only_toplevel=false value="*Required model for the switch (the switch threshold default value is zero) 
.model SWITCH1 sw vt=\{VDD/2\} 
 
*These are the values of the parameters to be used 
.param TS=1u TON=\{0.4*TS\} TRF=1n TDROP=\{0.5/FIN\} TSTOP=\{(NCYC/FIN)+TDROP\} 
.param CH=1p CP=\{0.1*CH\} RSIG=1k NCYC=5 NFFT=256 FIN=\{(NCYC/NFFT)/TS\} 
.param VDD=3 VDC=\{1\} VCM=\{1\} VPK=\{0.5\} VREFP=\{VCM+VPK\} VREFN=\{VCM-VPK\} 
 
*Analysis setup and control statements 
.tran 1n \{TSTOP\} \{TDROP\} 
 
*save all voltages and currents 
.save all 
 
*options for an accurate precision output 
.options reltol=1e-6 vntol=1u abstol=1p 
 
* option to make output file ascii 
*.options filetype=ascii 

 
"}
C {devices/gnd.sym} 310 70 0 0 {name=l7 lab=GND}
C {devices/launcher.sym} 810 360 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/SC_example.raw tran"
}
C {devices/vsource.sym} -260 100 0 0 {name=V2 value=0.1 savecurrent=false }
C {devices/gnd.sym} -260 210 0 0 {name=l8 lab=GND}
C {devices/switch_ngspice.sym} 440 -20 1 0 {name=S5 model=SWITCH1}
C {devices/gnd.sym} 420 -80 2 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -190 -10 1 0 {name=p2 sig_type=std_logic lab=VIN}
C {devices/res.sym} -260 30 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
