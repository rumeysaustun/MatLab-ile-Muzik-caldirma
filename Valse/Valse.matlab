a4 = 220.00;
a4d = 233.08;
b4 = 246.94;
c4d = 277.18;
d4 = 293.66;
e4 = 329.63;
f4d = 369.99;
f3d = 185.00;
g4 = 415.30;
g4d = 207.65;

A4 = sin(2*pi*a4*(0:0.000125:0.5));
A4D = sin(2*pi*a4d*(0:0.000125:0.5));
B4 = sin(2*pi*b4*(0:0.000125:0.5));
C4D = sin(2*pi*c4d*(0:0.000125:0.5));
D4 = sin(2*pi*d4*(0:0.000125:0.5));
E4 = sin(2*pi*e4*(0:0.000125:0.5));
G4 = sin(2*pi*g4*(0:0.000125:0.5));
G4D = sin(2*pi*g4d*(0:0.000125:0.5));
F4D = sin(2*pi*f4d*(0:0.000125:0.5));
F3D = sin(2*pi*f3d*(0:0.000125:0.5));

A4_kisa = sin(2*pi*a4*(0:0.000125:0.25));
A4D_kisa = sin(2*pi*a4d*(0:0.000125:0.25));
B4_kisa = sin(2*pi*b4*(0:0.000125:0.25));
C4D_kisa = sin(2*pi*c4d*(0:0.000125:0.25));
D4_kisa = sin(2*pi*d4*(0:0.000125:0.25));
E4_kisa = sin(2*pi*e4*(0:0.000125:0.25));
G4_kisa = sin(2*pi*g4*(0:0.000125:0.25));
G4D_kisa = sin(2*pi*g4d*(0:0.000125:0.25));
F4D_kisa = sin(2*pi*f4d*(0:0.000125:0.25));
F3D_kisa = sin(2*pi*f3d*(0:0.000125:0.25));

A4_uzun = sin(2*pi*a4*(0:0.000125:0.9));
A4D_uzun = sin(2*pi*a4d*(0:0.000125:0.9));
B4_uzun = sin(2*pi*b4*(0:0.000125:0.9));
C4D_uzun = sin(2*pi*c4d*(0:0.000125:0.9));
D4_uzun = sin(2*pi*d4*(0:0.000125:0.9));
E4_uzun = sin(2*pi*e4*(0:0.000125:0.9));
G4_uzun = sin(2*pi*g4*(0:0.000125:0.9));
G4D_uzun = sin(2*pi*g4d*(0:0.000125:0.9));
F4D_uzun = sin(2*pi*f4d*(0:0.000125:0.9));
F3D_uzun = sin(2*pi*f3d*(0:0.000125:0.9));

A4_cok_uzun = sin(2*pi*a4*(0:0.000125:1.5));
A4D_cok_uzun = sin(2*pi*a4d*(0:0.000125:1.5));
B4_cok_uzun = sin(2*pi*b4*(0:0.000125:1.5));
C4D_cok_uzun = sin(2*pi*c4d*(0:0.000125:1.5));
D4_cok_uzun = sin(2*pi*d4*(0:0.000125:2.0));
E4_cok_uzun = sin(2*pi*e4*(0:0.000125:1.5));
G4_cok_uzun = sin(2*pi*g4*(0:0.000125:1.5));
G4D_cok_uzun = sin(2*pi*g4d*(0:0.000125:1.5));
F4D_cok_uzun = sin(2*pi*f4d*(0:0.000125:1.5));
F3D_cok_uzun = sin(2*pi*f3d*(0:0.000125:1.5));



k1 = [F4D,G4,E4_uzun,C4D_kisa,D4_uzun,C4D_cok_uzun];
k2 = [F4D,G4,E4_uzun,C4D_kisa,D4_cok_uzun];
k3 = [C4D,D4,C4D_uzun,B4_kisa,C4D,B4_cok_uzun];
k4 = [C4D,D4,C4D_uzun,B4_kisa,G4D_cok_uzun];

k5 = [B4_cok_uzun,C4D,D4,C4D_uzun,B4_uzun,G4D_cok_uzun];
k6 = [C4D_uzun,D4_uzun,A4D_uzun,B4_uzun,G4D_cok_uzun];

k7 = [C4D,C4D_kisa,D4_kisa,C4D_kisa,D4_kisa];
k8 = [B4,B4_kisa,C4D_kisa,B4_kisa,C4D_kisa];
k9 = [A4D,A4D_kisa,B4_kisa,A4D_kisa,B4_kisa];
k10 =[G4D,A4D,B4];

k11 =[A4_uzun,F3D_kisa,G4D_kisa,A4D,B4,A4];

k12 =[B4,B4_kisa,C4D_kisa,B4_kisa,C4D_kisa];
k13 =[A4,A4_kisa,B4_kisa,A4_kisa,B4_kisa];
k14 =[G4D,F3D_kisa,G4D_kisa,A4,B4,A4];

k15 = [G4D];

a = [k1,k2,k3,k4,k4];
b = [k7,k8]; 
nakarat1 = [b,k9,k10,b,k11];
nakarat2 = [b,k9,k10,k12,k13,k14];
son = [b,k9,k10,k12,k13,k15];
muzik = [a,a,k5,k6,nakarat1,nakarat2,nakarat1,nakarat2,son];
sound(muzik);
