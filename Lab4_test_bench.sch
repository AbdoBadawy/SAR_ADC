v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 560 -260 1360 140 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.1858022e-08
x2=2.0318357e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="y
a"
color="5 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N -290 20 -290 50 {
lab=GND}
N -290 -70 -290 -40 {
lab=A}
N 210 10 210 60 {
lab=GND}
N -290 -120 -290 -70 {lab=A}
N -290 -120 -160 -120 {lab=A}
N 210 -120 210 -50 {lab=Y}
N 140 -120 210 -120 {lab=Y}
C {devices/vsource.sym} -290 -10 0 0 {name=V1 value="PULSE(0 VDD 0 TRF TRF \{TCLK/2\} TCLK)" savecurrent=false
}
C {devices/gnd.sym} -290 50 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -720 -380 0 0 {name=s1 only_toplevel=false value="*These are the values of the parameters to be used
.param VDD=2 VCC=VDD
.param TRF=1n TCLK=100n
.param TSTOP=\{5*TCLK\} TDROP=0
*Analysis setup and control statements
.tran 100p \{TSTOP\} \{TDROP\}
*save all voltages and currents
.save all
*options for an accurate precision output
.options reltol=1e-6 vntol=1u abstol=1p
* option to make output file ascii
*.options filetype=ascii
"}
C {devices/capa.sym} 210 -20 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 210 60 0 0 {name=l2 lab=GND}
C {devices/launcher.sym} 920 250 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Lab4_test_bench.raw tran"
}
C {my_inverter.sym} -10 -120 0 0 {name=x1}
C {devices/lab_pin.sym} 140 -120 0 1 {name=p1 lab=Y}
C {devices/lab_pin.sym} -160 -120 0 0 {name=p2 lab=A}
