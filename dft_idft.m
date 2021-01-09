xn=input('Enter the input sequence x(n):');
len=length(xn);
N=input('Enter the value of N:');
if N>len
    for k=len+1:N
        xn(k)=0;
    end
    xsig=xn;
else
    xsig=xn;
end
xt=xsig.';
w=exp((-1i*2*pi)/N);
method=menu('Choose method','1.Summation','2.Liner transformation','3.Inbuilt command');
switch method
    case 1
        sum(xsig,N,w);
    case 2
        lt(xt,N,w);
    case 3
        inblt(xn,N);
end
 
function sum(sig,num,w)
Xk=zeros(1,num);
for k=0:num-1
    for n=0:num-1
        Xk(k+1)=Xk(k+1)+sig(n+1)*(w^(k*n));
    end
end
iXk=zeros(1,num);
for k=0:num-1
    for n=0:num-1
        iXk(k+1)=iXk(k+1)+(1/num)*Xk(n+1)*(w^(-1*k*n));
    end
end
disp("DFT of given sequence is:");
disp(Xk)
disp("IDFT of the DFT is:");
disp(iXk)
magnitude=abs(Xk);
phase=angle(Xk);
mag=abs(iXk);
ph=angle(iXk);
 
t=0:num-1;
subplot(2,2,1)
stem(t,magnitude)
ylabel ('Amplitude');
xlabel ('K');
title('Magnitude spectrum of DFT')
 
subplot(2,2,2)
stem(t,phase)
ylabel ('Amplitude');
xlabel ('K');
title('Phase spectrum of DFT')
 
subplot(2,2,3);
stem(t,mag);
ylabel ('Amplitude');
xlabel ('K');
title ('Magnitude spectrum of IDFT');
 
subplot(2,2,4);
stem(t,ph);
ylabel ('Phase');
xlabel ('K');
title ('Phase spectrum of IDFT');
 
end
 
function lt(sig,num,w)
xz=zeros(num,num);
for k=0:num-1
    for n=0:num-1
        xz(k+1,n+1)=w^(k*n);
    end
end
dft=xz*sig;
xm=zeros(num,num);
for k=0:num-1
    for n=0:num-1
        xm(k+1,n+1)=w^(-1*k*n);
    end
end
idft=xm*dft;
idft=idft./num;
dft
idft
magnitude=abs(dft);
phase=angle(dft);
mag=abs(idft);
ph=angle(idft);
 
t=0:num-1;
subplot(2,2,1)
stem(t,magnitude)
ylabel ('Amplitude');
xlabel ('K');
title('Magnitude spectrum of DFT')
 
subplot(2,2,2)
stem(t,phase)
ylabel ('Amplitude');
xlabel ('K');
title('Phase spectrum of DFT')
 
subplot(2,2,3);
stem(t,mag);
ylabel ('Amplitude');
xlabel ('K');
title ('Magnitude spectrum of IDFT');
 
subplot(2,2,4);
stem(t,ph);
ylabel ('Phase');
xlabel ('K');
title ('Phase spectrum of IDFT');
end
 
function inblt(sig,num)
dft=fft(sig,num);
idft=ifft(dft,num);
dft
idft
 
magnitude=abs(dft);
phase=angle(dft);
mag=abs(idft);
ph=angle(idft);
 
t=0:num-1;
subplot(2,2,1)
stem(t,magnitude)
ylabel ('Amplitude');
xlabel ('K');
title('Magnitude spectrum of DFT')
 
subplot(2,2,2)
stem(t,phase)
ylabel ('Amplitude');
xlabel ('K');
title('Phase spectrum of DFT')
 
subplot(2,2,3);
stem(t,mag);
ylabel ('Amplitude');
xlabel ('K');
title ('Magnitude spectrum of IDFT');
 
subplot(2,2,4);
stem(t,ph);
ylabel ('Phase');
xlabel ('K');
title ('Phase spectrum of IDFT');
end
