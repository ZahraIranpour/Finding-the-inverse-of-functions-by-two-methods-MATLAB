clc
clear

Xs  = 1.35;
Vp = 1.0;
Ef = 1.0;
Xeq = 0.23;
I= 297;
Vt = 1.0;

delta = 0 : pi/100 : pi/2 ;
Ia = (Ef * exp(j*delta) - Vp)/(j*(Xs + Xeq));
V = (Vp + j*Xeq*Ia);
Va = abs(V);
P = real(Va.*conj(Ia));
subplot(1,2,1);
plot(P,Va)
xlabel('P');
ylabel('Va');

P = 0 : 0.01 : 1 ; 
del = asin(P * Xeq/(Vt*Vp));
Ia = (Vt * exp(j*del) - Vp)/(j*Xeq);
Ef = abs(Vt + j*(Xs+Xeq) * Ia);
If = I * Ef ;
subplot(1,2,2);
plot(P,If)
xlabel('P');
ylabel('If');
