I = im2double(imread('E5a.jpg'));

%shrink(I,1,0);
J = shrink(I, 75, 75);
imwrite(J, 'e5c.jpg', 'jpg');
imshow(J);
%imwrite(shrink(I,100,0),'E4cc.jpg','jpg');
%imwrite(shrink(I,100,100),'E4dd.jpg','jpg');

% output E3.jpg
% I = permute(I,[2 1 3]);
% I = add_seam(I,horizontal_seam(I));
% I = permute(I,[2 1 3]);
% imshow(I)
% saveas(imagesc(plot(horizontal_seam(I))),'E3.jpg');

%output E2a.jpg
%saveas(imagesc(imenergy(I)),'E2a.jpg');



