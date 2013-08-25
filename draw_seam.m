function [ J ] = draw_seam( I,S )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
for col = 1:size(I,2)
    I(S(col),col,1:2)=1;
    J=I;
end
end

