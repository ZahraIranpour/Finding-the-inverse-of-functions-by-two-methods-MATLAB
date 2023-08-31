clc
clear all
t=0:0.1:10;
a=[-1];
b=[1];
c=[1];
d=[0];
x0=[2];
y=initial(a,b,c,d,x0,t)
plot(t,y)
