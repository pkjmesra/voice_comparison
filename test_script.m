dir_adapt = 'adapt_02/phone_out/en16';
dir_orig = 'orig/phone_out/en20';

[ stats_orig, gauss_adapt_x, gauss_adapt_y, gauss_orig_x, gauss_orig_y, mfcc_adapt, mfcc_orig, phi_adapt, phi_orig, stats_adapt] = get_phone_data( dir_orig, dir_adapt );
plot_gaussians(gauss_orig_x, gauss_orig_y, gauss_adapt_x, gauss_adapt_y, 1:16, '/i:/')
