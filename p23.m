clc;

%%%%% Problem 3 %%%%%

f = imread('circuitboard-saltandpep.tif');
g = imfilter(f,fspecial('average',[3 3]));
h = imfilter(f,fspecial('average',[5 5]));
i = imfilter(f,fspecial('average',[11 11]));
j = medfilt2(f, [3 3]);
k = medfilt2(f, [5 5]);
l = medfilt2(f, [11 11]);

figure;
subplot(2,4,1); imshow(f); title('Circuit Board Salt and Pepper');
subplot(2,4,2); imshow(g); title('Average Filter 3x3');
subplot(2,4,3); imshow(h); title('Average Filter 5x5');
subplot(2,4,4); imshow(i); title('Average Filter 11x11');

subplot(2,4,6); imshow(j); title('Median Filter 3x3');
subplot(2,4,7); imshow(k); title('Median Filter 5x5');
subplot(2,4,8); imshow(l); title('Median Filter 11x11');
sgtitle('Average and Median Filtered Circuit Board');
