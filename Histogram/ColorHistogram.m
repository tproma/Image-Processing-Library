function [ x, yRed, yGreen,yBlue] = ColorHistogram( image )

%........Split into RGB Channels.........

%s = size(image);
[row, col, color] = size(image);
Red = uint8(zeros(row,col));
Red = image(:,:,1);

%imshow(Red);

Green = uint8(zeros(row,col));
Green = image(:,:,2);
%imshow(Green);

Blue  = uint8(zeros(row,col));
Blue = image(:,:,3);
%imshow(Blue);

%Get histValues for each channel
[yRed, x] = imhist(Red);
[yGreen, x] = imhist(Green);
[yBlue, x] = imhist(Blue);

%Plot them together in one plot
plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue')

end

