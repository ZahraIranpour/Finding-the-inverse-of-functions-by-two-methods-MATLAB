
clc
clear all

S = 30e3 ;
V1 = 2400 ;
V2 = 240 ;
a = V1/V2 ;
Zeq = 1.36 + i*15.6;

I2 = S/V2;
PF = -0.5:0.001:0.5;

for k = 1:1001
    I22 = I2/a;
    PF2(k) = sqrt(1 - PF(k)^2);
    I1(k) = I22*(PF(k) + sign(PF(k))*i*PF2(k));
    V1(k) = a*V2 + I1(k)*Zeq;
end

plot(PF,abs(V1))
xlabel('Pf');
ylabel('Vp');