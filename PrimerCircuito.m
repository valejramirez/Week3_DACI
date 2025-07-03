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
Iss=0.5;
%question 3
Id= Iss/2;
%question 1 - 6 
VGS1= sqrt( (2*Id)/(UON*Cox*(W/L1)*1000 ) ) + VTOn;
VGS3= sqrt( (2*Iss)/(UON*Cox*(W/L1)*1000 ) ) + VTOn;
VDS3= VGS3 + VTOn;

Vcm= 1.2;
Voutmin= Vcm - VTOn 
%question 4
a = 0.5*UON*Cox*(W/L1)*1000;
%Question 5
Dif= VGS1-VTOn;
%Question 7
gm1 = sqrt(2*UON*Cox*1000*(W/L1)*Id);
%question 8 
Vcmsalida= (3 + 0.5)/2;
%Question 9
Rd= (Vcmsalida - 3)/-Id 
%Question 10
Av= -gm1 * Rd

