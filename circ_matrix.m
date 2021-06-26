x=input('Enter the first sequence to be convoluted:');
h=input('Enter the second sequence to be convoluted:');
m=length(h);
n=length(x);
x=[x,zeros(1,m-1)];
h=[h,zeros(1,n-1)];
hn=zeros(1,length(h));
s=length(h);
Y=zeros(1,s);
for k=1:s
    if k==1
        for i=1:s
            if s<0
                break
            elseif i==1
                hn(i)=h(i);
            else    
                hn(i)=h(s);
                s=s-1;
            end
        end
        z=x.*hn;
     Y(k)=sum(z);
    else
        zn=circshift(hn,k-1);
        z=x.*zn;
        Y(k)=sum(z);
        
    end   
    
end    
disp('The circular convoluted sequence by matrix method is');
disp(Y)