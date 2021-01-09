% linear convolution using inbuilt function

x=input('Enter the first sequence to be convoluted:');
h=input('Enter the second sequence to be convoluted:');

f=conv(x,h);
disp('The Linear convoluted sequence by inbuilt function is');
disp(f);
