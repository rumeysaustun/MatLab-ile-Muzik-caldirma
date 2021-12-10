a4 = 440.00;
b4 = 493.88;
c4 = 261.63;
d4 = 293.66;
e4 = 329.63;
f4 = 349.23;
g4 = 392.00;
c3 = 207.65;
d3 = 233.08;

A4 = sin(2*pi*a4*(0:0.000125:0.3));
B4 = sin(2*pi*b4*(0:0.000125:0.3));
C4 = sin(2*pi*c4*(0:0.000125:0.3));
D4 = sin(2*pi*d4*(0:0.000125:0.3));
E4 = sin(2*pi*e4*(0:0.000125:0.3));
F4 = sin(2*pi*f4*(0:0.000125:0.3));
G4 = sin(2*pi*g4*(0:0.000125:0.3));
C3 = sin(2*pi*c3*(0:0.000125:0.3));
D3 = sin(2*pi*d3*(0:0.000125:0.3));


A4_uzun = sin(2*pi*a4*(0:0.000125:0.6));
B4_uzun = sin(2*pi*b4*(0:0.000125:0.6));
C4_uzun = sin(2*pi*c4*(0:0.000125:0.6));
D4_uzun = sin(2*pi*d4*(0:0.000125:0.6));
E4_uzun = sin(2*pi*e4*(0:0.000125:0.6));
F4_uzun = sin(2*pi*f4*(0:0.000125:0.6));
G4_uzun = sin(2*pi*g4*(0:0.000125:0.6));
C3_uzun = sin(2*pi*c3*(0:0.000125:0.6));
D3_uzun = sin(2*pi*d3*(0:0.000125:0.6));

k1 = [D4,F4,F4,D4,F4_uzun];
k2 = [C4,E4,E4,C4,E4_uzun];
k3 = [C3,C4,C4,C3,C4_uzun];
k4 = [D3,D4,D4,D3,D4_uzun];
k5 = [D4,F4,A4,B4,A4,F4];
k6 = [C4,E4,A4,B4,A4,E4];
k7 = [C3,E4,A4,B4,A4,E4];
k8 = [D3,F4,A4,B4,A4,F4];

k1 = [k1,k1];
k2 = [k2,k2];
k3 = [k3,k3];
k4 = [k4,k4];
k5 = [k5,k5];
k6 = [k6,k6];
k7 = [k7,k7];
k8 = [k8,k8];

a = [k1,k2,k3,k4];
birinciNakarat = [a,a,a,a];
b = [k5,k6,k7,k8];
ikinciNakarat = [b,b];
muzik = [birinciNakarat,ikinciNakarat];
sound(muzik);
