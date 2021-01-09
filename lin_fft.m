x=input('Enter the first input sequence:');
l1=length(x);
h=input('Enter the system response sequence:');
l2=length(h);
y=conv(x,h);

X=fft(x,length(y));
H=fft(h,length(y));
Y=X.*H;
y1=ifft(Y,length(Y));

disp('The Linear convoluted sequence by inbuilt fn');
disp(y);
disp('The inverse fourier transformed sequence is:');
disp(y1);
