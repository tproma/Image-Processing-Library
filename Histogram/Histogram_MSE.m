function [ MSE] = Histogram_MSE( mhist,hist )
% %....................MSE.................

[r,c]= size(hist);
SE = zeros(r,c);
%s_SE = 0;
for i = 1:r
    for j = 1: c
    SE(i,j) = ( mhist(i,j) - hist(i,j)).^2;
    
    end
    %s_SE = sum(SE,2);
end

MSE = mean(SE);
% MSE of the matlab histogram and my custom made histogram.


end


