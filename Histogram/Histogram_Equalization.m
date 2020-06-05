function [ LUT ] = Histogram_Equalization(image, CDF )
figure, imshow(image);

Equalized_Histogram =uint8(255.* CDF);
LUT = floor(Equalized_Histogram);

%.......................................................

[r,c] = size(image);
im2 = uint8( zeros(r,c));

for i = 1:r
    for j = 1:c
        im2(i,j) = LUT(image(i,j)+1);
    end
end

%plot(LUT);
%figure, imshow(image)
figure,imshow(im2)
% figure, imhist(image)
% figure, imhist(im2)

end