
clear;
clc;

p=4;
V4p=230;
f4p=50;
P4p=12000;
R1=0.1;
X1=0.7;
X2=0.67;
Xm=18.7;
Pmech=250;
Pcore=200;
R2=[0.1 , 0.3 , 0.6 , 0.9 , 1.2 , 1.5];

disp('Rotor Vlocity? '); 
Nm=input('Nm= ');

Ns=(f4p*120)/p;
s=(Ns-Nm)/Ns;

P2=[0 , 0 , 0 , 0 , 0 , 0];
T=[0 , 0 , 0 , 0 , 0 , 0];
Zeq=[0 , 0 , 0 , 0 , 0 , 0];

for i=1:length(R2)

    Zeq(i)=R1+(j*X1)+((((R2(i)/s)+(j*X2))*(j*Xm))/((R2(i)/s)+(j*(X2+Xm))));
    V1=V4p/sqrt(3);
    Is=(V1+(j*0))/(Zeq(i));
    teta=angle(Is);
    Pf=cos(teta);                                              
    P1=sqrt(3)*V4p*abs(Is)*Pf;
    Pcus=3*R1*(abs(Is)^2);
    Pag=P1-Pcus-Pcore;
    Pmech2=Pag-Pcur;
    P2(i)=Pmech2-Pmech;
    T(i)=(P2(i)*60)/(2*pi*Nm);
    
end

% Output Power
figure(1)
plot(R2,P2);
grid on;

% Torque
figure(2)
plot(R2,T);
grid on;
