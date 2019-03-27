clc;

%%%%% Problem 4 %%%%%

m = imread('contact-lens.tif');
n = imread('SyntheticImage.jpg');
o = imread('moon-blurred.tif');

p = imfilter(m,fspecial('sobel')) + imfilter(m,fspecial('sobel')');
q = imfilter(n,fspecial('laplacian',0));
r = imfilter(o,fspecial('laplacian',0));
kernel = ones(3);
kernel(2,2) = -8;
s = conv2(o,kernel,'same');

figure;
subplot(1,2,1); imshow(m); title('Contact Lens');
subplot(1,2,2); imshow(p); title('Sobel Filter');
sgtitle('Sobel Filtered Contact Lens');
figure;
subplot(2,2,1); imshow(o); title({'Moon Blurred';'Image A'});
subplot(2,2,2); imshow(r); title({'Laplacian Filter';'Image B1'});
subplot(2,2,3); imshow(o-r); title({'ImageA - ImageB1';'(kernel a)'});
subplot(2,2,4); imshow(o-uint8(s)); title({'ImageA - ImageB2';'(kernel b)'});
sgtitle('Laplacian Filtered Moon Blurred');
figure;
subplot(1,2,1); imshow(n); title('Synthetic Image');
subplot(1,2,2); imshow(q); title('Laplacian Filter');
sgtitle('Laplacian Filtered Synthetic Image');

