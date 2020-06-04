function [ sub_img ] = resize( image, reduceSize, type)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    sub_img = zeros(reduceSize);
    if(strcmp(type, 'Avg'))
        sub_img = Average(image, reduceSize);
    elseif (strcmp(type, 'Max'))
        sub_img = Maximum(image, reduceSize);
    end
     
end

