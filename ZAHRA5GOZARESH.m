clear; close; clc;
IL = [.2 .4 .5 .55 .6 .62 .7];
VL = [398.1 357.8 323.6 303.5 275.4 247.6 202.8];
figure(1);
plot(IL, VL, "b-", "LineWidth", 4);
xlabel("Output Current");
ylabel("Output Voltage");