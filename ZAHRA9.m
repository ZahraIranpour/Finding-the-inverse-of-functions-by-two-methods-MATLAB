
clc
clear all

V = 8 ; 
Rl = 50 ;   

N2 = 1 ;
N1 = 1:12 ;

for k = 1:12
    a(k) = N1(k)/N2 ;
    Rl2(k) = a(k)^2 * Rl ;
    Z(k) = 2000 + Rl2(k) ;
    I(k) = V/Z(k) ;
    P(k) = Rl2(k)*I(k)^2 ;
end

A = plot(a,P) ;
xlabel('Trans Ratio') ;
ylabel('Load Power') ;

hold on

for k = 1:12
    a(k) = N1(k)/N2 ;
    Rl2(k) = a(k)^2 * Rl ;
    Z(k) = 1i*2000 + Rl2(k) ;
    I(k) = V/Z(k) ;
    P(k) = Rl2(k)*abs(I(k))^2 ;
end

B =plot(a,P) ;
legend('A','B')
