clc;
clear all;

s = %s;
z = %z;

H = 2/((s+1)*(s+2));
t = 1;
d = ((2/t)*((z - 1)/(z + 1)));
H1 = horner(H, d)
disp(H1, "H(z) = ")
