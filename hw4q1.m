clc
clear
close all

syms k s 

% % alef
a=2
b=3
k=60

% % be
% a=1
% b=1
% k=8

num=[k]
c=(s+1)*(s+a)*(s+b)
d=expand(c)
den=sym2poly(d)
Transfrfunc=tf(num,den)
rlocus(Transfrfunc)
