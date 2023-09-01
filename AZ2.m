clear; close; clc;
%% Plot Electrical Machine II Lab
Speed_null = [1470 1410 1360 1340 1260];
PW = [.32 .4 .45 .58 .68];
figure(1);
plot(Speed_null, PW, 'g-',"LineWidth", 4);
ylabel("Power Factor");
xlabel("Speed");
title("No Load");