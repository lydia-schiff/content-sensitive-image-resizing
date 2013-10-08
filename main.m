I = im2double(imread('hotair3.jpg'));

%shrink(I,1,0);
J = shrink(I, 213, 320);
%imwrite(J, 'e5c.jpg', 'jpg');
imshow(J);
%imwrite(shrink(I,100,0),'E4cc.jpg','jpg');
%imwrite(shrink(I,100,100),'E4dd.jpg','jpg');

% output E3.jpg
% I = permute(I,[2 1 3]);
% I = add_seam(I,horizontal_seam(I));
% I = permute(I,[2 1 3]);
% % imshow(I)
% imagesc(plot(horizontal_seam(I)));

%output E2a.jpg
%saveas(imagesc(imenergy(I)),'E2a.jpg');



