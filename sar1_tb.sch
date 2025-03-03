v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 230 -160 1030 240 {flags=graph
y1=0
y2=2
ypos1=0.11402049
ypos2=2.6538367
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="rst
cmp
clk
eoc
dw7
dw6
dw5
dw4
dw3
dw2
dw1
dw0"
color="5 5 5 5 5 5 5 5 5 5 5 5"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
N -510 60 -510 90 {
lab=GND}
N -510 -40 -510 -0 {
lab=CMP}
N -510 -40 -450 -40 {
lab=CMP}
N -450 220 -450 250 {
lab=GND}
N -450 120 -450 160 {
lab=CLK}
N -450 120 -390 120 {
lab=CLK}
N -320 380 -320 410 {
lab=GND}
N -320 280 -320 320 {
lab=RST}
N -320 280 -260 280 {
lab=RST}
C {devices/code_shown.sym} -720 -340 0 0 {name=s1 only_toplevel=false value="*These are the values of the parameters to be used
.param VDD=2 VCC=VDD
.param TRF=1n TCLK=100n
.param TSTOP=\{10*TCLK\} TDROP=0
*Analysis setup and control statements
.tran 1n \{TSTOP\} \{TDROP\}
*save all voltages and currents
.save all
*options for an accurate precision output
*.options reltol=1e-6 vntol=1u abstol=1p
* option to make output file ascii
*.options filetype=ascii
"}
C {sar1.sym} 350 -280 0 0 {name=x1}
C {devices/lab_pin.sym} 200 -300 0 0 {name=p1 lab=CMP}
C {devices/lab_pin.sym} 200 -280 0 0 {name=p2 lab=CLK}
C {devices/lab_pin.sym} 200 -260 0 0 {name=p3 lab=RST}
C {devices/lab_pin.sym} 500 -300 0 1 {name=p4 lab=DW[7..0]}
C {devices/lab_pin.sym} 500 -280 0 1 {name=p5 lab=DW_B[7..0]}
C {devices/lab_pin.sym} 500 -260 0 1 {name=p6 lab=EOC}
C {devices/vsource.sym} -510 30 0 0 {name=V1 value="pulse(0 VDD 0 TRF TRF \{TCLK\} \{2*TCLK\})" savecurrent=false}
C {devices/gnd.sym} -510 90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -450 190 0 0 {name=V2 value="pulse(0 VDD \{TCLK/4\} TRF TRF \{TCLK/2\} \{TCLK\})" savecurrent=false}
C {devices/gnd.sym} -450 250 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -320 350 0 0 {name=V3 value="pulse(0 VDD 0 TRF TRF \{TCLK\} \{20*TCLK\})" savecurrent=false}
C {devices/gnd.sym} -320 410 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -450 -40 2 0 {name=p7 lab=CMP}
C {devices/lab_pin.sym} -390 120 2 0 {name=p8 lab=CLK}
C {devices/lab_pin.sym} -260 280 2 0 {name=p9 lab=RST}
C {devices/launcher.sym} 450 300 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/sar1_tb.raw tran"
}
