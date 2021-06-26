%dit for 8 point dft
xn=input("enter the input sequence of length below 9: ");
N=length(xn);
x=[xn,zeros(1,8-N)];
v=bitrevorder(x);
n=length(v);
W=exp(-1i*(2*pi/n));
for j=1:n
    if j==1
        G(1,1)=v(1)+v(2);
    end
    for j=2:n
        r=rem(j,2);
        if r~=0
            G(1,j)=v(j)+v(j+1);
        elseif r==0
            G(1,j)=v(j-1)-v(j);
        end
    end
end
s=W^2;
for j=1:n
    r=rem(j,2);
    if j==1
        F(1,1)=G(1)+G(3);
    elseif r==0
        if j==2 || j==6
            F(1,j)=G(j)+(s*(G(j+2)));
        else
            F(1,j)=G(j-2)-(s*(G(j)));
        end
    elseif r~=0
        if j==3 || j==7
            F(1,j)=G(j-2)-G(j);
        else
            F(1,j)=G(j)+G(j+2);
        end     
    end
end
m=0;
for j=1:4
    if m<=3
        X(1,j)=F(j)+((W^m)*F(j+4));
        m=m+1;
    end
end
m=0;
for j=5:8
     if m<=3
         X(1,j)=F(j-4)-((W^m)*F(j));
         m=m+1;
     end
end
disp("The DIT DFT is:")
disp(X)