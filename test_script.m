dir_adapt = 'cw_adapt_02/phone_out/en16';
dir_orig = 'cw_orig/phone_out/en16';

[ stats_orig, gauss_adapt_x, gauss_adapt_y, gauss_orig_x, gauss_orig_y, mfcc_adapt, mfcc_orig, phi_adapt, phi_orig, stats_adapt] = get_phone_data( dir_orig, dir_adapt );
plot_gaussians(gauss_orig_x, gauss_orig_y, gauss_adapt_x, gauss_adapt_y, 1:16, '/i:/')

total_d = zeros(1,length(length(stats_adapt)));
for i = 1:length(stats_adapt)
    
    total_d(i) = bhattacharyya(stats_orig(1,i),stats_adapt(1,i),stats_orig(2,i),stats_adapt(2,i));
    
end
str = ['Total Bhattacharyya distance is: ', num2str(sum(total_d))];
disp(str)
