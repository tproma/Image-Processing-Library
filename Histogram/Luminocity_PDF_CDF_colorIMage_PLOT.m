function [Luminance, Luminance_PDF, Luminance_CDF ] = Luminocity_PDF_CDF_colorIMage_PLOT(original_image )
[row, col, color] = size(original_image)

Red = uint8(zeros(row,col));
Red = original_image(:,:,1);

Green = uint8(zeros(row,col));
Green = original_image(:,:,2);

Blue  = uint8(zeros(row,col));
Blue = original_image(:,:,3);

[ RED_PDF, RED_CDF] = Probability_Density_Function( Red );
[ GREEN_PDF, GREEN_CDF] = Probability_Density_Function( Green );
[ BLUE_PDF, BLUE_CDF] = Probability_Density_Function( Blue );

Luminance= zeros(row, col);

for i = 1:row
    for j = 1:col
        Luminance(i,j) = (Red(i,j).* 0.299) + (Green(i,j).* 0.587 ) + (Blue(i,j).* 0.114);        
    end
end

[Luminance_PDF,Luminance_CDF] = Probability_Density_Function( Luminance );
 
x = 1:1:256;
figure, plot(x, RED_PDF,'Red', x, GREEN_PDF, 'Green', x, BLUE_PDF, 'Blue', x, Luminance_PDF,'Black');

figure, plot(x, RED_CDF,'Red', x, GREEN_CDF, 'Green', x, BLUE_CDF, 'Blue', x, Luminance_CDF,'Black');
end

