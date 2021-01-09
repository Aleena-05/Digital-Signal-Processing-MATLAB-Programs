xn=input('Enter the first input sequence:');
hn=input('Enter the system response sequence:');
n=length(xn);
m=length(hn);
r=m+n-1;
xn=xn.';
b=zeros(r,n);
a=1;
for j=1:n
    k=1;
    for i=1:r
        if a>i
            continue
        elseif k>m
            break
        else 
            b(i,j)=hn(k);
            k=k+1;
        end  
    end
    a=a+1;
end
Y=b*xn;

disp('The Linear convoluted sequence by matrix is');
disp(Y.');
