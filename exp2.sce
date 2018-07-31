x=[1,2,3,4];
i=sqrt(-1);
s=0;

for k=1:length(x)
 v(k)=0;
for n=1:length(x)
  v(k)=v(k)+(x(n)*exp(-i*((2*3.14)/length(x)*(k-1)*(n-1))));
end
end
disp(v);
disp(ceil(v))

