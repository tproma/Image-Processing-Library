function [n] = Average(m, reduceSize)
[x, y] = size(m);
resize_ratio_x = x/reduceSize(1,1);
resize_ratio_y = y/reduceSize(1,2);

n = uint8(zeros(reduceSize(1,1), reduceSize(1,2)));
row =1;
col =1;

%...............MEAN...............
%
for i = 1 : resize_ratio_x : x-1
    for j = 1 : resize_ratio_y : y-1
        mask = uint8(m(i : i+ (resize_ratio_x-1), j : j+ (resize_ratio_y-1)));
        valueMean = mean(mask(:));
        
        if col == reduceSize(1,2)+1
            row = row+1;
            col = 1;
            
        end
        n(row, col) = valueMean;
        col = col + 1;
    end
end
end