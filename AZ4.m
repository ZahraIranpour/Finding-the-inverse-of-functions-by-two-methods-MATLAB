clear; close; clc;
Ig =  0:  0.05: 0.65;
Vt = [4.2 60 98 156 195 240 280 310 335 350 370 380 395 400];
plot(Ig, Vt, 'b-', 'LineWidth', 4);
grid on;
xlabel('Generator Current');
ylabel('Voltage');