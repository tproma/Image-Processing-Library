function [ new_image ] = Highpass_filter_funct( image)

[x,y] = size(image);
new_image = image;

 m1 = [-1 -1 -1 ;-1 8 -1;-1 -1 -1];
 m1
 mask = (1/9).*m1;
 
 mr = floor(3/2);
 
for i = mr+1: x-mr
    for j = mr+1: y-mr    
        
        m2 =  image(i-mr:i+mr , j-mr:j+mr);
        m2 = im2double(m2);
        m = mask .*m2;
        value = sum(m(:));
        new_image(i,j) = uint8( value);
    
    end
end

end
