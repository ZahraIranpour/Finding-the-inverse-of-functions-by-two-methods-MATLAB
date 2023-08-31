clc
clear all

t=[0 0.3 0.6 3 6 12 -1 -2 -3];

for i=1:9
n=[2*t(i)  2];
d=[1 3 2];
S(i)=tf(n , d)
end

step(S)
