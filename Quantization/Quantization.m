function [ new_image ] = Quantization( imgage,bit )

[row,col] = size(imgage);
imtool(imgage)
new_image = uint8(zeros(size(imgage)));
si=256/(2.^bit);

for i=1: row
    for j=1:col
        p = floor(imgage(i,j)/si)*si;
        new_image(i,j)=p+si;
    end
end
%imtool(new_image)
end

