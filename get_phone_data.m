function [ stats_orig, gauss_adapt_x, gauss_adapt_y, gauss_orig_x, gauss_orig_y, mfcc_adapt, mfcc_orig, phi_adapt, phi_orig, stats_adapt] = get_phone_data( dir_orig, dir_adapt )
%GET_PHONE_DATA Summary of this function goes here
%   Detailed explanation goes here
    disp 'Extracting MFCC...'
    mfcc_orig = get_phone_mfcc(dir_orig);
    mfcc_adapt = get_phone_mfcc(dir_adapt);
  
    disp 'Computing PCA of original speech and mapping adapted and original speech to new space (phi k)'
    [phi_orig,phi_adapt] = get_phone_pca(mfcc_orig, mfcc_adapt);
    
    disp 'Computing statistics...'
    [stats_orig,stats_adapt] = get_phone_stats(phi_orig, phi_adapt);
    
    disp 'Computing gaussian distributions...'
    [gauss_orig_x,gauss_orig_y,gauss_adapt_x,gauss_adapt_y] = get_gaussians(stats_orig, stats_adapt);        
    
end

