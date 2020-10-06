% read in the image and locate the peak points
P = imread('primatecaged.jpg');
P = rgb2gray(P);
figure;
imshow(P);

F = fft2(P);
S = abs(F);
figure;
imagesc(fftshift(S.^0.1));
colormap('default');

figure;
imagesc(S.^0.1);
colormap('default');

% remove the peaks
x1 = 11; y1 = 252;
x2 = 22; y2 = 248;
x3 = 18; y3 = 248;
x4 = 247; y4 = 5;
x5 = 238; y5 = 10;
x6 = 234; y6 = 11;
F1 = F;
F1(y1-2:y1+2, x1-2:x1+2) = 0;
F1(y2-2:y2+2, x2-2:x2+2) = 0;
F1(y3-2:y3+2, x3-2:x3+2) = 0;
F1(y4-2:y4+2, x4-2:x4+2) = 0;
F1(y5-2:y5+2, x5-2:x5+2) = 0;
F1(y6-2:y6+2, x6-2:x6+2) = 0;
S1 = abs(F1);
figure;
imagesc(fftshift(S1.^0.1));
colormap('default');
figure;
imagesc(S1.^0.1);
colormap('default');

% inverse the FT and display the image
P2 = uint8(ifft2(F1));
figure;
imshow(real(P2))