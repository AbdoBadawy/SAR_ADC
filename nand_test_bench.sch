v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 450 -30 1250 370 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.9747966e-08
x2=1.9752013e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="b
a
y"
color="5 6 4"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
N -90 470 -90 500 {
lab=GND}
N -90 380 -90 410 {
lab=A}
N 190 450 190 500 {
lab=GND}
N 190 380 190 390 {
lab=Y}
N -370 470 -370 500 {
lab=GND}
N -200 340 -200 410 {
lab=B}
N -370 410 -200 410 {
lab=B}
N -90 360 -90 380 {lab=A}
N -90 360 -20 360 {lab=A}
N -200 310 -200 340 {lab=B}
N -200 310 -20 310 {lab=B}
N 190 330 190 380 {lab=Y}
N 130 330 190 330 {lab=Y}
C {devices/code_shown.sym} -230 -70 0 0 {name=s1 only_toplevel=false value="*These are the values of the parameters to be used
.param VDD=2 VCC=VDD
.param TRF=1n TCLK=100n
.param TSTOP=\{4*TCLK\} TDROP=0
*Analysis setup and control statements
.tran 1n \{TSTOP\} \{TDROP\}
*save all voltages and currents
.save all
*options for an accurate precision output
.options reltol=1e-6 vntol=1u abstol=1p
* option to make output file ascii
*.options filetype=ascii
"}
C {devices/vsource.sym} -90 440 0 0 {name=V1 value="PULSE(0 VDD 0 TRF TRF \{TCLK/2\} TCLK)" savecurrent=false
}
C {devices/gnd.sym} -90 500 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 190 420 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 190 500 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -370 440 0 0 {name=V2 value="PULSE(0 VDD \{TCLK/2\} TRF TRF \{TCLK/4\} \{TCLK/2\})" savecurrent=false
}
C {devices/gnd.sym} -370 500 0 0 {name=l3 lab=GND
value="PULSE(VDD 0 0 TRF TRF \{TCLK/2\} TCLK)"}
C {devices/launcher.sym} 930 420 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/nand_test_bench.raw tran"
}
C {my_nand.sym} 40 330 0 0 {name=x1}
C {devices/lab_pin.sym} -20 310 0 0 {name=p1 lab=B}
C {devices/lab_pin.sym} 130 330 0 1 {name=p2 lab=Y}
C {devices/lab_pin.sym} -20 360 0 0 {name=p3 lab=A}
