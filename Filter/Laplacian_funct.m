function [ dif, new_image ] = Laplacian_funct( f , c)

new_image = f;

[x,y] = size(f);

% g = ones(size(f));
% g = 255 .* g;

for i = 2:x-1
    for j = 2:y-1
        dif(i,j)= uint8( f(i-1,j)+f(i,j-1)+f(i,j+1)+f(i+1,j)-4*f(i,j) );
        new_image(i,j) =  f(i,j) + (c .* dif(i,j));
        
        if dif(i,j)>15
            dif(i,j)=0;
        else
            dif(i,j)=255;
        end
    end
end


end

