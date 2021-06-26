%dif_8 point dft
xn=input("enter the input sequence of length below 9: ");
N=length(xn);
v=[xn,zeros(1,8-N)];
n=length(v);
W=exp(-1i*(2*pi/n));
for j=1:n
    for j=1:4
        f(1,j)=v(j)+v(j+4);
    end
    m=0;
    for j=5:8
        if m<=3
            f(1,j)=(v(j-4)-v(j))*(W^m);
            m=m+1;
        end
    end
end
s=W^2;
for j=1:n
    for j=1:2
        g(1,j)=f(j)+f(j+2);
    end
    for j=5:6
        g(1,j)=f(j)+f(j+2);
    end
    m=0;
    for j=3:4
        if m<=2
            g(1,j)=(f(j-2)-f(j))*(W^m);
            m=m+2;
        end
    end
    m=0;
    for j=7:8
         if m<=2
            g(1,j)=(f(j-2)-f(j))*(W^m);
            m=m+2;
         end
    end
end
for j=1:4
    if j==1 || j==3
        X(1,j)=g(j)+g(j+1);
    else
        X(1,j)=g(j+3)+g(j+4);
    end
end
for j=5:8
    if j==5 || j==7
        X(1,j)=(g(j-4)-g(j-3));
    else
        X(1,j)=(g(j-1)-g(j));
    end
end
disp("The DIF DFT is:")
disp(X)