clc
clear all

Vb = 2300;       
Sb = 750e3;      
Zb = Vb^2/Sb;    
Xs = 7.75/Zb;               
P = 600e3/Sb;

theta = acos(0.8)*(1:-0.01:-1);
Vt = 1;
Ia = P./(Vt*cos(theta));
Iaa = Ia.*exp(1i*theta);

Eaf = Vt + 1i*Xs*Iaa;
Eaf = abs(Eaf);

AFNL = 120;
If = Eaf*AFNL;

plot(If,Ia)
xlabel('Field Current')
ylabel('Armature Current')




