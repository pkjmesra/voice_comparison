function [ gaussian_original_x, gaussian_original_y, gaussian_adapted_x, gaussian_adapted_y ] = get_gaussians( stats_original, stats_adapted )
%PLOT_GAUSSIANS Summary of this function goes here
%   Detailed explanation goes here
    
    for i = 1:length(stats_original)
        x_vec_orig = (-5*stats_original(2,i) - abs(stats_original(1,i))):0.01:(5*stats_original(2,i) + abs(stats_original(1,i)));
        x_vec_adapt = (-5*stats_adapted(2,i)  - abs(stats_adapted(1,i))) :0.01:(5*stats_adapted(2,i)  + abs(stats_adapted(1,i)));
        gaussian_original_x{i} = x_vec_orig;
        gaussian_adapted_x{i}  = x_vec_adapt;
        
        gaussian_original_y{i} = normpdf(gaussian_original_x{i},stats_original(1,i),stats_original(2,i));
        gaussian_adapted_y{i}  = normpdf(gaussian_adapted_x{i}, stats_adapted(1,i), stats_adapted(2,i));
        
    end
    
    
end

