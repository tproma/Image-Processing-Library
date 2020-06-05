function [ new_image ] = Average_filtering_funct( original_image , resize_ratio )

[x,y] = size(original_image);
%new_image = uint8(zeros(x,y));
new_image = uint8(original_image);
rs = floor(resize_ratio/2);

for i = rs+1 : x-rs-1
    for j = rs+1 : y-rs-1
        mask = uint8( original_image(i-rs : i+rs, j-rs : j+rs));
        valueMedian = mean(mask(:));
        new_image(i,j) = valueMedian;
    end
end


end


