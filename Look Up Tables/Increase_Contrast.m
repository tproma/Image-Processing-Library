function LUT = Increase_Contrast(g) % g > 1.0
x = 0:255;
LUT = g*(x - 127)+127;
for i = 1:256
    if LUT(1,i) <= 0
        LUT(1,i) = 0;
    elseif LUT(1,i)>= 255
        LUT(1,i) = 255;
    else LUT(1,i) = LUT(1,i);
    end
end
uint8(LUT);
end