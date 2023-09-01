clc
clear

P = 5000000;
Vl = 4160 ;
Ib = P/(Vl*sqrt(3));
i1 = 169 ;
i2 = 192 ;
Xu = (i1/i2);

for n = 1:100

     P(n) = (n-1)/100;
    Ia(n) = P(n)/1 ;  
    Ef(n) = 1 - (1i*Xu*Ia(n));
    If(n) = (abs(Ef(n)))/(1)*i1;

end

plot(P,If)
