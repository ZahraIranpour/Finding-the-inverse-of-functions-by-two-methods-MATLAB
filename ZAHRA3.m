clc;
clear all;

Vi=2400;
Vs=Vi/sqrt(3);
Z=0.18+i*0.41;
I=Vi/Z;
S=3*Vi*conj(I);
P2=real(S);
s=0.005:0.003:0.035;

for i=1:11
    Pag(i)=P2/(1-s(i));
    P1(i)=Pag(i);
    eta(i)=P2/P1(i);
end

P=P1/1000000
plot(P,eta)
