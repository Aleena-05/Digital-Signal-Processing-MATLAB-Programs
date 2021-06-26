x=input("ENTER INPUT SEQUENCE x[n]: ");
l=input("ENTER SEQUENCE LENGTH L: ");
h=[2 3 4];
xl=length(x);
m=length(h);
z=m-1;
N=l+z;
c=zeros(l1+1,N);
f=N-1;
v=l+1;
for i=1:l1+1
    if i==1
        i1=1;
        for j=1:N
            if j<=z
             continue
            else
              c(i,j)=x(i1);
              i1=i1+1; 
            end    
        end 
    else
        for j=1:N
            if f>N
                if v>xl
                    break
                else
                    c(i,j)=x(v);
                    v=v+1;
                end
            else
                c(i,j)=c((i-1),f);
                f=f+1;
                
            end    
        end    
        f=N-1;
    end
end
p=zeros(l1+1,N);
 
for i=1:l1+1
    x1=c(i,:);
    p(i,:)=cconv(x1,h,N);
end
n=1;
for i=1:l1+1
    for j=m:N
        y(n)=p(i,j);
        n=n+1;
    end
end 
y=y(1:xl+m-1);
disp("Result after convolution:")
disp(p);
disp('The output sequence y[n]: ');
disp(y);
stem(y);
title('Overlap Save Method');
xlabel('n');
ylabel('y[n]'); 