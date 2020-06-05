function LUT = LookUpTable_Gamma(g)

x = 0:255;
LUT = 255*((x/255).^(1/g));
uint8(LUT);

end