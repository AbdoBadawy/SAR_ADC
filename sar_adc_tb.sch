v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1990 -140 2790 260 {flags=graph
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


dataset=-1
unitx=1
logx=0
logy=0
digital=1

color="4 7 11 11"
node="clk

smpl
eoc


BUS_NAME;dw7,dw6,dw5,dw4,dw3,dw2,dw1,dw0"}
B 2 2000 300 2800 700 {flags=graph
y1=0.49
y2=1.3
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


dataset=-1
unitx=1
logx=0
logy=0
color="8 5 12"
node="vsah
vin
vsar"}
N 460 230 460 250 {lab=GND}
N 440 230 460 230 {lab=GND}
N 470 -130 580 -130 {lab=VSAH}
N 580 -70 580 -30 {lab=GND}
N 300 -130 410 -130 {lab=#net1}
N 50 -110 240 -110 {lab=VSAR}
N 240 -130 240 -110 {lab=VSAR}
N 250 -200 250 -170 {lab=VMID}
N 440 -200 440 -170 {lab=VMID}
N 270 -190 270 -170 {lab=EOC}
N 420 -190 420 -170 {lab=CLK}
N 440 190 540 190 {lab=EOC}
N -20 670 -20 710 {lab=GND}
N 170 670 170 710 {lab=GND}
N 330 690 330 730 {lab=GND}
N 710 700 710 740 {lab=GND}
N -680 680 -680 720 {lab=GND}
N -560 680 -560 720 {lab=GND}
N -300 680 -300 720 {lab=GND}
N -160 680 -160 720 {lab=GND}
N -410 670 -410 710 {lab=GND}
C {DAC_10.sym} -50 -110 0 0 {name=x1}
C {devices/lab_pin.sym} -80 -180 0 0 {name=p1 lab=VREFP}
C {devices/lab_pin.sym} -20 -180 0 1 {name=p2 lab=VDD}
C {devices/lab_pin.sym} 70 -110 1 1 {name=p3 lab=VSAR}
C {devices/lab_pin.sym} -150 -110 0 0 {name=p4 lab=DW[7..0],2*GND}
C {devices/lab_pin.sym} -80 -40 0 0 {name=p5 lab=VREFN}
C {my_sar_adc.sym} 260 180 0 0 {name=x2}
C {devices/lab_pin.sym} 440 210 0 1 {name=p6 lab=VREFN}
C {devices/lab_pin.sym} 440 150 0 1 {name=p8 lab=VCM}
C {devices/lab_pin.sym} 440 110 0 1 {name=p9 lab=VDD}
C {devices/lab_pin.sym} 440 130 0 1 {name=p10 lab=VREFP}
C {devices/lab_pin.sym} 140 200 0 0 {name=p11 lab=SMPL}
C {devices/lab_pin.sym} 140 130 0 0 {name=p12 lab=VIN}
C {devices/lab_pin.sym} 140 220 0 0 {name=p13 lab=CLK}
C {devices/lab_pin.sym} 440 190 0 1 {name=p14 lab=EOC}
C {devices/lab_pin.sym} 440 170 0 1 {name=p15 lab=DW[7..0]}
C {devices/gnd.sym} 460 250 0 0 {name=l1 lab=GND}
C {devices/switch_ngspice.sym} 270 -130 1 0 {name=S1 model=SWITCH1}
C {devices/switch_ngspice.sym} 440 -130 1 0 {name=S2 model=SWITCH1}
C {devices/capa.sym} 580 -100 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 580 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 250 -200 3 1 {name=p7 lab=VMID}
C {devices/lab_pin.sym} 440 -200 3 1 {name=p16 lab=VMID}
C {devices/lab_pin.sym} 270 -190 3 1 {name=p17 lab=EOC}
C {devices/lab_pin.sym} 420 -190 1 0 {name=p18 lab=CLK}
C {devices/lab_pin.sym} 560 -130 1 0 {name=p19 sig_type=std_logic lab=VSAH}
C {devices/noconn.sym} 540 190 2 0 {name=l3}
C {devices/code_shown.sym} 1090 -360 0 0 {name=s3 only_toplevel=false value="* ngspice commands 
 
*Required model for the switch (the switch threshold default value is zero) 
* you can define the threshold using vt=\{VDD/2\} (not needed here) 
.model SWITCH1 sw 
 
*These are the values of the parameters to be used 
.param TS=1u TCLK=100n TRF=1n TDROP=\{0.5/FIN\} TSTOP=\{(NCYC/FIN)+TDROP\} 
.param NCYC=5 NFFT=256 FIN=\{(NCYC/NFFT)/TS\} 
.param VDD=3 VDC=\{1\} VCM=\{1\} VPK=\{0.5\} VREFP=\{VCM+VPK\} VREFN=\{VCM-VPK\} 
 
.param VCC=VDD 
*.param VIN_DC=\{VREFN\} 
*.param VIN_DC=\{VREFP\} 
.param VIN_DC= \{VREFN +(128+32+8+2+0.5)*2*VPK/(2**8)\} 
 
*Analysis setup and control statements 
.tran 1n \{TSTOP\} \{TDROP\} 
* .tran 1n \{2*TS\} 
 
*save all voltages and currents 
.save all 
 
*options for an accurate precision output 
*.options reltol=1e-6 vntol=1u abstol=1p 
 
* option to make output file ascii 
.options filetype=ascii 

"}
C {devices/code_shown.sym} 1090 -520 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -20 640 0 0 {name=V1 value=\{VREFN\} savecurrent=false}
C {devices/gnd.sym} -20 710 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 170 640 0 0 {name=V2 value=\{VCM\} savecurrent=false}
C {devices/gnd.sym} 170 710 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 330 660 0 0 {name=V3 value="pulse(0 VDD \{TCLK/2\} TRF TRF \{TCLK/2\} \{TCLK\})" savecurrent=false}
C {devices/gnd.sym} 330 730 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 710 670 0 0 {name=V4 value="pulse(0 VDD \{TCLK/2+TCLK/4\} TRF TRF \{TCLK\} TS)" savecurrent=false}
C {devices/gnd.sym} 710 740 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -680 650 0 0 {name=V5 value=\{VIN_DC\} savecurrent=false}
C {devices/gnd.sym} -680 720 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -560 650 0 0 {name=V6 value="sin(\{VDC\} \{VPK\} \{FIN\})" savecurrent=false}
C {devices/gnd.sym} -560 720 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -300 650 0 0 {name=V8 value=\{VDD/2\} savecurrent=false}
C {devices/gnd.sym} -300 720 0 0 {name=l11 lab=GND
value=\{VDD/2\}}
C {devices/vsource.sym} -160 650 0 0 {name=V9 value=\{VREFP\} savecurrent=false}
C {devices/gnd.sym} -160 720 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -410 640 0 0 {name=V7 value=\{VDD\} savecurrent=false}
C {devices/gnd.sym} -410 710 0 0 {name=l10 lab=GND
value=\{VDD\}}
C {devices/lab_pin.sym} 710 640 1 0 {name=p20 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} 330 630 1 0 {name=p21 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 170 610 1 0 {name=p22 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} -20 610 1 0 {name=p23 sig_type=std_logic lab=VREFN}
C {devices/lab_pin.sym} -160 620 1 0 {name=p24 sig_type=std_logic lab=VREFP}
C {devices/lab_pin.sym} -300 620 1 0 {name=p25 sig_type=std_logic lab=VMID}
C {devices/lab_pin.sym} -410 610 1 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -560 620 1 0 {name=p27 sig_type=std_logic lab=VIN}
C {devices/launcher.sym} 3180 60 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/sar_adc_tb.raw tran"
}
