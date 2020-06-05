function [ Luminocity_remapped_image ] = Luminocity_remapped_function( original_image, target_image )

[row,col,color] = size(original_image);

Red = uint8(zeros(row,col));
Red = original_image(:,:,1);

Green = uint8(zeros(row,col));
Green = original_image(:,:,2);

Blue  = uint8(zeros(row,col));
Blue = original_image(:,:,3);
%  im = cat(3,Red, Green, Blue);
%  imshow(im)

[ RED_PDF, RED_CDF] = Probability_Density_Function( Red );
[ GREEN_PDF, GREEN_CDF] = Probability_Density_Function( Green );
[ BLUE_PDF, BLUE_CDF] = Probability_Density_Function( Blue );

%..................................TARGET IMAGE CDF CALCULATION............
[Luminance_target, Luminance_PDF_target, Luminance_CDF_target ] = Luminocity_PDF_CDF_colorIMage_PLOT( target_image );


%...........................REMAPPING OF THE Luminocity of COLOR IMAGES..................


[R_LUT, Remapped_Red] = Remapping( RED_CDF, Luminance_CDF_target, Red, target_image);
[G_LUT, Remapped_Green] = Remapping( GREEN_CDF, Luminance_CDF_target, Green, target_image);
[B_LUT, Remapped_Blue] = Remapping( BLUE_CDF, Luminance_CDF_target, Blue, target_image);

Luminocity_remapped_image = cat(3, Remapped_Red,Remapped_Green, Remapped_Blue);

%figure, imshow(Luminocity_remapped_image)
end

