 clc;
 clear all;
 n = -10:1:10;
 y = zeros(length(n));
 for i = 1:length(n)
     if(abs(n(i)) <= 5)
         y(i) = 1;
     end
 end
 stem(n,y);
 xlabel('n');
 ylabel('rect(n)');
 title('Rect for -5 < n < 5 -- 22102109')