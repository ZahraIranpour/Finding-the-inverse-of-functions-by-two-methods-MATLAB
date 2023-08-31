syms s F f
F=((180*(s^4))/(((s^2)+9)*(90*(s^3)+18*(s^2)+40*s+4)))
f=ilaplace(F)
pretty(f)