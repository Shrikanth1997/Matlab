tfinal=0.01;
t=0:0.00001:tfinal;
xanalog=cos(2*pi*400*t)+cos(2*pi*700*t);

%critical sampling  fs=2fm(fm=700)
fs=1400;
%Note that samples will repeat after 13/fs,hence its %sufficient if we consider first 14 samples(0 to 13) of analog %signal (observe the figures given previously)
tsamp=0:1/fs:13/fs;
xsampled=cos(2*pi*400*tsamp)+cos(2*pi*700*tsamp);
%calculate 14 point DFT of sampled signal. abs(...) is %required because plot function displays only real values
xsampled_DFT=abs(fft(xsampled));
xsampled_length=0:length(xsampled_DFT)-1;
subplot(3,1,1);
stem(100*xsampled_length,xsampled_DFT);
xlabel('Frequency');
ylabel('Magnitude');
title('Critical Sampling (fs=2fm)');

%xreconstructed=ifft(fft(xsampled));
%subplot(3,1,3);
%plot(tsamp,xreconstructed,'b*-');
%xlabel('Time');
%ylabel('Amplitude');
%title('Critical Sampling (fs=2fm)');
 
%Under Sampling(fs<2fm)
fs=700;
%Note that samples will repeat after 6/fs,hence its sufficient
%if we consider first 7 samples(0 to 6) of analog signal
tsamp=0:1/fs:6/fs;
xsampled=cos(2*pi*400*tsamp)+cos(2*pi*700*tsamp);
%calculate 7 point DFT of sampled signal.
xsampled_DFT=abs(fft(xsampled));
xsampled_length=0:length(xsampled_DFT)-1;
subplot(3,1,2);
stem(100*xsampled_length,xsampled_DFT)
xlabel('Frequency');
ylabel('Magnitude');
title('Under Sampling (fs<2fm)');

%xreconstructed=ifft(fft(xsampled));
%subplot(4,1,3);
%plot(tsamp,xreconstructed,'b*-');
%xlabel('Time');
%ylabel('Amplitude');
%title('Under Sampling (fs<2fm)');
 
%over Sampling(fs>2fm)
fs=2000;
%Note that samples will repeat after 19/fs,hence its %sufficient if we consider first 20 samples(0 to 19) of analog %signal
tsamp=0:1/fs:19/fs;
xsampled=cos(2*pi*400*tsamp)+cos(2*pi*700*tsamp);
%calculate 20 point DFT of sampled signal.
xsampled_DFT=abs(fft(xsampled));
xsampled_length=0:length(xsampled_DFT)-1;
subplot(3,1,3);
stem(100*xsampled_length,xsampled_DFT)
xlabel('Frequency');
ylabel('Magnitude');
title('Over Sampling (fs>2fm)');
