clc;

%%%%% Problem 2 %%%%%

d = imread('Pollendark.tif');
e = imread('pollen-lowcontrast.tif');

figure;
subplot(2,2,1); imshow(d); title({'Pollen Dark';'Image A'}); colorbar;
subplot(2,2,2); imshow(e); title({'Pollen Low Contrast';'Image B'}); colorbar;
subplot(2,2,3); imshow(histeq(d)); title('Equalized Pollen Dark'); colorbar;
subplot(2,2,4); imshow(histeq(e)); title('Equalized Pollen Low Contrast'); colorbar;
sgtitle('Contrast Stretching/Equalization of Pollen');
figure;
subplot(2,2,1); imhist(d); title('Histogram of A');
subplot(2,2,2); imhist(e); title('Histogram of B');
subplot(2,2,3); imhist(histeq(d)); title('Equalized Histogram of A');
subplot(2,2,4); imhist(histeq(e)); title('Equalized Histogram of B');
sgtitle('Histograms of Equalization of Pollen');
