% read in the image
Pc = imread('mrt_train.jpg');
P = rgb2gray(Pc);

% displaying the histogram into 10 and 256 bins
figure;
imhist(P, 10);
figure;
imhist(P, 256);

% applying histogram equalization and displaying the output histogram
P3 = histeq(P, 255);
figure;
imhist(P3, 10);
figure;
imhist(P3, 256);
figure;
imshow(P3)

%applying the histogram equalization function agian and check if they are
%more uniform
P4 = histeq(P3, 255);
figure;
imhist(P4, 10);
figure;
imhist(P4, 256);
figure;
imshow(P4)