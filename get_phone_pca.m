function [ phi_original, phi_adapted ] = get_phone_pca( mfcc_original, mfcc_adapted )
%GET_PHONE_PCA Summary of this function goes here
%   Detailed explanation goes here

    mfcc = [mfcc_original; mfcc_adapted];
    eigen_vector = pca(mfcc);
    phi = mfcc*eigen_vector;
    phi_original = phi(1:length(mfcc_original),:);
    phi_adapted = phi(length(mfcc_original)+1:end,:);
    
end

