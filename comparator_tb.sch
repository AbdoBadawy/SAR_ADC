v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 250 80 1050 480 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3e-09
x2=3.3e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="voutp
voutn
vinp
vinn"
color="18 6 5 12"
dataset=-1
unitx=1
logx=0
logy=0
}
N -330 120 -330 140 {
lab=GND}
N -460 40 -460 80 {
lab=GND}
N -330 -40 -330 60 {
lab=VINN}
N -460 -160 -460 -10 {
lab=VINP}
N -330 -40 -200 -40 {
lab=VINN}
N -460 -160 -200 -160 {
lab=VINP}
N 100 -110 190 -110 {
lab=VOUTP}
N 100 -90 200 -90 {
lab=VOUTN}
C {devices/vsource.sym} -330 90 0 0 {name=V1 value=1 savecurrent=false}
C {devices/gnd.sym} -330 140 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -460 80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -460 20 0 0 {name=V2 value="pwl(0 0 10n VCC 20n 0 30n VCC)" savecurrent=false
}
C {comparator_behav.sym} -50 -100 0 0 {name=x1}
C {devices/lab_pin.sym} 100 -110 0 1 {name=p1 lab=VOUTP}
C {devices/lab_pin.sym} -200 -160 0 0 {name=p2 lab=VINP}
C {devices/lab_pin.sym} -200 -40 0 0 {name=p3 lab=VINN}
C {devices/lab_pin.sym} 100 -90 0 1 {name=p4 lab=VOUTN}
C {devices/code_shown.sym} 390 -310 0 0 {name=s1 only_toplevel=false value=".param VCC=2
.tran 1n 30n
.save all
"}
C {devices/launcher.sym} 420 0 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
