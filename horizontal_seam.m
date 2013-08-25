function [ S ] = horizontal_seam( I )
% horizontal_seam.m takes image I and chooses one optimal horizontal seam
% and returns a vector S of row values at each column.

% compute energy function
E = imenergy( I );

% copy first column
M = E;

% iterate over each pixel in I
for col = 2:size(I,2)
    for row = 1:size(I,1)
        % check boundary positions, calculate minimum of two or three
        % neighboring cumulative minimum energy function entries
        if (row == 1)
            a = [M(row,col-1),M(row+1,col-1)];
            minE = min(a);
        elseif (row == size(I,1))
            b = [M(row-1,col-1),M(row,col-1)];
            minE = min(b);
        else
            c = [M(row-1,col-1),M(row,col-1),M(row+1,col-1)];
            minE = min(c);
        end
        % compute cumulative minimum energy array M
        M(row,col) = E(row,col) + minE;
    end
end

%saveas(imagesc(M),'E2b.jpg');

% calculate index of lowest cumulative energy value in last column
[C,index] = min(M(:,size(I,2)));
% initialize vector S
S = zeros(1,size(I,2));
S(size(I,2)) = index;
col = size(I,2) - 1;
while (col > 0)
    if (index == 1)
        [a indexstep] = min(M(index:index+1,col));
        if (indexstep == 2)
            index = index + 1;
        end
    elseif (index == size(I,1))
        [b indexstep] = min(M(index-1:index,col));
        if (indexstep == 1)
            index = index - 1;
        end
    else
        [c indexstep] = min(M(index-1:index+1,col));
        if (indexstep == 1)
            index = index - 1;
        elseif (indexstep == 3)
            index = index + 1;
        end
    end
    S(col) = index;
    

    col = col - 1;
    
end
% imshow(I)
% hold on;
end

