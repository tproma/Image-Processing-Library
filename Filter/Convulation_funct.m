function [ new_image ] = Convulation_funct( image, mask_size )

[x,y] = size(image);
new_image = image;

m1 = zeros(size(mask_size,mask_size));
m1 =  m1 + (1/(mask_size).^2);

mask_dist = floor(mask_size/2);

for  i = mask_dist+1 : x - mask_dist -1
    for j = mask_dist+1 : y - mask_dist -1
        
        mask = uint8( image( i - mask_dist : i + mask_dist , j - mask_dist : j + mask_dist) );
        m = m1 .* mask;
        
        value = sum(sum(m));
        
        new_image(i,j) = value;
    end
end

end

