clc;
clear all;

ap = 3;                     //
as = 15;                    //

wp = 2;                     // Analog Passband Edge
ws = 4.828;                 // Analog Stopband Edge

// Low Pass Filter

// Order of filter
n = 0.5*(log((10^((0.1)*(as)) - 1)/(10^((0.1)*(ap)) - 1)));
N = n/(log(ws/wp));
N = ceil(N)
disp(N, "Order of filter = ")

// Cut-off Frequency
wc = wp/((10^(0.1*ap) - 1)^(1/2*N))
disp (wc, "Cut-off frequency = ")

//Transfer Function
s = %s;
H = 1/(s^2 + 1.414*s +1);                           //normal T.F.
disp(H, "Transfer function of normal LPF = ")
h = horner(H, s/wc);                                //designed T.F.
disp(h, "Transfer function of designed LPF = ")


// High Pass Filter

//Order of Filter
n1 = 0.5*(log((10^((0.1)*(as)) - 1)/(10^((0.1)*(ap)) - 1)));
N1 = n1/(log(wp/ws));
N1 = ceil(abs(N1))
disp(N1, "Order of HPF Filter = ")

//Cut-off Frequency
wc1 = ws/((10^(0.1*ap) - 1)^(1/2*N1))
disp (wc1, "Cut-off frequency = ")

//Transfer Function
s1 = %s;
H1 = 1/(s1^2 + 1.414*s1 +1);                           //normal T.F.
disp(H1, "Transfer function of normal HPF = ")
h1 = horner(H1, wc1/s1);                                //designed T.F.
disp(h1, "Transfer function of designed HPF = ")
