function [  ] = plot_gaussians( gaussian_original_x, gaussian_original_y, gaussian_adapted_x, gaussian_adapted_y, order, phone )
%PLOT_GAUSSIANS Summary of this function goes here
%   Detailed explanation goes here
    
    for i = order
        subplot(ceil(length(order)/2), 2,i);
        plot(gaussian_original_x{i}, gaussian_original_y{i},'r', gaussian_adapted_x{i}, gaussian_adapted_y{i},'g')
        legend('Original','Adapted')
        grid
        title(strcat('Distribution of parameter ', int2str(i), ' for original and adapted voice for phone: ', phone))
    end
    
end

