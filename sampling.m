clear all
clear variables

%function [list of output arguments]=myfunctionname(list of input arguments)

% Write a fourier transform function :

% inputs : y ( vector containing Nt values of the signal to process)
%          Nf the number of freq
%          fs the sampling frequency

% outputs : f (frequencies to which tf is calculated), tfx (approximation of
% the fourier transform of x


Nt = 128;
fs = 1000;
f0 = 5/128*fs;
a = 1;
phi = 0;
n = 0:Nt-1;
Dt = 1/fs;
t = n * Dt;
y = a*cos(2*pi*f0*(n/fs) + phi);

Nf = 128;
[f, tfx] = transffourier(y, Nf, fs);

plot(f, abs(tfx));


function [f, tfx] = transffourier(y, Nf, fs)
    
    k = 0:Nf-1;
    f = k*fs/Nf;
    tfx = 1/fs*fft(y, Nf);
  
end

