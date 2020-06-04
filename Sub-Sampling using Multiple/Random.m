function [n] = Random(m)
[x y] = size(m);
n = uint8(zeros(x/2, y/2));

row =1;
col =1;

for i = 1:2:x-1
    for j = 1:2:y-1
        % r = floor(rand(1)*10)
        r = floor(1 + rand(1) * (4-1));
        mask = uint8(m(i : i+1, j : j+1));
        
        if r == 1
            valueMean = median(mask(1,1));
        elseif r == 2
            valueMean = median(mask(1,2));
        elseif r == 3
            valueMean = median(mask(2,1));
        else valueMean = median(mask(2,2));
            
        end
        if col == y/2+1
            row = row+1;
            col = 1;
            
        end
        n(row, col) = valueMean;
        
        col = col + 1;
        
    end
end