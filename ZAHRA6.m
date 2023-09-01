clc
clear

t = -0.1:0.001:0.1;
f = 50;
w = 2*pi*f;
V = 220*cos(w*t);

subplot(2,2,1)
plot(t,V)
hold on

V1 = 220*cos(w*t + (4*pi/3));
plot(t,V1)
title('part 1');
hold on
plot(t,V+V1)

f1 = 0.5*f ;
w2 = 2*pi*f1 ;
V2 = 220*cos(w2*t);
subplot(2,2,2)
plot(t,V)
title('part 2');

hold on
plot(t,V2)
hold on
plot(t,V+V2)

V3 = 1.8*V;
subplot(2,2,3)
plot(t,V)
title('part 3');
hold on
plot(t,V3)
hold on
plot(t,V+V3)

f2 = 2*f ;
w4 = 2*pi*f2;
V4 = 2*220*cos(w4*t);
subplot(2,2,4)
plot(t,V)
title('part 4');
hold on
plot(t,V4)
hold on
plot(t,V+V4)