x=input("ENTER INPUT SEQUENCE x[n]: ");
l=input("ENTER SEQUENCE LENGTH L: ");
xl=length(x);
l1=round(xl/l);
h=[2 3 4];
m=length(h);
z=m-1;
N=l+z;
c=zeros(l1+1,N);
u=1;
for i=1:l1+1
    for j=1:N
        if u>xl
            break
        elseif j>l
            break
        else
            c(i,j)=x(u);
            u=u+1;
        end    
    end    
end
p=zeros(l1+1,N);
 
for i=1:l1+1
    x1=c(i,:);
    p(i,:)=cconv(x1,h,N);
end
n=1;
for i=1:l1+1
    if i==1 
        for j=1:l
            y(n)=p(i,j);
            n=n+1;
        end
        for j=l+1:N
            y(n)=p(i,j)+p(i+1,j-l);
            n=n+1;
        end
    elseif i>1 && i<l1
        for j=z+1:l
            y(n)=p(i,j);
            n=n+1;
        end
        for j=l+1:N
            y(n)=p(i,j)+p(i+1,j-l);
            n=n+1;
        end
    end
end
y=y(1:xl+m-1);
disp("Result after convolution:")
disp(p);
disp("The output sequence y[n] is:");
disp(y);
stem(y);
title('Overlap Add Method');
xlabel('n');
ylabel('y(n)'); 