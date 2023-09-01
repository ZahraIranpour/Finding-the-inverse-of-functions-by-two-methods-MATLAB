clear;
close;
clc;

Io = [.1 .15 .2 .3 .4];
cospi = [.95 .9 .8 .75 .7];
figure(1);
plot(Io, cospi, "r-", "LineWidth", 4);
xlabel("Generator Current");
ylabel("Power Factor");