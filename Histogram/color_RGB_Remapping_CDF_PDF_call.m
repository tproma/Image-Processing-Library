%....................... COLOR IMAGE RGB Remapping & CDF PDF call..............

original_image = imread('C:\Users\Tanjina\Dropbox\IM_CSC420\histogram\originalColor.jpg');
target_image = imread('C:\Users\Tanjina\Dropbox\IM_CSC420\histogram\targetColor.jpg');

[ back_to_remapped_img ] = ColorImage_RGB_Remapping(original_image, target_image );

figure, imshow(original_image);
figure, imshow(target_image);
figure, imshow( back_to_remapped_img);

[ Luminance_org, Luminance_PDF_org, Luminance_CDF_org] = Luminocity_PDF_CDF_colorIMage_PLOT( original_image );
[ Luminance_target, Luminance_PDF_target, Luminance_CDF_target] = Luminocity_PDF_CDF_colorIMage_PLOT( target_image );
[ Luminance_remap_im, Luminance_PDF_remap_im, Luminance_CDF_remap_im] = Luminocity_PDF_CDF_colorIMage_PLOT(back_to_remapped_img);
