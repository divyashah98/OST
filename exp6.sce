clc;
clear all;

a = [0 1 1 0 1 0 1]
b = [1 1 0 0 1 1 0]

N = 7;
count = 0;
for i = 1:N
    if(a(i) ~= b(i))
        count = count + 1;
    end
end

disp(count, 'hamming distance =')

str = sprintf('hamming distance: %d ',count)
disp(str)


// to play sa re ga ma

f = [240 254 302 320 358.5 380 451 470]
fs = 8000;
n = length(f)
N = 1:4000;
temp = [];

for i = 1:n
    y = sin(2*3.14*(f(i)/fs)*N);
    temp = [temp y];
    disp(temp)
end 
sound(temp, fs)

rev = [];
N1 = 1:4000;
for n = n:-1:1
     y1 = sin(2*3.14*(f(i)/fs)*N1);
    rev = [rev y1];
    disp(rev)
end
sound(rev, fs)
