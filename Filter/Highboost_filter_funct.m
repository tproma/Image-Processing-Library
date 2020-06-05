function [ new_image ] = Highboost_filter_funct( image, blur, k)
% k  = 1 unsharp masking 
% k >1 highboost filtering

[x,y] = size(image);
new_image = image;

for i = 1: x
    for j = 1: y
        g_mask =  image(i,j) - blur(i,j);
        new_image(i,j) = uint8( image(i,j) + ( k * g_mask));
    end
end

end
