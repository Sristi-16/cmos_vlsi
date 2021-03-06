Extracting Vt,Kp,gamma for nmos from Vgs-Id plots

*Include the SCMOS library
.LIB "/project2020/eda/ngspice-32/models/scn4m_subm/scmos_bsim4.lib" nom

*Set the device temperature
.Temp 27

*Netlist
M1	D1	D1	0	B	scmosn W=5u L=1u
vds	D	0	DC	5
Vid1	D	D1	DC	0
Vsb	0	B	DC	0

*Analysis
.DC	vds	0.1	2	0.001 
*TEMP 0 100 20

*Script
.CONTROL
RUN
PLOT LOG(Vid1#branch) vs v(D)
*PLOT (2*Vid1#branch)^0.5 vs v(D)
.ENDC

.END
