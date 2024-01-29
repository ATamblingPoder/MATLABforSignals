function [conv_out] = self_conv(arr1, arr2)
    len1 = length(arr1);
    len2 = length(arr2);
    conv_out = zeros(1, len1 + len2 - 1);
    arr1_temp = zeros(1, len1 + len2 + len2 - 2);
    arr1_temp(len2:(len2+len1-1)) = arr1(1,:);
    arr2_temp = flip(arr2);
    for i = 1:(len1+len2-1)
        temp = arr1_temp(i:(i+len2-1)) .* arr2_temp(1,:);
        conv_out(i) = sum(temp);
    end
    clearvars arr1_temp arr2_temp len1 len2 temp;
end