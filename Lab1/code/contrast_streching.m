% read in the image mrt train
Pc = imread('mrt_train.jpg');
whos Pc;
figure;
imshow(Pc);

% converting the mrt_train to grayscale image
P = rgb2gray(Pc);
figure;
imshow(P);

% checking the maximum and minimum intensity values of P
min(P(:))
max(P(:))

% implementing contrast streching by using one subtraction and one
% multiplication
P2 = imsubtract(P, 13);
P2 = immultiply(P2, (255/(204-13)));

% checking the maximum and minimum intensity of the enhanced image
min(P2(:))
max(P2(:))
figure;
imshow(P2)