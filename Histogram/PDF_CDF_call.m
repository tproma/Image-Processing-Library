 image1 = imread('C:\Users\Tanjina\Dropbox\IM_CSC420\histogram\Atlas-Mercury_GREY.png');
% image2 = imread('C:\Users\Tanjina\Dropbox\IP&ML\IM_CSC420\histogram\Techno_trousers_GREY.png');
 [ PDF_im1, CDF_im1] = Probability_Density_Function( image1 );
%  [ PDF_im2, CDF_im2] = Probability_Density_Function( image2 );
%  [ LUT, new_image ] = Remapping( CDF_im1, CDF_im2, image1, image2 );
% 
% figure, imshow(image1);
% figure, imshow(image2);
% figure, imshow(new_image);


%plot(PDF);
% plot(CDF);
% 
% hist = imhist(image);
[ LUT ] = Histogram_Equalization( image1,CDF_im1 );

%................Color Image remapping ...........
% 
% original_image = imread('C:\Users\Tanjina\Dropbox\IP&ML\IM_CSC420\histogram\originalColor.jpg');
% 
% target_image = imread('C:\Users\Tanjina\Dropbox\IP&ML\IM_CSC420\histogram\targetColor.jpg');
% [ back_to_remapped_img ] = ColorImage_RGB_Remapping(original_image, target_image );
% %[ PDF_im1, CDF_im1] = Probability_Density_Function( back_to_remapped_img );
%  %[Luminance_CDF ] = PDF_CDF_colorIMage_PLOT(back_to_remapped_img )
% 
% figure, imshow(original_image);
% figure, imshow(target_image);
% figure, imshow( back_to_remapped_img);

