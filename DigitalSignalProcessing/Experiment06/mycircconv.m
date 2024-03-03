function [cconv_out] = mycircconv(x1,x2,N)
% Function to calculate circular convolution
% using Toeplitz matrix
l1 = length(x1);
l2 = length(x2);
if nargin < 3
    N = max(l1,l2);
    x1 = [x1 zeros(1, N - l1)];
    x2 = [x2 zeros(1, N - l2)];
elseif nargin == 3
    if N < min(l1,l2)
        error("Value of N is less than an array's length.");
    end
    x1 = [x1 zeros(1, N - l1)];
    x2 = [x2 zeros(1, N - l2)];
end
x1_t = circshift(flip(x1), 1);
H = toeplitz(x1, x1_t);
cconv_out = H * (x2');
cconv_out = cconv_out';
end