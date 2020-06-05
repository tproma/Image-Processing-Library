function [ Lhist ] = LuminancePlot( image )

s = size(image);
Red = uint8(zeros(s));
Red = image(:,:,1);

Green = uint8(zeros(s));
Green = image(:,:,2);

Blue  = uint8(zeros(s));
Blue = image(:,:,3);

%Get histValues for each channel
[yRed, x] = imhist(Red);
[yGreen, x] = imhist(Green);
[yBlue, x] = imhist(Blue);

[row, col,c] = size(image);
Luminance = zeros(row, col);

for i = 1:row
    for j = 1:col
        Luminance(i,j) = (image(i,j,1).* 0.299 )+ (image(i,j,2).* 0.587 ) + (image(i,j,3).* 0.114);
    end
end

Lhist = zeros(1,256);

for i = 1: row
    for j = 1 :col
        k = image(i, j);
        k = k + 1;
        Lhist(1, k) =  Lhist(1, k) + 1;
    end
end
Lhist = Lhist';
plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue', x, Lhist,'Black')
end

