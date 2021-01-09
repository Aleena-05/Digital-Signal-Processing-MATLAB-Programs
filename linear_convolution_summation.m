x=input('Enter the first sequence to be convolved:');
h=input('Enter the second sequence to be convolved:');
m=length(h);
n=length(x);
if m>n
    x=[x,zeros(1,m-n)];
elseif n>m
    h=[h,zeros(1,n-m)];
end
y=zeros(n,(n+m-1));
for i=1:n
    a=1;
   for j=1:(n+m-1)
       if a>m 
           break
       elseif(i-j)<=0
           y(i,j)=x(i)*h(a);
           a=a+1;
       end    
   end
end
a=zeros(1,(n+m-1));
for j=1:n
    for i=1:(n+m-1)
        a(i)=a(i)+y(j,i);
    end
end  
disp('The Linear convolved sequence by summation is');
disp(a)