clear all,
clc,
clf
s = tf('s');
k=1.43;
G=450/(s*(s+5)*(s+40));
c=(s+0.2783)/(s+0.039);
sys=k*c*G;
bode(sys)