clc
clear all

P  = 4;
fs = 60;
Nm = 1725;
Vl = 4160;
Vs = Vl/sqrt(3);
R1 = 0.521;
R2 = 1.32;
X1 = 4.98;
X2 = 5.32;
Xm = 136;
P_rot = 3500;

Ns = 120*fs/P;
S = (Ns - Nm)/Ns;
V_th = Vs*(Xm)/sqrt(R1^2 + (X1+Xm)^2);
R_th = (Xm/(X1+Xm))^2*R1;
X_th = X1;
Z_th = (R_th + R2/S) + i*(X_th + X2);
phi = angle(Z_th);
PF = cos(phi)
I2 = V_th/Z_th;
Is = abs(I2);
P1 = sqrt(3)*Vl*Is*PF

S=1:-0.001:0;
S(1001)=0.001;
Nm=(1-S)*Ns;
for ii=1:1000
P_mech(ii)=(3*V_th^2*((1-S(ii)))/S(ii))/(((R_th+R2/S(ii))^2+(X_th+X2)^2));
end
P_mech(1001) = P_mech(1000);
P_conv = P_mech(960);
P2 = 500000;
P2 = P_conv - P_rot
eta = P2/P1
plot(Nm,P_mech)

