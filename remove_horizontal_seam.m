function [ J ] = remove_horizontal_seam( I,S )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
colsinI = size(I,2);
rowsinI = size(I,1);

for dim = 1:3
    for col = 1:colsinI
        for row = S(col):rowsinI-1
            I(row,col,dim) = I(row+1,col,dim);
        end
    end
end
J = I(1:rowsinI-1,:,:);

end

