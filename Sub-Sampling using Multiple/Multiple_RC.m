function [n] = Multiple_RC(m)
[x y] = size(m);
n = uint8(zeros(x/2, y/2));

row =1;
col =1;

for i = 1:2:x
    for j = 1:2:y
        
        valueMean = m(i,j);
        
        if col == y/2+1
            row = row+1;
            col = 1;
            
        end
        n(row, col) = valueMean;
        
        col = col + 1;
        
    end
end