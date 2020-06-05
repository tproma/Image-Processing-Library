function [ LUT ] = Increase_Brightness( g)

x = 0:255;
LUT = x+g;
uint8(LUT);

end

