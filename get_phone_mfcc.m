function [ mfcc] = get_phone_mfcc( path)
%SPEAKER_PHONE_STATS Summary of this function goes here
%   Detailed explanation goes here

    mfccOrder = 16;
    files = dir(path);
    files = files(3:length(files));
    
    mfcc = zeros(length(files),mfccOrder);
    for i=1:length(files)
        filePath = strcat(path,'/',files(i).name);
        [wav , freq] = audioread(filePath);
        [mfcc(i,:)]=melcepst(wav,freq,'M',mfccOrder,24,length(wav),length(wav));
    end


end

