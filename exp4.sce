 // to find output of input sequence by overlap add method
 
 clear all;
 clc;
 x=[3 -1 0 1 3 2 0 1 2 1];
 h=[1 1 1];
 lenx=length(x);
 m=length(h);
 N=4;
 L=N-m+1;
 B=floor(lenx/L);
 
 if(m<N)
     h=[h,zeros(1,(N-m))];
 end
 
 for k=0:B-1                               // CIRCULAR CONVOLUTION
     xk=x((k*L)+1:(k*L)+L);
      xk=[xk,zeros(1,2)];
      disp(xk)
      X=fft(xk);
H=fft(h);

fft_multi=X.*H;

z(k+1,:)=ifft(fft_multi);
 end

// CIRCULAR SHIFTING

Y=[z,zeros(B,8)];

temp=[];
out=0;
v=[];
for i=1:B
    y1=Y(i,:);
    temp=[zeros(1,2*(i-1)),y1];
    v=resize_matrix(temp,1,(lenx+m-1));
    disp(v,"v =")
    out=out+v;
end
 disp("out =")
disp(out)



