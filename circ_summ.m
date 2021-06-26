x=input('Enter the first sequence:');
n1=length(x);
h=input('Enter the second sequence:');
n2=length(h);
n=n1+n2-1;
if n1>n2
    n3=n1-n2;
    h=[h,zeros(1,n3)];
elseif n2>n1
    n3=n2-n1;
    x=[x,zeros(1,n3)];
end
x=[x,zeros(1,n-n1)];
h=[h,zeros(1,n-n2)];
for n=1:n
    y(n)=0;
    for i=1:n
        j=n-i+1;
        if(j<=0)
            j=n+j;
        end
        y(n)=y(n)+x(i)*h(j);
    end
end
C=cconv(x,h);
disp('The Linear convoluted sequence by inbuilt fn');
disp(C);
disp('Circular Convolution by summation is');
disp(y);