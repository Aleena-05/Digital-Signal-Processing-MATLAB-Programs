%dif_idft
Xk=input("enter the DFT sequence of length below 9: ");
N=length(Xk);
y=[Xk,zeros(1,8-N)];
X=conj(y);
v=bitrevorder(X);
n=length(v);
W=exp(-1i*(2*pi/n));
for j=1:n
    if j==1
        g(1,1)=v(1)+v(2);
    end
    for j=2:n
        r=rem(j,2);
        if r~=0
            g(1,j)=v(j)+v(j+1);
        elseif r==0
            g(1,j)=v(j-1)-v(j);
        end
    end
end
s=W^2;
for j=1:n
    r=rem(j,2);
    if j==1
        f(1,1)=g(1)+g(3);
    elseif r==0
        if j==2 || j==6
            f(1,j)=g(j)+(s*(g(j+2)));
        else
            f(1,j)=g(j-2)-(s*(g(j)));
        end
    elseif r~=0
        if j==3 || j==7
            f(1,j)=g(j-2)-g(j);
        else
            f(1,j)=g(j)+g(j+2);
        end     
    end
end
for j=1:n
    m=0;
    for j=1:4
        if m<=3
            x(1,j)=f(j)+((W^m)*f(j+4));
            m=m+1;
        end
    end
    m=0;
    for j=5:8
         if m<=3
             x(1,j)=f(j-4)-((W^m)*f(j));
             m=m+1;
         end
    end
end
x=x/8;
disp("The DIF IDFT is:")
disp(round(x))