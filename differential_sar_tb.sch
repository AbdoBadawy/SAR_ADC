v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1980 30 2780 430 {flags=graph
y1=-1
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.3119852e-05
x2=0.0001735834
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vsah

vin
vinn
vinp
x1.vdacn"
color="8 4 7 7 11"
dataset=-1
unitx=1
logx=0
logy=0
}
N -810 720 -810 760 {lab=GND}
N -620 720 -620 760 {lab=GND}
N -460 740 -460 780 {lab=GND}
N -80 750 -80 790 {lab=GND}
N -1470 730 -1470 770 {lab=GND}
N -1350 730 -1350 770 {lab=GND}
N -1090 730 -1090 770 {lab=GND}
N -950 730 -950 770 {lab=GND}
N -1200 720 -1200 760 {lab=GND}
N 40 -290 150 -290 {lab=VSAH}
N 150 -230 150 -190 {lab=GND}
N -130 -290 -20 -290 {lab=#net1}
N -380 -270 -190 -270 {lab=VSAR}
N -190 -290 -190 -270 {lab=VSAR}
N -180 -360 -180 -330 {lab=VMID}
N 10 -360 10 -330 {lab=VMID}
N -160 -350 -160 -330 {lab=EOC}
N -10 -350 -10 -330 {lab=CLK}
N 210 250 210 270 {lab=GND}
N -900 390 -900 430 {lab=GND}
N -740 390 -740 430 {lab=GND}
N -900 300 -900 330 {lab=VINN}
N -740 300 -740 330 {lab=VINP}
N 390 100 450 100 {lab=EOC}
C {devices/vsource.sym} -810 690 0 0 {name=V1 value=\{VREFN\} savecurrent=false}
C {devices/gnd.sym} -810 760 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -620 690 0 0 {name=V2 value=\{VCM\} savecurrent=false}
C {devices/gnd.sym} -620 760 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -460 710 0 0 {name=V3 value="pulse(0 VDD \{TCLK/2\} TRF TRF \{TCLK/2\} \{TCLK\})" savecurrent=false}
C {devices/gnd.sym} -460 780 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -80 720 0 0 {name=V4 value="pulse(0 VDD \{TCLK/2+TCLK/4\} TRF TRF \{TCLK\} TS)" savecurrent=false}
C {devices/gnd.sym} -80 790 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -1470 700 0 0 {name=V5 value=\{2*VIN_DC\} savecurrent=false}
C {devices/gnd.sym} -1470 770 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -1350 700 0 0 {name=V6 value="sin(0 \{2*VPK\} \{FIN\})" savecurrent=false}
C {devices/gnd.sym} -1350 770 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -1090 700 0 0 {name=V8 value=\{VDD/2\} savecurrent=false}
C {devices/gnd.sym} -1090 770 0 0 {name=l11 lab=GND
value=\{VDD/2\}}
C {devices/vsource.sym} -950 700 0 0 {name=V9 value=\{VREFP\} savecurrent=false}
C {devices/gnd.sym} -950 770 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -1200 690 0 0 {name=V7 value=\{VDD\} savecurrent=false}
C {devices/gnd.sym} -1200 760 0 0 {name=l10 lab=GND
value=\{VDD\}}
C {devices/lab_pin.sym} -80 690 1 0 {name=p20 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} -460 680 1 0 {name=p21 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -620 660 1 0 {name=p22 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} -810 660 1 0 {name=p23 sig_type=std_logic lab=VREFN}
C {devices/lab_pin.sym} -950 670 1 0 {name=p24 sig_type=std_logic lab=VREFP}
C {devices/lab_pin.sym} -1090 670 1 0 {name=p25 sig_type=std_logic lab=VMID}
C {devices/lab_pin.sym} -1200 660 1 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -1350 670 1 0 {name=p27 sig_type=std_logic lab=VIN}
C {DAC_10.sym} -480 -270 0 0 {name=x2}
C {devices/lab_pin.sym} -510 -340 0 0 {name=p1 lab=VREFP}
C {devices/lab_pin.sym} -450 -340 0 1 {name=p2 lab=VDD}
C {devices/lab_pin.sym} -360 -270 1 1 {name=p3 lab=VSAR}
C {devices/lab_pin.sym} -580 -270 0 0 {name=p4 lab=DW[7..0],2*GND}
C {devices/lab_pin.sym} -510 -200 0 0 {name=p5 lab=VREFN}
C {devices/switch_ngspice.sym} -160 -290 1 0 {name=S1 model=SWITCH1}
C {devices/switch_ngspice.sym} 10 -290 1 0 {name=S2 model=SWITCH1}
C {devices/capa.sym} 150 -260 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 150 -190 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -180 -360 3 1 {name=p7 lab=VMID}
C {devices/lab_pin.sym} 10 -360 3 1 {name=p16 lab=VMID}
C {devices/lab_pin.sym} -160 -350 3 1 {name=p17 lab=EOC}
C {devices/lab_pin.sym} -10 -350 1 0 {name=p18 lab=CLK}
C {devices/lab_pin.sym} 130 -290 1 0 {name=p19 sig_type=std_logic lab=VSAH}
C {sar_adc_differential.sym} 240 160 0 0 {name=x1}
C {devices/lab_pin.sym} 390 100 0 1 {name=p6 lab=EOC}
C {devices/lab_pin.sym} 90 110 0 0 {name=p8 lab=VINP}
C {devices/lab_pin.sym} 280 70 0 1 {name=p9 lab=VREFP}
C {devices/lab_pin.sym} 90 170 0 0 {name=p10 lab=VINN}
C {devices/lab_pin.sym} 280 250 0 1 {name=p11 lab=VREFN}
C {devices/lab_pin.sym} 390 160 0 1 {name=p12 lab=DW[7..0]}
C {devices/lab_pin.sym} 90 200 0 0 {name=p14 lab=SMPL}
C {devices/lab_pin.sym} 90 220 0 0 {name=p28 lab=CLK}
C {devices/lab_pin.sym} 90 140 0 0 {name=p29 lab=VCM}
C {devices/lab_pin.sym} 210 70 2 1 {name=p13 lab=VDD}
C {devices/gnd.sym} 210 270 0 0 {name=l1 lab=GND}
C {devices/asrc.sym} -900 360 0 0 {name=B1 function="v=v(VCM)-v(VIN)*0.5"}
C {devices/gnd.sym} -900 430 0 0 {name=l3 lab=GND}
C {devices/asrc.sym} -740 360 0 0 {name=B2 function="v=v(VCM)+v(VIN)*0.5"}
C {devices/gnd.sym} -740 430 0 0 {name=l13 lab=GND
function="v=v(VCM)+v(VIN)"}
C {devices/lab_pin.sym} -740 300 1 0 {name=p15 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} -900 300 1 0 {name=p30 sig_type=std_logic lab=VINN}
C {devices/code_shown.sym} 860 -690 0 0 {name=s3 only_toplevel=false value="* ngspice commands 
 
*Required model for the switch (the switch threshold default value is zero) 
* you can define the threshold using vt=\{VDD/2\} (not needed here) 
.model SWITCH1 sw 
 
*These are the values of the parameters to be used 
.param TS=1u TCLK=100n TRF=1n TDROP=\{0.5/FIN\} TSTOP=\{(NCYC/FIN)+TDROP\} 
.param NCYC=5 NFFT=64 FIN=\{(NCYC/NFFT)/TS\} 
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
* .options filetype=ascii 

"}
C {devices/code_shown.sym} 860 -850 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/launcher.sym} 1250 630 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/differential_sar_tb.raw tran"
}
