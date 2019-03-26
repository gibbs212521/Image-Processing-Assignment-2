clear; clc;

%%%%% Problem 1 %%%%%

a = imread('ChestXray2.tif');
b = imread('ChestXray3.tif');
c = imread('ChestXray_dark.tif');

ad = double(a);
bd = double(b);
cd = double(c);

meana = mean(ad,'all');
stdeva = std(ad,0,'all');
meanb = mean(bd,'all');
stdevb = std(bd,0,'all');
meanc = mean(cd,'all');
stdevc = std(cd,0,'all');

figure;
subplot(2,3,1); imshow(a); title({'Chest Xray 2';'Mean = '+string(round(meana));'Standard Deviation = '+string(round(stdeva))});
subplot(2,3,2); imshow(b); title({'Chest Xray 3';'Mean = '+string(round(meanb));'Standard Deviation = '+string(round(stdevb))});
subplot(2,3,3); imshow(c); title({'Chest Xray Dark';'Mean = '+string(round(meanc));'Standard Deviation = '+string(round(stdevc))});
subplot(2,3,4); imhist(a); title('Histogram Chest Xray 2');
subplot(2,3,5); imhist(b); title('Histogram Chest Xray 3');
subplot(2,3,6); imhist(c); title('Histogram Chest Xray Dark');
sgtitle('Mean and Standard Deviation of Chest Xrays');