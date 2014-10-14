function [ D ] = bhattacharya( mu1, mu2, sd1, sd2 )
%BHATTACHARYA Summary of this function goes here
%   Detailed explanation goes here
    var1 = sd1.^2;
    var2 = sd2.^2;
    
    d1 = var1/var2 + var2/var1 + 2;
    d2 = ((mu1 - mu2).^2)/(var1 + var2);
    
    D = (1/4)*log((1/4)*d1) + (1/4)*d2;

end

