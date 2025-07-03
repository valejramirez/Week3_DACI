LEVEL   = 1;
VTOn    = 0.7;           %(V)        -> Tensión umbral
VTOp    = 0.8;           %(V)        -> Tensión umbral
GAMMA   = 0.45;          %(V^1/2)    -> Coeficiente de cuerpo
PHI     = 0.9;           %(V)        -> Potencial ? (? 2F)
NSUB    = 9e14;          %(cm^-3)    -> Dopaje del sustrato
LD      = 0.08e-6;       %(m)        -> Longitud de difusión (fuente/drenaje)
UON     = 350e-4;           %(cm^2/V·s) -> Movilidad de portadores
UOP     = 100e-4;           %(cm^2/V·s) -> Movilidad de portadores
LAMBDAn  = 0.1;          %(V^-1)     -> Modulación de longitud de canal
LAMBDAp  = 0.2;          %(V^-1)     -> Modulación de longitud de canal
TOX     = 9e-9;          %(m)        -> Espesor del óxido
PB      = 0.9;           %(V)        -> Potencial de unión
CJ      = 0.56e-3;       %(F/m^2)    -> Capacitancia de unión por área
CJSW    = 0.35e-11;      %(F/m)      -> Capacitancia de unión lateral
MJ      = 0.45;          %(unitless) -> Exponente de CJ
MJSW    = 0.2;           %(unitless) -> Exponente de CJSW
CGDO    = 0.4e-9;        %(F/m)      -> Capacitancia solapamiento puerta-drenaje 
JS      = 1.0e-8;        %(A/m^2)    -> Corriente de fuga por unidad de área
Vds     = 3;             %V
Cox     = 3836e-6;       %F/m^2
Vdd     = 3;              %V
W=50; 
L1=0.5; 
Iss=1;
Id=0.5;
L2=1;
Vp=0.4;
%Question 11
a= UON*(W/L1);
%Question 12
b= UOP*(W/L2);
%Question 13
Ava= -sqrt(a/b);
%Question 14
gmn= sqrt(2*UON*Cox*1000*(W/L1)*Id);
%Question 15
ron = 1/(LAMBDAn*Id);
%Question 16
%Sale de tabla modelo spice
%Question 17
rop= 1/(LAMBDAp*Id);
%Question 18
rparalelo= rop*ron / (rop+ron);
Avb= - gmn * rparalelo;
%Question 19
VGS1= sqrt( (2*Id)/(UON*Cox*(W/L1)*1000 ) ) + VTOn;
Vcmminims= VGS1 + 0.4
%Question 20
Vsg= VTOp + sqrt((2*Id*10^-3)/(UOP*Cox*(W/L2)));
Vovp= Vsg - VTOp;
VoutmaxA= 3 - Vovp; 
VovN= VGS1 - VTOn;
VotminA = VovN + 0.4