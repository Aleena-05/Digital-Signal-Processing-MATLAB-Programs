x=input('Enter the input sequence x[n]: ');
h=[2 3 4];
f=cconv(x,h);
disp('Output y[n] using inbuilt fn:');
disp(f);
stem(f);
title('Convolution using inbuilt function');
xlabel('n');
ylabel('y[n]'); 