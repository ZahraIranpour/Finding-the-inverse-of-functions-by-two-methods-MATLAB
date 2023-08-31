clc
clear
close all

syms k s 

% alef

k=1
a=k*(s+2)
b=expand(a)
num=sym2poly(b)
den=[1 5.5 8 2.5]
g=tf(num,den)

sisotool(g)

% be
step(g)