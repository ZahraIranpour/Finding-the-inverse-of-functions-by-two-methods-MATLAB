clc
clear all

% % alef

% a1
num=[35 30];
den=[1 7 22 48 32];
S1=tf(num,den)

% a2
pole(S1)
z=[-0.8571];
p=[(-4.0000 + 0.0000i) (-1.0000 + 0.0000i) (-1.0000 - 2.6458i) (-1.0000 + 2.6458i)];
k=35;
S2=zpk(z,p,k)

% a3
A=[0   1   0   0
   0   0   1   0
   0   0   0   1
  -32 -48 -22 -7];
B=[0 ; 0 ; 0 ; 1];
C=[30 35 0 0];
D=0;
SS=ss(A,B,C,D);
[nu , de]=ss2tf(A,B,C,D);
S3=tf(nu , de)


% % be
step(S3)
DC_gain=dcgain(S3)
stepinfo(S3)

% % jim
zeta=0.32837;
wn=2.33589;
n=[wn^2];
d=[1 2*wn*zeta wn^2];
NS=tf(n , d)
step(S3 , NS)

% % dal
info_system3=stepinfo(S3)
info_new_system=stepinfo(NS)