v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 780 -380 1580 20 {flags=graph
y1=0
y2=2
ypos1=-0.4
ypos2=1.6
divy=5
subdivy=1
unity=1
x1=-4.7472136e-09
x2=2.2718101e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="y
b
a"
color="4 12 5"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
N -360 310 -360 340 {
lab=GND}
N -360 220 -360 250 {
lab=A}
N -360 220 -270 220 {
lab=A}
N -80 290 -80 340 {
lab=GND}
N -80 220 -80 230 {
lab=Y}
N -150 220 -80 220 {
lab=Y}
N -640 310 -640 340 {
lab=GND}
N -470 180 -470 250 {
lab=B}
N -470 180 -260 180 {
lab=B}
N -640 250 -470 250 {
lab=B}
C {devices/code_shown.sym} -500 -230 0 0 {name=s1 only_toplevel=false value="*These are the values of the parameters to be used
.param VDD=2 VCC=VDD
.param TRF=1n TCLK=100n
.param TSTOP=\{2*TCLK\} TDROP=0
*Analysis setup and control statements
.tran 100p \{TSTOP\} \{TDROP\}
*save all voltages and currents
.save all
*options for an accurate precision output
.options reltol=1e-6 vntol=1u abstol=1p
* option to make output file ascii
*.options filetype=ascii
"}
C {devices/vsource.sym} -360 280 0 0 {name=V1 value="PULSE(0 VDD 0 TRF TRF \{TCLK/2\} TCLK)" savecurrent=false
}
C {devices/gnd.sym} -360 340 0 0 {name=l1 lab=GND}
C {devices/capa.sym} -80 260 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -80 340 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -270 220 2 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -150 220 0 0 {name=p2 sig_type=std_logic lab=Y}
C {devices/vsource.sym} -640 280 0 0 {name=V2 value="PULSE(0 VDD \{TCLK/2\} TRF TRF \{TCLK/4\} \{TCLK/2\})" savecurrent=false
}
C {devices/gnd.sym} -640 340 0 0 {name=l3 lab=GND
value="PULSE(VDD 0 0 TRF TRF \{TCLK/2\} TCLK)"}
C {devices/lab_pin.sym} -260 180 2 0 {name=p3 sig_type=std_logic lab=B}
C {devices/launcher.sym} 1180 140 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/nor_test_bench.raw tran"
}
C {my_nor.sym} 140 160 0 0 {name=x1}
C {devices/lab_pin.sym} 50 100 0 0 {name=p4 lab=B}
C {devices/lab_pin.sym} 290 160 0 1 {name=p5 lab=Y}
C {devices/lab_pin.sym} 50 220 0 0 {name=p6 lab=A}
