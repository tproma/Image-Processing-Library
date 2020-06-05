function [ PDF, CDF] = Probability_Density_Function( image )
[ hist ] = Histogram_funct( image );

[row, col] = size(hist);
PDF = zeros(size(hist));

s = sum(hist)

for i = 1:row
    PDF(i,1) = hist(i,1)/s;
end

CDF = zeros(size(hist));

for i = 1:row 
    CDF(i)=sum(PDF(1:i,1));
end

%plot( PDF);
%plot( CDF);