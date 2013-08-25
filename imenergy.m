function [ E ] = imenergy( I )
% imenergy.m computes the energy function E from an RGB image I.
J = rgb2gray(I);
[DX DY] = gradient(J);
X = abs(DX);
Y = abs(DY);
E = bsxfun(@plus,X,Y);
%imshow(E)
end
