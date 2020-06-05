function [ remapped_img] = ColorImage_RGB_Remapping(original_image, target_image )

%.................................ORIGINAL IMAGE CDF CALCULATION>>>>.........
[row, col, color] = size(original_image);

Red = uint8(zeros(row,col));
Red = original_image(:,:,1);

Green = uint8(zeros(row,col));
Green = original_image(:,:,2);

Blue  = uint8(zeros(row,col));
Blue = original_image(:,:,3);

[ RED_PDF, RED_CDF] = Probability_Density_Function( Red );
[ GREEN_PDF, GREEN_CDF] = Probability_Density_Function( Green );
[ BLUE_PDF, BLUE_CDF] = Probability_Density_Function( Blue );


%..................................TARGET IMAGE CDF CALCULATION............

[target_row, target_col, target_color] = size(target_image);

target_Red = uint8(zeros(target_row,target_col));
target_Red = target_image(:,:,1);

target_Green = uint8(zeros(target_row,target_col));
target_Green = target_image(:,:,2);

target_Blue  = uint8(zeros(target_row,target_col));
target_Blue = target_image(:,:,3);

[ target_RED_PDF, target_RED_CDF] = Probability_Density_Function( target_Red );
[ target_GREEN_PDF, target_GREEN_CDF] = Probability_Density_Function( target_Green );
[ target_BLUE_PDF, target_BLUE_CDF] = Probability_Density_Function( target_Blue );

%...........................REMAPPING OF THE COLOR IMAGES..................

%..[ LUT, GREEN_new_image] = Remapping( input_CDF, target_CDF, original_image, target_image)
[ Red_LUT, RED_new_image] = Remapping( RED_CDF, target_RED_CDF, Red, target_Red);
[ Green_LUT, GREEN_new_image] = Remapping( GREEN_CDF, target_GREEN_CDF, Green, target_Green);
[ Blue_LUT, BLUE_new_image] = Remapping( BLUE_CDF, target_BLUE_CDF, Blue, target_Blue);

remapped_img = cat(3,  RED_new_image, GREEN_new_image, BLUE_new_image);

end
