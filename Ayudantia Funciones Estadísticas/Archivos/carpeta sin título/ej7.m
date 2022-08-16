% Cupos carreras Admision 2020 UdeC.

CA=40; % Atronomia
CGF=35; % Geofisica
CG=35; % Geologia
CM=105; % Medicina
CL=20; % Lic. en Matematicas

% Aranceles carreras

AA=4229431;
AGF=4229431;
AG=3756284;
AM=6341834;
AL=3109281;

% Ponderaciones para obtener ingresos anuales potenciales.

IPAstro=CA*AA
IPGeof=CGF*AGF
IPGeolo=CG*AG
IPMedi=CM*AM
IPLicM=CL*AL

% Deserciones. Notemos que cada carrera dura una cierta cantidad de años 
% Atronomia=5,5 años, supongamos que nadie deserta la ultima mitad del 5to
% año.
% Geofisica=5 años
% Geologia=6 años
% Medicina=7 años
% Lic.Matematica=4 años

% Supongamos que los 3 primeros años desertan un 10% y el resto de los años
% un 1%

A1=IPAstro-0.1*(IPAstro);
A2=A1-0.1*(A1);
A3=A2-0.1*(A2);
A4=A3-0.01*(A3);
A5=A4-0.01*(A4);
A5_1=A5/2;
Atotal=A5+A5_1 % Total acumulado.

% Supongamos que los 3 primeros años desertan un 10% y el resto de los años
% un 1%

GF1=IPGeof-0.1*(IPGeof);
GF2=GF1-0.1*(GF1);
GF3=GF2-0.1*(GF2);
GF4=GF3-0.01*(GF3);
GF5=GF4-0.01*(GF4);
GFtotal=GF5 % Total acumulado.

% Supongamos que los 3 primeros años desertan un 10% y el resto de los años
% un 1%

G1=IPGeolo-0.1*(IPGeolo);
G2=G1-0.1*(G1);
G3=G2-0.1*(G2);
G4=G3-0.01*(G3);
G5=G4-0.01*(G4);
G6=G5-0.01*(G5);
Gtotal=G6 % Total acumulado.

% Supongamos que los 4 primeros años desertan un 10% y el resto de los años
% un 1%

M1=IPMedi-0.1*(IPMedi);
M2=M1-0.1*(M1);
M3=M2-0.1*(M2);
M4=M3-0.1*(M3);
M5=M4-0.01*(M4);
M6=M5-0.01*(M5);
M7=M6-0.01*(M6);
Mtotal=M7 % Total acumulado.

% Supongamos que los 2 primeros años desertan un 10% y el resto de los años
% un 1%

LM1=IPLicM-0.1*(IPLicM);
LM2=LM1-0.1*(LM1);
LM3=LM2-0.01*(LM2);
LM4=LM3-0.01*(LM3);
LMtotal=LM4 % Total acumulado.

% Finalmente cada carrera recibe anualmente aproximandamente

% Astronomia

pa1=A1
sa1=A2;
ta1=A3;
c1a=A4;
qa1=A5;
qa_2=A5_1; % mitad de año

% Geofisica

pa2=GF1
sa2=GF2;
ta2=GF3;
ca2=GF4;
qa2=GF5;

% Geologia

pa3=G1
sa3=G2;
ta3=G3;
ca3=G4;
qa3=G5;
sexa3=G6;

% Medicina

pa4=M1
sa4=M2;
ta4=M3;
ca4=M4;
qa4=M5;
sexa4=M6;
sep4=M7;

% Licenciatura en matematicas

pa5=LM1
sa5=LM2;
ta5=LM3;
ca5=LM4;


% Por cada 5 alumnos cada carrera recibe

F1=AA*5
F2=AGF*5
F3=AG*5
F4=AM*5
F5=AL*5
