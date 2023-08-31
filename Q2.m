% part a
syms s
F1=(s^2)+9
F2=90*(s^3)+18*(s^2)+40*s+4
F=F1*F2
f=expand(F)
D=sym2poly(f)
N=[180,0,0,0,0]
[r,p,y]=residue(N,D)

% part b
A=(1.0470 + 0.0716i)/(s-(-0.0000 + 3.0000i))
B=(1.0470 - 0.0716i)/(s-(-0.0000 - 3.0000i))
C=(-0.0471 - 0.0191i)/(s-(-0.0488 + 0.6573i))
E=(-0.0471 + 0.0191i)/(s-(-0.0488 - 0.6573i))
G=(0.0001 + 0.0000i)/(s-(-0.1023 + 0.0000i))
I=ilaplace(A)+ilaplace(B)+ilaplace(C)+ilaplace(E)+ilaplace(G)
pretty(I)