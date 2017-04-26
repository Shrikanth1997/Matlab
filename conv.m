x1_time=input ('Enter the first sequences x1(n):');
x2_time=input ('Enter the second sequences x2(n):');
 
%Y = fft(X,n) returns the n-point DFT. If the length of X is %less than n, X is padded with trailing zeros to length n. If %the length of X is greater than n, the sequence X is %truncated. 

%linear convolution using fft() and ifft()
N=length(x1_time)+ length(x2_time)-1;
x1_freq=fft(x1_time,N);
x2_freq=fft(x2_time,N);
x1x2_mul=x1_freq.*x2_freq;
lin_conv=ifft(x1x2_mul);
disp('The linear convolution of given two sequences:');
disp(lin_conv);
disp('');

%circular convolution
P=max(length(x1_time),length(x2_time));
x1_freq=fft(x1_time,P);
x2_freq=fft(x2_time,P);
x1x2_mul=x1_freq.*x2_freq;
cir_conv=ifft(x1x2_mul);
disp('The circular convolution of given two sequences:');
disp(cir_conv);

