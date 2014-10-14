function [ stats_original, stats_adapted ] = get_phone_stats( phi_original, phi_adapted )
%GET_PHONE_STATS Summary of this function goes here
%   Detailed explanation goes here

    stats_original(1,:) = mean(phi_original);
    stats_original(2,:) = std(phi_original);
    
    stats_adapted(1,:) = mean(phi_adapted);
    stats_adapted(2,:) = std(phi_adapted);
end

