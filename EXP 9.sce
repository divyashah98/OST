clc;
clear all;

s = %s;
H = 10/(s^2 + 7*s + 10);
PF = pfss(H)
disp(H, "H(s) = ")
disp(PF, "Partial Fraction = ")

//from the output we learn that
A = 3.33333;
B = - 3.33333;
p1 = -2;
p2 = -5;

t = 1;
z = %z;
e = %e;
A1 = (A/(1 - (e^(p1*t) * z^-1)))
B1 = (B/(1 - (e^(p2*t) * z^-1)))
Hz = A1 + B1;
disp(Hz, "Hz = ")
