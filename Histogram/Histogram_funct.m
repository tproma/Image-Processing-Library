function [ hist ] = Histogram_funct( image )

[imageX, imageY]  = size(image);
hist = zeros(1,256);

for i = 1: imageX
    for j = 1 :imageY
%         k = image(i, j);
%         k = k + 1;
%         hist(1, k) =  hist(1, k) + 1;    
          hist(1,(image(i,j)+1)) =  hist(1,(image(i,j)+1)) + 1;
    end           
end

 hist = hist';
 
%bar(hist, 'stacked');


end

