function [y, n] = convolution(x1, x2)
    n = 0: length(x1)+length(x1)-2;
    y = zeros(1, length(x1)+length(x1)-1);%aval meghdar hame ra sefr midahim
    % va sepas maghadiri ke niaz ast ba an jam mikonim


    for i = 1:length(x1)
        for k = 1:length(x2)
            y(i+k-1)=y(i+k-1)+(x1(i)*x2(k));
        end
    end
end
