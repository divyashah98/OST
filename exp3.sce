// circular convolution using matrix method

c1=input('matrix a')
b=input('matrix b')
j=0;

n1=length(c1);
n2=length(b);

N=max(n1,n2)

if(n1<N)
    c1=[c1 zeros(1,(N-n1))];
else
    b=[b zeros(1,(N-n2))];
end

for r=1:length(c1)
    c(r)=0;
    for i=1:length(c1)
        j=r-i+1;
        if(j<=0)
            j=j+length(c1);
        end
        c(r)=c(r)+c1(j)*b(i);
    end
    
end
disp(c)
a=gca();
a.data_bounds=[0,0;length(c1),max(c)]
r=1:length(c1);
plot2d3(r,c)
