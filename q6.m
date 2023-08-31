clear all,
clc,
clf
s = tf('s');
k=1;
G=2500/(s*(s+25))
C=(1+0.026*s)/(1+0.0106*s);

%sys=k*G;

sys=k*G*C;
bode(sys)
