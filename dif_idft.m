%dit_idft
Xk=input("enter the DFT sequence of length below 9: ");
N=length(Xk);
y=conj(Xk);
v=[y,zeros(1,8-N)];
n=length(v);
W=exp(-1i*(2*pi/n));
for j=1:n
    for j=1:4
        F(1,j)=v(j)+v(j+4);
    end
    m=0;
    for j=5:8
        if m<=3
            F(1,j)=(v(j-4)-v(j))*(W^m);
            m=m+1;
        end
    end
end
s=W^2;
for j=1:n
    for j=1:2
        G(1,j)=F(j)+F(j+2);
    end
    for j=5:6
        G(1,j)=F(j)+F(j+2);
    end
    m=0;
    for j=3:4
        if m<=2
            G(1,j)=(F(j-2)-F(j))*(W^m);
            m=m+2;
        end
    end
    m=0;
    for j=7:8
         if m<=2
            G(1,j)=(F(j-2)-F(j))*(W^m);
            m=m+2;
         end
    end
end
for j=1:n
    for j=1:4
        if j==1 || j==3
            x(1,j)=G(j)+G(j+1);
        else
            x(1,j)=G(j+3)+G(j+4);
        end
    end
    for j=5:8
        if j==5 || j==7
            x(1,j)=(G(j-4)-G(j-3));
        else
            x(1,j)=(G(j-1)-G(j));
        end
    end
end
x=x/8;
disp("The DIT IDFT is:")
disp(round(x))