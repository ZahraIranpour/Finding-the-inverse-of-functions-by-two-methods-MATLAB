%%% S1
num=2*[0.5  1];
den=[0.1  0.3  0  1];
sys=tf(num,den);
nyquist(sys)

% K = 0.7
num=0.7*2*[0.5  1];
den=[0.1  0.3  0  1];
sys=tf(num,den);
nyquist(sys)


%%% S2
s=tf('s');
sys=exp(-2*s)*5*(s+1)/(s*(5*s+1));
bode(sys)


