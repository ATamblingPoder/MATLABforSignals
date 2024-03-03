clc;
clearvars;

out = mycircconv([1 2 1 2], [4 3 2 1]);
out_inbuilt = ifft( fft([1 2 1 2]) .* fft([4 3 2 1]) );
fprintf("1. Circular Convolution using own function is [%i %i %i %i], ", out.');
fprintf("\nusing inbuilt is [%i %i %i %i]", out_inbuilt.');

out = mycircconv([1 2 0 1], [2 2 1 1]);
out_inbuilt = ifft( fft([1 2 0 1]) .* fft([2 2 1 1]) );
fprintf("\n\n2. Circular Convolution using own function is [%i %i %i %i], ", out.');
fprintf("\nusing inbuilt is [%i %i %i %i]", out_inbuilt.');

out = mycircconv([1 -1 1 1], [1 2 3 4]);
out_inbuilt = ifft( fft([1 -1 1 1]) .* fft([1 2 3 4]) );
fprintf("\n\n3. Circular Convolution using own function is [%i %i %i %i], ", out.');
fprintf("\nusing inbuilt is [%i %i %i %i]", out_inbuilt.');

out = mycircconv([1 3 4 5], [2 1 4 1]);
out_inbuilt = ifft( fft([1 3 4 5]) .* fft([2 1 4 1]) );
fprintf("\n\n4. Circular Convolution using own function is [%i %i %i %i], ", out.');
fprintf("\nusing inbuilt is [%i %i %i %i]", out_inbuilt.');

out = mycircconv([1 2 4], [2 5], 4);
out_inbuilt = conv([1 2 4], [2 5]);
fprintf("\n\n5. Linear convolution using circular is [%i %i %i %i],", out.');
fprintf("\nusing inbuilt is [%i %i %i %i]", out_inbuilt.');

out = mycircconv([5 3], [2 4 6], 4);
out_inbuilt = conv([5 3], [2 4 6]);
fprintf("\n\n6. Linear convolution using circular is [%i %i %i %i],", out.');
fprintf("\nusing inbuilt is [%i %i %i %i]", out_inbuilt.');
clearvars;