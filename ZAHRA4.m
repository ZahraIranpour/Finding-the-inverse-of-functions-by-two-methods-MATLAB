clc;
clear all;

If=[100,200,300,400,500,600,700,775,800];
V_L_SC=[2.27,4.44,6.68,8.67,10.4,11.9,13.4,14.3,14.5];

If1=[0,710];
Ia=[0,6070];

V_L_OC2=0.0217*If+0.1;

figure(1)
plot(If,V_L_SC,If,V_L_OC2), legend('OCC', 'Air gap line');
grid on

figure(2)
plot(If1,Ia,'DisplayName','SCC','MarkerFaceColor',[1 0 0],...
    'MarkerEdgeColor',[1 0 0],...
    'Marker','*',...
    'LineWidth',2,...
    'Color',[0 0 1]),legend('SCC');
grid on



