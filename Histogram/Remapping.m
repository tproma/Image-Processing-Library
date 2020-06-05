
function [ LUT, new_image] = Remapping( input_CDF, target_CDF, original_image, target_image)

LUT = zeros(size(256,1));
j = 0;
for i = 0:255
   while target_CDF(j+1)< input_CDF(i+1) && j<255
       j = j+1;
   end
   LUT(i+1) = j;
end

 LUT =  LUT';
 %.............................Image formation....................
 
[r,c] = size(original_image);
 new_image = uint8( zeros(r,c));

for i = 1:r
    for j = 1:c
        new_image(i,j) = LUT(original_image(i,j)+1);
    end
end
 
% figure, imshow(original_image);
% figure, imshow(target_image);
% figure, imshow(new_image);
end

