x1=input('enter the sequence: ');
n=input('enter the length: '); 
X=fft(x1,n);
disp('N-Point DFT of a given sequence: '); 
disp(X);
x=ifft(X);
disp("IDFT Of obtained DFT: ")
disp(x)
