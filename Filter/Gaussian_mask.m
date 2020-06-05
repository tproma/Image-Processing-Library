function [ img1 ] = Gaussian_mask( img, mask_size, sigma )
s=size(img);
img1 = img;

ind = -floor(mask_size/2):floor(mask_size/2);
[X, Y] = meshgrid(ind, ind);
m = (1/(2*pi*sigma^2))*(exp(-(X.^2 + Y.^2) / (2*sigma*sigma)));
m = m / sum(m(:));


m = rot90(rot90(m));

figure, imshow(img);

for i=1:s(1)-mask_size-1
    for j=1:s(2)-mask_size-1
        m1 = (img(i : i+(mask_size-1), j : j+(mask_size - 1)));
        
        m1 = im2double(m1);
        
        m2 = m .* m1;
        
        value =sum(sum(m2));
        
        img1(i+floor(mask_size/2),j+floor(mask_size/2))= value*255 ;
        
    end
    
end

figure, imshow(img1);
end

