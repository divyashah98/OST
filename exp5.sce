clc;
clear all;

[y fs] = wavread('s1.wav', [6000, 7999])
sound(y)
n = length(y);
//Plotting audio file against time
t = 1:n
figure(1)
plot(t, y)

//Finding Fs and length of audio file
disp(fs, "fs = ")
disp(n, "length of y = ")

//Finding FFT
//Plotting FFT magnitude against sample number
f = abs(fft(y))
k = 0:(n - 1)
figure(2)
plot(k, f)

//Plotting FFT magnitude against frequency
w = (k/n)*fs
figure(3)
plot(w, f)
