%LINEAR CONVOLUTION USING TOEPLITZ INBUILT COMMAND

x=input('Enter the first sequence to be convoluted:');
h=input('Enter the second sequence to be convoluted:');
m=length(x);
l=zeros(1,m-1);
H1=[h(1) l];
H2=[h l];
HT = toeplitz(H1,H2);
y1 = conv(x,h);
y2 = x*HT;
 
disp('The Linearly convolved sequence by inbuilt fn');
disp(y1);
disp('The Linearly convolved sequence by toeplitz matrix is');
disp(y2);


x=input('Enter the first sequence to be convoluted:');
h=input('Enter the second sequence to be convoluted:');
m=length(x);
l=zeros(1,m-1);
H1=[h(1) l];
H2=[h l];
HT = toeplitz(H1,H2);
y1 = conv(x,h);
y2 = x*HT;

disp('The Linear convoluted sequence by inbuilt fn');
disp(y1);
disp('The Linear convoluted sequence by toeplitz matrix is');
disp(y2);
