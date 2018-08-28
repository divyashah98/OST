//Aim: To design a FIR filter with Hamming Window

clc;
clear all;

//Finding hd(n) {Desired Impulse response in time domain}
n = -15:15;
pi = 3.14;
hd = 0.25*sinc((pi/4)*n);
figure(1)
a = gca();
a.x_location = "Origin";
a.y_location = "Origin";
plot2d3(n, hd)

//Finding Hamming Window
N = length(n);
w = window('hm', N);
figure(2)
a = gca();
a.x_location = "Origin";
a.y_location = "Origin";
plot2d3 (n, w)

//Actual impulse response
h = hd.* w;
figure(3)
a = gca();
a.x_location = "Origin";
a.y_location = "Origin";
plot2d3 (n, h)

//Frequency Response
[xm,fr] = frmag(h, length(h));
figure (4)
plot(fr, xm)
