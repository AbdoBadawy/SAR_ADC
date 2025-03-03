v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 670 -900 1470 -500 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="set
rst
d
clk
q
qb"
color="5 5 5 5 5 5"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
N -230 90 -230 130 {
lab=GND}
N -300 10 -300 50 {
lab=GND}
N -350 -80 -350 -40 {
lab=GND}
N -440 -160 -440 -120 {
lab=GND}
N -440 -240 -440 -220 {
lab=D}
N -440 -240 -340 -240 {
lab=D}
N -350 -160 -350 -140 {
lab=CLK}
N -350 -160 -250 -160 {
lab=CLK}
N -300 -70 -300 -50 {
lab=SET}
N -300 -70 -200 -70 {
lab=SET}
N -230 10 -230 30 {
lab=RST}
N -230 10 -130 10 {
lab=RST}
C {devices/vsource.sym} -230 60 0 0 {name=V1 value="PULSE(0 VDD \{8*TCLK\} TRF TRF \{3*TCLK\} \{16*TCLK\})" savecurrent=false
}
C {devices/vsource.sym} -300 -20 0 0 {name=V2 value="PULSE(0 VDD 0 TRF TRF \{3*TCLK\} \{16*TCLK\})" savecurrent=false
}
C {devices/vsource.sym} -350 -110 0 0 {name=V3 value="PULSE(0 VDD \{TCLK/4\} TRF TRF \{TCLK/2\} TCLK)" savecurrent=false
}
C {devices/vsource.sym} -440 -190 0 0 {name=V4 value="PULSE(0 VDD 0 TRF TRF \{3*TCLK\} \{4*TCLK\})" savecurrent=false
}
C {devices/gnd.sym} -230 130 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -300 50 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -350 -40 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -440 -120 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -340 -240 2 0 {name=p1 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} -250 -160 2 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -130 10 2 0 {name=p3 sig_type=std_logic lab=RST}
C {devices/code_shown.sym} 50 -570 0 0 {name=s1 only_toplevel=false value="*These are the values of the parameters to be used
.param VDD=2 VCC=VDD
.param TRF=1n TCLK=100n
.param TSTOP=\{20*TCLK\} TDROP=0
*Analysis setup and control statements
.tran 1n \{TSTOP\} \{TDROP\}
*save all voltages and currents
.save all
*options for an accurate precision output
*.options reltol=1e-6 vntol=1u abstol=1p
* option to make output file ascii
*.options filetype=ascii
"}
C {devices/launcher.sym} 960 -410 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/d_ff_test_bench.raw tran"
}
C {dff.sym} -240 -610 0 0 {name=x1}
C {devices/lab_pin.sym} -390 -640 0 0 {name=p7 lab=D}
C {devices/lab_pin.sym} -390 -620 0 0 {name=p8 lab=CLK}
C {devices/lab_pin.sym} -90 -640 0 1 {name=p9 lab=Q}
C {devices/lab_pin.sym} -390 -600 0 0 {name=p10 lab=SET}
C {devices/lab_pin.sym} -90 -620 0 1 {name=p11 lab=QB}
C {devices/lab_pin.sym} -390 -580 0 0 {name=p12 lab=RST}
C {devices/lab_pin.sym} -200 -70 2 0 {name=p5 sig_type=std_logic lab=SET}
